import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:profile/data/dto/delete_me_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';

part 'profile_api.g.dart';

final profileApiProvider = Provider<ProfileApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return ProfileApi(dio);
});

@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio dio) => _ProfileApi(dio);

  @DELETE('/api/v1/me')
  Future<DeleteMeResponse> deleteMe();
}
