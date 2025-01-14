import 'package:common/http_status/http_status.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/token/itoken_service.dart';
import 'package:core/data/remote/token/token_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
  final tokenService = ref.watch(tokenServiceProvider(dio));

  return NetworkServiceInterceptor(tokenService, dio);
});

final class NetworkServiceInterceptor extends Interceptor {
  final ITokenService _tokenService;
  final Dio _dio;

  NetworkServiceInterceptor(this._tokenService, this._dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenService.getAccessToken();

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    // if the access token is not null, add it to the request headers
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      if (err.response?.statusCode == unauthorized &&
          err.requestOptions.path != loginEndPoint) {
        // Attempt to refresh the token
        final refreshToken = await _tokenService.getRefreshToken();

        if (refreshToken == null) {
          // No refresh token available, pass the error
          return handler.next(err);
        }

        try {
          // Refresh the token
          final result = await _tokenService.refreshToken(refreshToken);
          final newAccessToken = result.data.accessToken;
          final newRefreshToken = result.data.refreshToken;

          // Save the new tokens
          await _tokenService.saveToken(newAccessToken, newRefreshToken);

          // Clone the original request options
          final options = Options(
            method: err.requestOptions.method,
            headers: {
              ...err.requestOptions.headers,
              'Authorization':
                  'Bearer $newAccessToken', // Update the Authorization header
            },
          );

          // Retry the request with updated headers
          final retryResponse = await _dio.request(
            err.requestOptions.path,
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters,
            options: options,
          );

          // Resolve the retry response
          return handler.resolve(retryResponse);
        } on DioException catch (refreshError) {
          if (refreshError.response?.statusCode == refreshTokenExpired) {
            // If refresh token is expired, clear tokens and pass the error
            await _tokenService.clearToken();
          }
          // Pass the original error if refresh fails
          return handler.next(err);
        }
      }
    } catch (e) {
      // Handle unexpected errors
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          type: DioExceptionType.unknown,
          error: 'Interceptor error: ${e.toString()}',
        ),
      );
    }

    // If it's not an unauthorized error, pass the error as is
    return handler.next(err);
  }
}
