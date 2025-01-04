
import 'package:auth/features/login/data/source/local/isetting_storage.dart';
import 'package:auth/features/login/data/source/local/setting_storage.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:auth/features/login/data/dto/request/login_request.dart';
import 'package:common/dto/auth/login/login_response.dart';
import 'package:auth/features/login/data/repository/ilogin_repository.dart';
import 'package:auth/features/login/data/source/local/itoken_storage.dart';
import 'package:auth/features/login/data/source/local/token_storage.dart';
import 'package:auth/features/login/data/source/remote/login_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final loginRepositoryProvider = Provider.autoDispose<ILoginRepository>((ref) {
  final loginApi = ref.watch(loginApiProvider);
  final tokenStorage = ref.watch(tokenStorageProvider);
  final settingStorage = ref.watch(settingStorageProvider);

  return LoginRepository(loginApi, tokenStorage, settingStorage);  
});

final class LoginRepository with DioExceptionMapper implements ILoginRepository {
  final LoginApi _loginApi;
  final ITokenStorage _tokenStorage;
  final ISettingStorage _settingStorage;

  LoginRepository(this._loginApi, this._tokenStorage, this._settingStorage);

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      // api call
      final response = await _loginApi.login(loginRequest);
      // get access token and refresh token from response
      final accessToken = response.data.token.accessToken;
      final refreshToken = response.data.token.refreshToken;
      // store in secure storage
      await _tokenStorage.storeToken(accessToken, refreshToken);

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
  
  @override
  Future<void> upsertMultipleSettings(Map<String, String> settings) async {
    try {

      return await _settingStorage.upsertMultipleSettings(settings);
      
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