import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:profile/data/source/local/iprofile_storage.dart';

final profileStorageProvider = Provider<IProfileStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return ProfileStorage(secureStorage);
});

class ProfileStorage implements IProfileStorage {
  final ISecureStorage _secureStorage;

  ProfileStorage(this._secureStorage);

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }
}
