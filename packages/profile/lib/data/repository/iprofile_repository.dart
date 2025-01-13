import 'package:profile/data/dto/delete_me_response.dart';

abstract interface class IProfileRepository {
  Future<DeleteMeResponse> deleteMe();

  Future<void> clearToken();

  Future<Map<String, String>> getAllSettings();
}
