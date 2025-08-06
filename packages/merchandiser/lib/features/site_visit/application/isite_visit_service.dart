import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';

abstract interface class ISiteVisitService {
  Future<Result<SiteVisitData, Failure>> createSiteVisit(
    CreateSiteVisitRequest body,
  );
  Future<Result<SiteVisitData, Failure>> updateSiteVisit(
    UpdateSiteVisitRequest body,
  );
  Future<Map<String, String>> getAllSetting();
}
