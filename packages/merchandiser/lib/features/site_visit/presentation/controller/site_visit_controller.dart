import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/site_visit/application/site_visit_service.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/presentation/state/site_visit_state.dart';

final siteVisitControllerProvider =
    NotifierProvider<SiteVisitController, SiteVisitState>(
      SiteVisitController.new,
    );

class SiteVisitController extends Notifier<SiteVisitState> {
  @override
  SiteVisitState build() {
    return SiteVisitState();
  }

  Future<void> getAllSetting() async {
    final settings = await ref.read(siteVisitServiceProvider).getAllSetting();

    state = state.copyWith(settings: settings);
  }

  Future<void> createSiteVisit({required Map<String, dynamic> form}) async {
    state = state.copyWith(
      isLoading: true,
      isCreated: false,
      error: null,
      createSiteVisitResponse: null,
    );
    final settings = state.settings;

    final body = CreateSiteVisitRequest(
      deviceId: settings['deviceId'] ?? '',
      salesPersonCode: settings['salesPersonCode'] ?? '',
      salesPersonName: settings['name'] ?? '',
      customerId: form['customerId'],
      customerName: form['customerName'],
      customerAddress: form['customerAddress'],
      customerChain: form['customerChain'],
      customerLatitude: state.currentPosition?.latitude ?? 0,
      customerLongitude: state.currentPosition?.longitude ?? 0,
      timeIn: state.timeNow ?? '',
    );
    final result = await ref
        .read(siteVisitServiceProvider)
        .createSiteVisit(body);
    result.when(
      (success) => state = state.copyWith(
        isLoading: false,
        createSiteVisitResponse: success,
      ),
      (failure) =>
          state = state.copyWith(isLoading: false, error: failure.message),
    );
  }

  Future<void> updateSiteVisit() async {
    state = state.copyWith(
      isLoading: true,
      isUpdated: false,
      error: null,
      updateSiteVisitResponse: null,
    );

    final body = UpdateSiteVisitRequest(
      id: state.createSiteVisitResponse?.id ?? 0,
      timeOut: state.timeNow ?? '',
    );
    final result = await ref
        .read(siteVisitServiceProvider)
        .updateSiteVisit(body);
    result.when(
      (success) => state = state.copyWith(
        isLoading: false,
        updateSiteVisitResponse: success,
      ),
      (failure) =>
          state = state.copyWith(isLoading: false, error: failure.message),
    );
  }

  void setTimeNow(String timeNow) {
    state = state.copyWith(timeNow: timeNow);
  }

  void setCurrentPosition(double lat, double lng) async {
    state = state.copyWith(
      currentPosition: LatLng(latitude: lat, longitude: lng),
    );
  }

  void setCurrentAddress(String address) {
    state = state.copyWith(currentAddress: address);
  }

  int getSiteVisitId() => state.createSiteVisitResponse?.id ?? 0;

  String getTimeZone() => state.settings['timeZone'] ?? '-';
}
