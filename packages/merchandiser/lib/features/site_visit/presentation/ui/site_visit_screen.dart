part of merchandiser;

class SiteVisitScreen extends ConsumerStatefulWidget {
  const SiteVisitScreen({super.key, required this.extras});

  final Map<String, dynamic> extras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SiteVisitScreenState();
}

class _SiteVisitScreenState extends ConsumerState<SiteVisitScreen> {
  Timer? _timer;
  GoogleMapController? _mapController;
  StreamSubscription<Position>? _positionStreamSubscription;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(siteVisitControllerProvider.notifier).getAllSetting();
      _startTimer();
      _initLocation();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _positionStreamSubscription?.cancel();
    super.dispose();
  }

  Future<void> _initLocation() async {
    await Permission.location.request();
    final isGranted = await Permission.location.isGranted;

    if (isGranted) {
      const locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0, // meters to move before update
      );

      _positionStreamSubscription =
          Geolocator.getPositionStream(
            locationSettings: locationSettings,
          ).listen((Position position) async {
            final latLng = LatLng(position.latitude, position.longitude);

            // Update map state
            ref
                .read(siteVisitControllerProvider.notifier)
                .setCurrentPosition(position.latitude, position.longitude);

            // Move camera to the new position if map is initialized
            _mapController?.animateCamera(CameraUpdate.newLatLng(latLng));

            // Update the address
            await getAddressFromLatLng(latLng);
          });
    }
  }

  Future<void> getAddressFromLatLng(LatLng position) async {
    try {
      List<Placemark> placeMarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placeMarks.isNotEmpty) {
        final place = placeMarks.first;
        final address =
            "${(place.street?.isNotEmpty ?? false) ? place.street : (place.name ?? '')}, ${place.administrativeArea ?? ''}, ${place.postalCode ?? ''}, ${place.country ?? ''}";
        // update the address state
        ref
            .read(siteVisitControllerProvider.notifier)
            .setCurrentAddress(address);
      }
    } catch (e) {
      //ref.read(mapControllerProvider.notifier).setErrorMsg(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    _listenToState();
    return PopScope(
      canPop: false, // Prevents the user from popping the route
      onPopInvokedWithResult: (bool didPop, dynamic result) async {
        // This callback is called when the user tries to pop the route
        if (didPop) {
          return;
        }

        // Show a confirmation dialog
        final bool shouldPop = await _shouldPopDialog();

        if (shouldPop) {
          if (!context.mounted) return;
          // invalidate the state
          ref.invalidate(siteVisitControllerProvider);
          // Navigate back if the user confirms
          context.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.localizations('siteVisit.title')),
          centerTitle: true,
        ),
        body: Consumer(
          builder: (context, ref, child) {
            final latLan = ref.watch(
              siteVisitControllerProvider.select(
                (value) => value.currentPosition,
              ),
            );
            return SafeArea(
              child: latLan == null
                  ? const Center(child: CircularProgressIndicator())
                  : GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: LatLng(latLan.latitude, latLan.longitude),
                        zoom: 19,
                      ),
                      markers: {
                        Marker(
                          markerId: const MarkerId('currentLocation'),
                          position: LatLng(latLan.latitude, latLan.longitude),
                          infoWindow: InfoWindow(
                            title: context.localizations(
                              'siteVisit.youAreHere',
                            ),
                          ),
                          onTap:
                              () {}, // Empty onTap to prevent default behavior
                        ),
                      },
                      onMapCreated: (controller) {
                        _mapController = controller;
                        // Show info window after a short delay
                        Future.delayed(const Duration(milliseconds: 500), () {
                          controller.showMarkerInfoWindow(
                            const MarkerId('currentLocation'),
                          );
                        });
                      },
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                    ),
            );
          },
        ),
        bottomSheet: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(kSmall),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kMedium),
                  topRight: Radius.circular(kMedium),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CurrentLocationWidget(),
                  const CurrentTimeWidget(),
                  const SizedBox(height: kSmall),
                  //CustomerInfoWidget(extras: widget.extras),
                  SubmitSiteVisitButton(onSubmit: _submit),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // timer to return a date and time
  void _startTimer() {
    // get the time zone from the settings
    final timeZone = ref
        .read(siteVisitControllerProvider.notifier)
        .getTimeZone();
    // get the location
    final location = tz.getLocation(timeZone);
    // start the timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = tz.TZDateTime.now(location);
      final timeString = now.toIso8601String();
      // update the time in state
      ref.read(siteVisitControllerProvider.notifier).setTimeNow(timeString);
    });
  }

  void _submit() {
    final id = ref.read(siteVisitControllerProvider.notifier).getSiteVisitId();
    if (id == 0) {
      _submitIn();
    } else {
      _submitOut();
    }
  }

  void _submitIn() {
    final form = {
      'customerId': widget.extras['customerId'],
      'customerName': widget.extras['customerName'],
      'customerAddress': widget.extras['address'],
      'customerChain': widget.extras['customerDimension'],
    };
    ref.read(siteVisitControllerProvider.notifier).createSiteVisit(form: form);
  }

  void _submitOut() {
    ref.read(siteVisitControllerProvider.notifier).updateSiteVisit();
  }

  Future<bool> _shouldPopDialog() async {
    // Show a confirmation dialog
    final bool shouldPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.warning_amber_rounded, color: Colors.amber),
            const SizedBox(width: kSmall),
            Text('Exit'.hardcoded),
          ],
        ),
        content: Text('Do you want to leave this page?'.hardcoded),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );

    return shouldPop;
  }

  void _listenToState() {
    // listen for loading
    ref.listen(siteVisitControllerProvider.select((value) => value.isLoading), (
      previous,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
    // listen to error and show snackbar
    ref.listen(siteVisitControllerProvider.select((value) => value.error), (
      previous,
      next,
    ) {
      if (next != null) {
        context.showErrorSnackBar(next);
      }
    });
    // listen to create site visit response and show snackbar
    ref.listen(
      siteVisitControllerProvider.select(
        (value) => value.createSiteVisitResponse,
      ),
      (previous, next) {
        if (next != null) {
          context.showSuccessSnackBar(
            context.localizations('siteVisit.checkInMessage'),
          );
        }
      },
    );
    // listen to update site visit response and show snackbar
    ref.listen(
      siteVisitControllerProvider.select(
        (value) => value.updateSiteVisitResponse,
      ),
      (previous, next) {
        if (next != null) {
          // show snackbar
          context.showSuccessSnackBar(
            context.localizations('siteVisit.checkOutMessage'),
          );
          // invalidate the state
          ref.invalidate(siteVisitControllerProvider);
          // navigate back
          context.pop();
        }
      },
    );
  }
}
