import 'package:auth/features/forgot_password/data/dto/request/forgot_password_request.dart';
import 'package:auth/features/forgot_password/data/dto/response/forgot_password_response.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'forgot_password_api.g.dart';

final forgotPasswordApiProvider = Provider.autoDispose<ForgotPasswordApi>((
  ref,
) {
  final dio = ref.watch(networkServiceProvider);

  return ForgotPasswordApi(dio);
});

@RestApi()
abstract class ForgotPasswordApi {
  factory ForgotPasswordApi(Dio dio) => _ForgotPasswordApi(dio);

  @POST(forgotPasswordEndPoint)
  Future<ForgotPasswordResponse> forgotPassword(
    @Body() ForgotPasswordRequest data,
  );
}
