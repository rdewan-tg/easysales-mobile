// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(settingRepository)
const settingRepositoryProvider = SettingRepositoryProvider._();

final class SettingRepositoryProvider
    extends
        $FunctionalProvider<
          ISettingRepository,
          ISettingRepository,
          ISettingRepository
        >
    with $Provider<ISettingRepository> {
  const SettingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingRepositoryHash();

  @$internal
  @override
  $ProviderElement<ISettingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ISettingRepository create(Ref ref) {
    return settingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ISettingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ISettingRepository>(value),
    );
  }
}

String _$settingRepositoryHash() => r'c9752e7f26327c76a5aaec29ee2eb97da9fbdc82';
