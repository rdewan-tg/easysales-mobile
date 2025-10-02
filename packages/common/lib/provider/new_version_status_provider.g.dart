// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_version_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(versionStatus)
const versionStatusProvider = VersionStatusProvider._();

final class VersionStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<VersionStatus?>,
          VersionStatus?,
          FutureOr<VersionStatus?>
        >
    with $FutureModifier<VersionStatus?>, $FutureProvider<VersionStatus?> {
  const VersionStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'versionStatusProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$versionStatusHash();

  @$internal
  @override
  $FutureProviderElement<VersionStatus?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<VersionStatus?> create(Ref ref) {
    return versionStatus(ref);
  }
}

String _$versionStatusHash() => r'67076cb84285f94d5fbb0ce881f1e648a64956a0';
