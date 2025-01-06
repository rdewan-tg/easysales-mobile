import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/application/setting_service.dart';
import 'package:setting/presentation/state/setting_state.dart';

final settingControllerProvider =
    NotifierProvider<SettingController, SettingState>(SettingController.new);

final class SettingController extends Notifier<SettingState> {
  StreamSubscription<String>? _themeModeSubscription;

  @override
  SettingState build() {
    // Cancel the subscription when the controller is disposed
    ref.onDispose(() {
      _themeModeSubscription?.cancel();
    });

    // Start listening to the theme mode stream when the controller is created
    watchTheme();
    // Start listening to the language mode stream when the controller is created
    watchLanguage();
    // get all settings when the controller is created
    getAllSettings();

    // Return the initial state
    return const SettingState();
  }

  Future<void> writeTheme(String key, String value) async {
    state = state.copyWith(errorMsg: null);
    final service = ref.read(settingServiceProvider);

    final result = await service.writeTheme(key, value);
    result.when(
      (success) {
        debugPrint('success: $success');
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  Future<void> writeLanguage(String key, String value) async {
    state = state.copyWith(errorMsg: null);
    final service = ref.read(settingServiceProvider);

    final result = await service.writeLanguage(key, value);
    result.when(
      (success) {
        debugPrint('success: $success');
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  Future<void> getDeviceSetting() async {
    state = state.copyWith(errorMsg: null);

    final service = ref.read(settingServiceProvider);

    final result = await service.getDeviceSetting('');
    result.when(
      (success) {},
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  Future<void> watchTheme() async {
    // Start listening to the theme mode stream
    _themeModeSubscription =
        ref.watch(settingServiceProvider).watchThemeMode().listen(
      (themeMode) {
        state = state.copyWith(themeMode: themeMode);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error);
      },
    );
  }

  Future<void> watchLanguage() async {
    // Start listening to the language mode stream
    _themeModeSubscription =
        ref.watch(settingServiceProvider).watchLanguage().listen(
      (language) {
        state = state.copyWith(language: language);
      },
      onError: (error) {
        state = state.copyWith(errorMsg: error);
      },
    );
  }

  Future<void> logout() async {
    // call api - logout
    // await ref.read(authServiceProvider).logout();

    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> deleteMyAccount() async {
    // call api - logout
    // await ref.read(authServiceProvider).logout();

    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> getAllSettings() async {
    final result = await ref.read(settingServiceProvider).getAllSetting();

    result.when(
      (success) {
        state = state.copyWith(settings: success);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }
}
