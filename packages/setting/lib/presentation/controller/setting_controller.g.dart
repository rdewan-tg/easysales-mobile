// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettingController)
const settingControllerProvider = SettingControllerProvider._();

final class SettingControllerProvider
    extends $NotifierProvider<SettingController, SettingState> {
  const SettingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingControllerHash();

  @$internal
  @override
  SettingController create() => SettingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingState>(value),
    );
  }
}

String _$settingControllerHash() => r'95d4ed1a853e85a65e4c971d73db23983363edf1';

abstract class _$SettingController extends $Notifier<SettingState> {
  SettingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SettingState, SettingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SettingState, SettingState>,
              SettingState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
