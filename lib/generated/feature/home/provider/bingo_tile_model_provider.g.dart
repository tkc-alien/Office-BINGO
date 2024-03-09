// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../feature/home/provider/bingo_tile_model_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bingoTileModelProviderHash() =>
    r'e0089c19d7bc08f4a5498e3dedca3feef8b2f0b5';

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

/// See also [bingoTileModelProvider].
@ProviderFor(bingoTileModelProvider)
const bingoTileModelProviderProvider = BingoTileModelProviderFamily();

/// See also [bingoTileModelProvider].
class BingoTileModelProviderFamily extends Family<BingoTileModel> {
  /// See also [bingoTileModelProvider].
  const BingoTileModelProviderFamily();

  /// See also [bingoTileModelProvider].
  BingoTileModelProviderProvider call({
    required LotteryNumberEntity lotteryNumber,
  }) {
    return BingoTileModelProviderProvider(
      lotteryNumber: lotteryNumber,
    );
  }

  @override
  BingoTileModelProviderProvider getProviderOverride(
    covariant BingoTileModelProviderProvider provider,
  ) {
    return call(
      lotteryNumber: provider.lotteryNumber,
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
  String? get name => r'bingoTileModelProviderProvider';
}

/// See also [bingoTileModelProvider].
class BingoTileModelProviderProvider
    extends AutoDisposeProvider<BingoTileModel> {
  /// See also [bingoTileModelProvider].
  BingoTileModelProviderProvider({
    required LotteryNumberEntity lotteryNumber,
  }) : this._internal(
          (ref) => bingoTileModelProvider(
            ref as BingoTileModelProviderRef,
            lotteryNumber: lotteryNumber,
          ),
          from: bingoTileModelProviderProvider,
          name: r'bingoTileModelProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bingoTileModelProviderHash,
          dependencies: BingoTileModelProviderFamily._dependencies,
          allTransitiveDependencies:
              BingoTileModelProviderFamily._allTransitiveDependencies,
          lotteryNumber: lotteryNumber,
        );

  BingoTileModelProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.lotteryNumber,
  }) : super.internal();

  final LotteryNumberEntity lotteryNumber;

  @override
  Override overrideWith(
    BingoTileModel Function(BingoTileModelProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BingoTileModelProviderProvider._internal(
        (ref) => create(ref as BingoTileModelProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        lotteryNumber: lotteryNumber,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<BingoTileModel> createElement() {
    return _BingoTileModelProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BingoTileModelProviderProvider &&
        other.lotteryNumber == lotteryNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lotteryNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BingoTileModelProviderRef on AutoDisposeProviderRef<BingoTileModel> {
  /// The parameter `lotteryNumber` of this provider.
  LotteryNumberEntity get lotteryNumber;
}

class _BingoTileModelProviderProviderElement
    extends AutoDisposeProviderElement<BingoTileModel>
    with BingoTileModelProviderRef {
  _BingoTileModelProviderProviderElement(super.provider);

  @override
  LotteryNumberEntity get lotteryNumber =>
      (origin as BingoTileModelProviderProvider).lotteryNumber;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
