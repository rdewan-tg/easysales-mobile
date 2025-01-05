part of common;

mixin DioExceptionMapper {
  Failure mapDioExceptionToFailure(DioException e, StackTrace stackTrace) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return Failure(
          message: "Connection timeout. Please try again later.".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.sendTimeout:
        return Failure(
          message: "Send timeout. Check your network and try again.".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.receiveTimeout:
        return Failure(
          message: "Receive timeout. Server might be busy.".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        return Failure(
          message: _getMessageForStatusCode(statusCode),
          statusCode: statusCode,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.cancel:
        return Failure(
          message: "Request was cancelled. Please try again.".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
      case DioExceptionType.unknown:
        return Failure(
          message: "An unknown error occurred: ${e.message}".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
      default:
        return Failure(
          message: "Unexpected error occurred: ${e.message}".hardcoded,
          exception: e,
          stackTrace: stackTrace,
        );
    }
  }

  String _getMessageForStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return "Bad Request. Please check your input.".hardcoded;
      case 401:
        return "Unauthorized. Please check your credentials.".hardcoded;
      case 403:
        return "Forbidden. You do not have access.".hardcoded;
      case 404:
        return "Not found. Please check the endpoint.".hardcoded;
      case 500:
        return "Internal Server Error. Try again later.".hardcoded;
      default:
        return "Unexpected server response (Status code: $statusCode)."
            .hardcoded;
    }
  }
}
