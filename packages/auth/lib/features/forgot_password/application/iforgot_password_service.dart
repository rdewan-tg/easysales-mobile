import 'package:auth/features/forgot_password/data/dto/request/forgot_password_request.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IForgotPasswordService {
  Future<Result<bool, Failure>> forgotPassword(ForgotPasswordRequest data);
}
