import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class IProfileService {

  Future<Result<bool, Failure>> deleteMe();

  Future<void> clearToken();

  Future<Result<Map<String, String>, Failure>> getAllSetting();
 
}