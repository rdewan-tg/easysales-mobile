
import 'package:auth/features/login/data/dto/request/login_request.dart';
import 'package:common/dto/auth/login/login_response.dart';

abstract interface class ILoginRepository {

  Future<LoginResponse> login(LoginRequest loginRequest);
}