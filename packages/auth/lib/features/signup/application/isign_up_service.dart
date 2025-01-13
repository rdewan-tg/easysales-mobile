import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:auth/features/signup/data/dto/request/sign_up_request.dart';
import 'package:auth/features/signup/domain/model/sign_up_model.dart';

abstract interface class ISignUpService {
  Future<Result<SignUpModel, Failure>> signUp(SignUpRequest data);
}
