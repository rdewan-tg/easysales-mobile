
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:auth/features/signup/data/dto/request/sign_up_request.dart';
import 'package:auth/features/signup/data/dto/response/sign_up_response.dart';
import 'package:auth/features/signup/data/repository/isign_up_repository.dart';
import 'package:auth/features/signup/data/source/remote/signup_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final signUpRepositoryProvider = Provider.autoDispose<ISignUpRepository>((ref) {
  final signUpApi = ref.watch(signUpApiProvider);
  
  return SignUpRepository(signUpApi);
});


final class SignUpRepository with DioExceptionMapper implements ISignUpRepository {
  final SignUpApi _signUpApi;

  SignUpRepository(this._signUpApi);

  @override
  Future<SignUpResponse> signUp(SignUpRequest data) async {

    try {

      final response = await _signUpApi.signUp(data);

      return response;
      
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