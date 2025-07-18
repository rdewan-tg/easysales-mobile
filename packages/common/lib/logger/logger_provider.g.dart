// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggerHash() => r'79af69f1a3aa4e234217afaa104c306556b71321';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [logger].
@ProviderFor(logger)
const loggerProvider = LoggerFamily();

/// See also [logger].
class LoggerFamily extends Family<Logger> {
  /// See also [logger].
  const LoggerFamily();

  /// See also [logger].
  LoggerProvider call(String value) {
    return LoggerProvider(value);
  }

  @override
  LoggerProvider getProviderOverride(covariant LoggerProvider provider) {
    return call(provider.value);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loggerProvider';
}

/// See also [logger].
class LoggerProvider extends AutoDisposeProvider<Logger> {
  /// See also [logger].
  LoggerProvider(String value)
    : this._internal(
        (ref) => logger(ref as LoggerRef, value),
        from: loggerProvider,
        name: r'loggerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$loggerHash,
        dependencies: LoggerFamily._dependencies,
        allTransitiveDependencies: LoggerFamily._allTransitiveDependencies,
        value: value,
      );

  LoggerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final String value;

  @override
  Override overrideWith(Logger Function(LoggerRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: LoggerProvider._internal(
        (ref) => create(ref as LoggerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Logger> createElement() {
    return _LoggerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoggerProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LoggerRef on AutoDisposeProviderRef<Logger> {
  /// The parameter `value` of this provider.
  String get value;
}

class _LoggerProviderElement extends AutoDisposeProviderElement<Logger>
    with LoggerRef {
  _LoggerProviderElement(super.provider);

  @override
  String get value => (origin as LoggerProvider).value;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
