import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:setting/application/setting_service.dart';
import 'package:setting/presentation/state/setting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_controller.g.dart';

@Riverpod(keepAlive: true)
final class SettingController extends _$SettingController {
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

  Future<void> getOrderRunningNumber() async {
    final result =
        await ref.read(settingServiceProvider).getOrderRunningNumber();
    state = state.copyWith(orderRunningNumber: result);
  }

  Future<void> setOrderRunningNumber(String value) async {
    try {
      state = state.copyWith(isOrderRunningNumberSaved: false);
      await ref.read(settingServiceProvider).setOrderRunningNumber(value);
      state = state.copyWith(isOrderRunningNumberSaved: true);
      Future.delayed(const Duration(seconds: 3), () {
        state = state.copyWith(isOrderRunningNumberSaved: false);
      });
    } catch (e, _) {
      state = state.copyWith(errorMsg: e.toString());
    }
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
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> deleteMyAccount() async {
    // call api - logout
    // await ref.read(authServiceProvider).logout();

    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> getAllSettings() async {
    final result = await ref.read(settingServiceProvider).getAllSetting();

    state = state.copyWith(settings: result);
  }

  String? getTimeZone() => state.settings['timeZone'];
}
