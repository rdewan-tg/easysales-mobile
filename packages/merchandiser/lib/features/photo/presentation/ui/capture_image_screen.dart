part of merchandiser;

class CaptureImageScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extras;
  const CaptureImageScreen({super.key, required this.extras});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CaptureImageScreenState();
}

class _CaptureImageScreenState extends ConsumerState<CaptureImageScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(captureImageControllerProvider.notifier).getAllSetting();
      ref.read(captureImageControllerProvider.notifier).setAndroidSdkInt();
      ref
          .read(captureImageControllerProvider.notifier)
          .setBottomNavigationState(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) async {
        await ref
            .read(captureImageControllerProvider.notifier)
            .setBottomNavigationState(true);
        // invalidate the provider
        ref.invalidate(captureImageControllerProvider);
      },
      child: SafeArea(
        child: CameraAwesomeBuilder.awesome(
          onMediaCaptureEvent: (event) {
            switch ((event.status, event.isPicture, event.isVideo)) {
              case (MediaCaptureStatus.capturing, true, false):
                debugPrint('Capturing picture...');
              case (MediaCaptureStatus.success, true, false):
                event.captureRequest.when(
                  single: _saveSingleImage,
                  multiple: _saveMultipleImages,
                );
              case (MediaCaptureStatus.failure, true, false):
                _showSnackBar('Failed to capture picture: ${event.exception}');
              case (MediaCaptureStatus.capturing, false, true):
                debugPrint('Capturing video...');
              case (MediaCaptureStatus.success, false, true):
                event.captureRequest.when(
                  single: _saveSingleVideo,
                  multiple: _saveMultipleVideo,
                );
              case (MediaCaptureStatus.failure, false, true):
                _showSnackBar('Failed to capture video: ${event.exception}');
              default:
                _showSnackBar(event.toString());
            }
          },
          saveConfig: SaveConfig.photoAndVideo(
            initialCaptureMode: CaptureMode.photo,
            photoPathBuilder: _photoPathBuilder,
            videoOptions: VideoOptions(
              enableAudio: true,
              ios: CupertinoVideoOptions(fps: 10),
              android: AndroidVideoOptions(
                bitrate: 6000000,
                fallbackStrategy: QualityFallbackStrategy.lower,
              ),
            ),
            exifPreferences: ExifPreferences(saveGPSLocation: true),
          ),
          sensorConfig: SensorConfig.single(
            sensor: Sensor.position(SensorPosition.back),
            flashMode: FlashMode.auto,
            aspectRatio: CameraAspectRatios.ratio_16_9,
            zoom: 0.0,
          ),
          enablePhysicalButton: true,
          // filter: AwesomeFilter.AddictiveRed,
          previewAlignment: Alignment.center,
          previewFit: CameraPreviewFit.contain,
          onMediaTap: (mediaCapture) {
            mediaCapture.captureRequest.when(
              single: (single) async {
                await OpenFile.open(
                  single.file?.path,
                ); // Open the modified image
              },
              multiple: (multiple) {
                multiple.fileBySensor.forEach((key, value) async {
                  await OpenFile.open(value?.path);
                });
              },
            );
          },
          availableFilters: awesomePresetFiltersList,
        ),
      ),
    );
  }

  void _showSnackBar(String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 5)),
      );

  String _currentDateTime(String format) {
    final timeZone = ref
        .read(captureImageControllerProvider.notifier)
        .getTimeZone();
    // initialize Time Zone database from latest
    tz_latest.initializeTimeZones();
    final location = tz.getLocation(timeZone);
    tz.setLocalLocation(location);
    // get the current date and time
    final now = tz.TZDateTime.now(location);
    // format the date and time
    final formattedDateTime = DateFormat(format).format(now);

    return formattedDateTime;
  }

  Future<Null>? _saveSingleImage(SingleCaptureRequest single) async {
    // set isUploading to true - which should show the loading indicator
    ref.read(captureImageControllerProvider.notifier).setIsUploading(true);
    // get the file
    final file = single.file;
    if (file == null) return;

    final bytes = await file.readAsBytes();
    //final originalImage = img.decodeImage(bytes);

    // get the current date and time
    final dateTime = _currentDateTime('dd/MM/yyyy - hh:mm a');

    // draw the date and time
    final modifiedImageBytes = await compute(processImage, {
      'bytes': bytes,
      'dateTime': dateTime,
      'customerId': widget.extras['customerId'],
      'deliveryName': widget.extras['deliveryName'],
      'address': widget.extras['address'],
    });

    // Save the modified image to the original file path
    File(file.path).writeAsBytesSync(modifiedImageBytes);

    // save the image to the gallery
    // save the image to the gallery
    await Gal.putImageBytes(modifiedImageBytes, album: 'easysales');

    // upload the image to the server
    ref
        .read(captureImageControllerProvider.notifier)
        .uploadImage(
          photo: File(file.path),
          customerId: widget.extras['customerId'],
          customerName: widget.extras['customerName'],
          customerAddress: widget.extras['address'],
          transDate: _currentDateTime('dd-MM-yyyy'),
          customerDimension: widget.extras['customerDimension'],
          location: widget.extras['location'],
        );
  }

  Future<Null>? _saveMultipleImages(MultipleCaptureRequest multiple) async {
    multiple.fileBySensor.forEach((key, value) async {
      final file = value;
      if (file == null) return;

      final bytes = await file.readAsBytes();

      // get the current date and time
      final dateTime = _currentDateTime('dd/MM/yyyy - hh:mm a');

      // draw the date and time
      final modifiedImageBytes = await compute(processImage, {
        'bytes': bytes,
        'dateTime': dateTime,
        'customerId': widget.extras['customerId'],
        'deliveryName': widget.extras['deliveryName'],
      });

      // Save the modified image to the original file path
      File(file.path).writeAsBytesSync(modifiedImageBytes);

      // save the image to the gallery
      // save the image to the gallery
      await Gal.putImageBytes(modifiedImageBytes, album: 'easysales');

      // upload the image to the server
    });
  }

  Future<Null>? _saveSingleVideo(SingleCaptureRequest single) async {
    final file = single.file;
    if (file == null) return;

    // save the image to the gallery
    await Gal.putVideo(file.path, album: 'easysales');
    debugPrint('Video saved: ${single.file?.path}');
  }

  Future<Null>? _saveMultipleVideo(MultipleCaptureRequest multiple) async {
    multiple.fileBySensor.forEach((key, value) async {
      final file = value;
      if (file == null) return;
      // save the image to the gallery
      await Gal.putVideo(file.path, album: 'easysales');
      debugPrint('Video saved: ${file.path}');
    });
  }

  Future<CaptureRequest> _photoPathBuilder(List<Sensor> sensors) async {
    // Create a directory where photos will be saved (here we use the temporary directory, using path_provider).
    final Directory extDir = await getTemporaryDirectory();
    // Create a directory for the test
    final dir = await Directory(
      '${extDir.path}/easysales',
    ).create(recursive: true);

    debugPrint('Directory created: ${dir.path}');
    // If there is only one sensor used, we can build a SingleCaptureRequest with the file path and the sensor
    if (sensors.length == 1) {
      final _photoPath =
          '${dir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
      return SingleCaptureRequest(_photoPath, sensors.first);
    }

    // If there are several sensors, we need to build a MultipleCaptureRequest with a map of file paths and sensors
    // Separate pictures taken with front and back camera
    // We create a different path based on wether it's the front or back sensor that takes the picture.
    return MultipleCaptureRequest({
      for (final sensor in sensors)
        sensor:
            '${dir.path}/${sensor.position == SensorPosition.front ? 'front_' : "back_"}${DateTime.now().millisecondsSinceEpoch}.jpg',
    });
  }

  void _listener() {
    // listen for error
    ref.listen(
      captureImageControllerProvider.select((value) => value.errorMsg),
      (_, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              backgroundColor: context.themeColor.colorScheme.error,
              content: Text(next),
            ),
          );
        }
      },
    );

    // listen for photo uploaded
    ref.listen(
      captureImageControllerProvider.select((value) => value.isImageUploaded),
      (_, next) {
        if (next) {
          // show snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 5),
              content: Text(
                'Photo uploaded successfully. You can now close this screen or capture another photo'
                    .hardcoded,
              ),
            ),
          );
        }
      },
    );

    // listen for loading
    ref.listen(
      captureImageControllerProvider.select((value) => value.isUploading),
      (_, next) {
        if (next) {
          context.loaderOverlay.show(
            widgetBuilder: (progress) {
              return Center(
                child: LoadingAnimationWidget.progressiveDots(
                  color: Colors.white,
                  size: 60,
                ),
              );
            },
          );
        } else {
          context.loaderOverlay.hide();
        }
      },
    );
  }
}

Uint8List processImage(Map<String, dynamic> args) {
  final Uint8List bytes = args['bytes'];
  final String dateTime = args['dateTime'];

  // Decode the image
  final image = img.decodeImage(bytes);
  if (image == null) {
    throw StateError('Invalid image data');
  }

  final data =
      '''
    $dateTime \n
    ${args['customerId']} \n
    ${args['address']}
  ''';

  //Draw the date and time
  final modifiedImage = img.drawString(
    image,
    data,
    font: img.arial48,
    x: 10,
    y: image.height - 300,
  );

  // Return the encoded modified image
  return img.encodeJpg(modifiedImage, quality: 50);
}
