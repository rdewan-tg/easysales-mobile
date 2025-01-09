part of '../../../../merchandiser.dart';

class CaptureImageScreen extends ConsumerStatefulWidget {
  const CaptureImageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CaptureImageScreenState();
}

class _CaptureImageScreenState extends ConsumerState<CaptureImageScreen> {
  late String _photoPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraAwesomeBuilder.awesome(
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
            ios: CupertinoVideoOptions(
              fps: 10,
            ),
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
            single: (single) {
              debugPrint('single: ${single.file?.path}');
              OpenFile.open(_photoPath);
            },
            multiple: (multiple) {
              multiple.fileBySensor.forEach((key, value) {
                debugPrint('multiple file taken: $key ${value?.path}');
                OpenFile.open(value?.path);
              });
            },
          );
        },
        availableFilters: awesomePresetFiltersList,
      ),
    );
  }

  void _showSnackBar(String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 5),
        ),
      );

  Future<String> _currentDateTime() async {
     // initialize Time Zone database from latest
    tz_latest.initializeTimeZones();
    final location = tz.getLocation('Asia/Kolkata');
    tz.setLocalLocation(location);
    // get the current date and time
    final now = tz.TZDateTime.now(location);
    // format the date and time
    final formattedDateTime = DateFormat('dd/MM/yyyy - hh:mm a').format(now);

    return formattedDateTime;
  }

  Uint8List _drawDateTime(img.Image? image, String dateTime) {
    // check if the image is null
    if (image == null) return Uint8List(0);
    // draw the date and time
    final modifiedImage = img.drawString(
      image,
      dateTime,
      font:  img.arial48,
      x: 10, // x-position
      y: image.height - 100, // y-position
    );

    // Encode the image back to JPG and compress
    return img.encodeJpg(modifiedImage, quality: 50);
  }

  Future<Null>? _saveSingleImage(SingleCaptureRequest single) async {
    final file = single.file;
    if (file == null) return;

    final bytes = await file.readAsBytes();
    final originalImage = img.decodeImage(bytes);

    // get the current date and time
    final dateTime = await _currentDateTime();
    debugPrint(dateTime);

    // draw the date and time
    final modifiedImage = _drawDateTime(originalImage, dateTime);
    File.fromRawPath(modifiedImage);
    
    // save the image to the gallery
    await Gal.putImageBytes(modifiedImage, album: 'easysales');
    debugPrint('Picture saved: ${single.file?.path}');
  }

  Future<Null>? _saveMultipleImages(MultipleCaptureRequest multiple) async {
    multiple.fileBySensor.forEach((key, value) async {
      final file = value;
      if (file == null) return;

      final bytes = await file.readAsBytes();
      final originalImage = img.decodeImage(bytes);

      // get the current date and time
      final dateTime = await _currentDateTime();

      // draw the date and time
      final modifiedImage = _drawDateTime(originalImage, dateTime);

      // save the image to the gallery
      await Gal.putImageBytes(modifiedImage, album: 'easysales');
      debugPrint('Picture saved: ${file.path}');
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
    // If there is only one sensor used, we can build a SingleCaptureRequest with the file path and the sensor
    if (sensors.length == 1) {
      _photoPath =
          '${dir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
      return SingleCaptureRequest(_photoPath, sensors.first);
    }

    // If there are several sensors, we need to build a MultipleCaptureRequest with a map of file paths and sensors
    // Separate pictures taken with front and back camera
    // We create a different path based on wether it's the front or back sensor that takes the picture.
    return MultipleCaptureRequest(
      {
        for (final sensor in sensors)
          sensor:
              '${dir.path}/${sensor.position == SensorPosition.front ? 'front_' : "back_"}${DateTime.now().millisecondsSinceEpoch}.jpg',
      },
    );
  }
}
