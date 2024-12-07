// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wareki.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$warekiHash() => r'73c5670590db8268a0f1866d520220438bf1c20c';

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

/// See also [wareki].
@ProviderFor(wareki)
const warekiProvider = WarekiFamily();

/// See also [wareki].
class WarekiFamily extends Family<AsyncValue<WarekiState>> {
  /// See also [wareki].
  const WarekiFamily();

  /// See also [wareki].
  WarekiProvider call({
    required int year,
  }) {
    return WarekiProvider(
      year: year,
    );
  }

  @override
  WarekiProvider getProviderOverride(
    covariant WarekiProvider provider,
  ) {
    return call(
      year: provider.year,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'warekiProvider';
}

/// See also [wareki].
class WarekiProvider extends AutoDisposeFutureProvider<WarekiState> {
  /// See also [wareki].
  WarekiProvider({
    required int year,
  }) : this._internal(
          (ref) => wareki(
            ref as WarekiRef,
            year: year,
          ),
          from: warekiProvider,
          name: r'warekiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$warekiHash,
          dependencies: WarekiFamily._dependencies,
          allTransitiveDependencies: WarekiFamily._allTransitiveDependencies,
          year: year,
        );

  WarekiProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.year,
  }) : super.internal();

  final int year;

  @override
  Override overrideWith(
    FutureOr<WarekiState> Function(WarekiRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WarekiProvider._internal(
        (ref) => create(ref as WarekiRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        year: year,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WarekiState> createElement() {
    return _WarekiProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WarekiProvider && other.year == year;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, year.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin WarekiRef on AutoDisposeFutureProviderRef<WarekiState> {
  /// The parameter `year` of this provider.
  int get year;
}

class _WarekiProviderElement
    extends AutoDisposeFutureProviderElement<WarekiState> with WarekiRef {
  _WarekiProviderElement(super.provider);

  @override
  int get year => (origin as WarekiProvider).year;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
