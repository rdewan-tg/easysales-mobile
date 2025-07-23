import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';

abstract interface class ISiteVisitRepository {
  Future<SiteVisitResponse> createSiteVisit(CreateSiteVisitRequest body);
  Future<SiteVisitResponse> updateSiteVisit(UpdateSiteVisitRequest body);
  Future<Map<String, String>> getAllSettings();
}
