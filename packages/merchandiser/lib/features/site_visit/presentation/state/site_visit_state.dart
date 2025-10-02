import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';

part 'site_visit_state.freezed.dart';

@freezed
abstract class SiteVisitState with _$SiteVisitState {
  const factory SiteVisitState({
    @Default(false) bool isLoading,
    @Default(false) bool isCreated,
    @Default(false) bool isUpdated,
    LatLng? currentPosition,
    SiteVisitData? createSiteVisitResponse,
    SiteVisitData? updateSiteVisitResponse,
    String? currentAddress,
    String? timeNow,
    @Default({}) Map<String, String> settings,
    String? error,
  }) = _SiteVisitState;
}

@freezed
abstract class LatLng with _$LatLng {
  const factory LatLng({required double latitude, required double longitude}) =
      _LatLng;
}
