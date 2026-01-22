// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_version_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getVersionStatus)
final getVersionStatusProvider = GetVersionStatusProvider._();

final class GetVersionStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<VersionStatus?>,
          VersionStatus?,
          FutureOr<VersionStatus?>
        >
    with $FutureModifier<VersionStatus?>, $FutureProvider<VersionStatus?> {
  GetVersionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getVersionStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getVersionStatusHash();

  @$internal
  @override
  $FutureProviderElement<VersionStatus?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VersionStatus?> create(Ref ref) {
    return getVersionStatus(ref);
  }
}

String _$getVersionStatusHash() => r'ed6f8318eec1353e63ab1f42127410f10fe0da74';
