import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:auth/features/forgot_password/data/dto/request/forgot_password_request.dart';
import 'package:auth/features/forgot_password/data/dto/response/forgot_password_response.dart';
import 'package:auth/features/forgot_password/data/repository/iforgot_password_repository.dart';
import 'package:auth/features/forgot_password/data/source/remote/forgot_password_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

final forgotPasswordRepositoryProvider =
    Provider.autoDispose<IForgotPasswordRepository>((ref) {
  final forgotPasswordApi = ref.watch(forgotPasswordApiProvider);

  return ForgotPasswordRepository(forgotPasswordApi);
});

final class ForgotPasswordRepository
    with DioExceptionMapper
    implements IForgotPasswordRepository {
  final ForgotPasswordApi _forgotPasswordApi;

  ForgotPasswordRepository(this._forgotPasswordApi);

  @override
  Future<ForgotPasswordResponse> forgotPassword(
      ForgotPasswordRequest data) async {
    try {
      return await _forgotPasswordApi.forgotPassword(data);
    } on DioException catch (e, stackTrace) {
      // Use the mixin to map DioException to Failure
      throw mapDioExceptionToFailure(e, stackTrace);
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
