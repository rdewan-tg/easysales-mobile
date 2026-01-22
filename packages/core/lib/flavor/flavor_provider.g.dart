// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flavor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FlavorNotifier)
final flavorProvider = FlavorNotifierProvider._();

final class FlavorNotifierProvider
    extends $NotifierProvider<FlavorNotifier, Flavor> {
  FlavorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'flavorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$flavorNotifierHash();

  @$internal
  @override
  FlavorNotifier create() => FlavorNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Flavor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Flavor>(value),
    );
  }
}

String _$flavorNotifierHash() => r'ff088f4e619571130892f58ea6876784ff5e65f5';

abstract class _$FlavorNotifier extends $Notifier<Flavor> {
  Flavor build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Flavor, Flavor>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Flavor, Flavor>,
              Flavor,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
