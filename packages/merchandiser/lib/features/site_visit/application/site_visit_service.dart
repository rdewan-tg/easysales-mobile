import 'package:merchandiser/features/site_visit/application/isite_visit_service.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';
import 'package:merchandiser/features/site_visit/data/repository/isite_visit_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:merchandiser/features/site_visit/data/repository/site_visit_repository.dart';

final siteVisitServiceProvider = Provider<SiteVisitService>((ref) {
  final siteVisitRepository = ref.watch(siteVisitRepositoryProvider);

  return SiteVisitService(siteVisitRepository);
});

final class SiteVisitService implements ISiteVisitService {
  final ISiteVisitRepository _siteVisitRepository;

  SiteVisitService(this._siteVisitRepository);

  @override
  Future<Result<SiteVisitData, Failure>> createSiteVisit(
    CreateSiteVisitRequest body,
  ) async {
    try {
      final result = await _siteVisitRepository.createSiteVisit(body);
      return Success(result.data);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Future<Result<SiteVisitData, Failure>> updateSiteVisit(
    UpdateSiteVisitRequest body,
  ) async {
    try {
      final result = await _siteVisitRepository.updateSiteVisit(body);
      return Success(result.data);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _siteVisitRepository.getAllSettings();
    } catch (_) {
      rethrow;
    }
  }
}
