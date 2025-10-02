// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_version_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(newVersion)
const newVersionProvider = NewVersionProvider._();

final class NewVersionProvider
    extends $FunctionalProvider<NewVersionPlus, NewVersionPlus, NewVersionPlus>
    with $Provider<NewVersionPlus> {
  const NewVersionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'newVersionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$newVersionHash();

  @$internal
  @override
  $ProviderElement<NewVersionPlus> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NewVersionPlus create(Ref ref) {
    return newVersion(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NewVersionPlus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NewVersionPlus>(value),
    );
  }
}

String _$newVersionHash() => r'2e280feea6b7a77bd8d18008eeef2678e83b31e7';
