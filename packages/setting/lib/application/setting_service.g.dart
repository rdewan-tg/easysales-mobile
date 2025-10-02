// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settingService)
const settingServiceProvider = SettingServiceProvider._();

final class SettingServiceProvider
    extends
        $FunctionalProvider<ISettingService, ISettingService, ISettingService>
    with $Provider<ISettingService> {
  const SettingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingServiceHash();

  @$internal
  @override
  $ProviderElement<ISettingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ISettingService create(Ref ref) {
    return settingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISettingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISettingService>(value),
    );
  }
}

String _$settingServiceHash() => r'041c5db24f7c847cfdee1e284bedab02222be6cb';
