import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';
import 'package:merchandiser/features/site_visit/data/repository/isite_visit_repository.dart';
import 'package:merchandiser/features/site_visit/data/source/remote/site_visit_api.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final siteVisitRepositoryProvider = Provider<SiteVisitRepository>((ref) {
  final siteVisitApi = ref.watch(siteVisitApiProvider);
  final settingDao = ref.watch(settingDaoProvider);

  return SiteVisitRepository(siteVisitApi, settingDao);
});

final class SiteVisitRepository
    with DioExceptionMapper
    implements ISiteVisitRepository {
  final SiteVisitApi siteVisitApi;
  final SettingDao _settingDao;

  SiteVisitRepository(this.siteVisitApi, this._settingDao);

  @override
  Future<SiteVisitResponse> createSiteVisit(CreateSiteVisitRequest body) async {
    try {
      return await siteVisitApi.createSiteVisit(body);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } on Exception catch (e, s) {
      throw Failure(message: e.toString(), exception: e, stackTrace: s);
    }
  }

  @override
  Future<SiteVisitResponse> updateSiteVisit(UpdateSiteVisitRequest body) async {
    try {
      return await siteVisitApi.updateSiteVisit(body);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } on Exception catch (e, s) {
      throw Failure(message: e.toString(), exception: e, stackTrace: s);
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
