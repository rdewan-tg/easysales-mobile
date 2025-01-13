import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:profile/data/dto/delete_me_response.dart';
import 'package:profile/data/repository/iprofile_repository.dart';
import 'package:profile/data/source/local/iprofile_storage.dart';
import 'package:profile/data/source/local/profile_storage.dart';
import 'package:profile/data/source/remote/profile_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:dio/dio.dart';

final profileRepositoryProvider = Provider<IProfileRepository>((ref) {
  final ProfileApi profileApi = ref.watch(profileApiProvider);
  final SettingDao settingDao = ref.watch(settingDaoProvider);
  final IProfileStorage profileStorage = ref.watch(profileStorageProvider);

  return ProfileRepository(profileApi, settingDao, profileStorage);
});

final class ProfileRepository
    with DioExceptionMapper
    implements IProfileRepository {
  final ProfileApi _profileApi;
  final SettingDao _settingDao;
  final IProfileStorage _profileStorage;

  ProfileRepository(this._profileApi, this._settingDao, this._profileStorage);

  @override
  Future<void> clearToken() async {
    try {
      await _profileStorage.clearToken();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
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
  Future<DeleteMeResponse> deleteMe() async {
    try {
      return await _profileApi.deleteMe();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
