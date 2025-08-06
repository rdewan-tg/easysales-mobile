import 'package:core/data/remote/network_service.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/create_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/request/update_site_visit_request.dart';
import 'package:merchandiser/features/site_visit/data/dto/response/site_visit_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'site_visit_api.g.dart';

final siteVisitApiProvider = Provider<SiteVisitApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return SiteVisitApi(dio);
});

@RestApi()
abstract class SiteVisitApi {
  factory SiteVisitApi(Dio dio) => _SiteVisitApi(dio);

  @POST(createSiteVisitEndPoint)
  Future<SiteVisitResponse> createSiteVisit(
    @Body() CreateSiteVisitRequest body,
  );

  @PATCH(updateSiteVisitEndPoint)
  Future<SiteVisitResponse> updateSiteVisit(
    @Body() UpdateSiteVisitRequest body,
  );
}
