import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:profile/data/dto/get_me_response.dart';

abstract interface class IProfileService {
  Future<Result<bool, Failure>> deleteMe();

  Future<void> clearToken();

  Future<Result<Map<String, String>, Failure>> getAllSetting();

  Future<Result<GetMeResponse, Failure>> getMe();
}
