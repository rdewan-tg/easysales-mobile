// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<ProductEntityData> get products => throw _privateConstructorUsedError;
  List<ProductPriceEntityData> get prices => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;
  List<String> get searchHistory => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  String get lastSearchQuery => throw _privateConstructorUsedError;
  bool get isSearchProductHistoryCleared => throw _privateConstructorUsedError;
  int? get totalSearchProductHistoryCleared =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {dynamic isLoading,
      List<ProductEntityData> products,
      List<ProductPriceEntityData> prices,
      String? errorMsg,
      List<String> searchHistory,
      String searchQuery,
      String lastSearchQuery,
      bool isSearchProductHistoryCleared,
      int? totalSearchProductHistoryCleared});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = null,
    Object? prices = null,
    Object? errorMsg = freezed,
    Object? searchHistory = null,
    Object? searchQuery = null,
    Object? lastSearchQuery = null,
    Object? isSearchProductHistoryCleared = null,
    Object? totalSearchProductHistoryCleared = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntityData>,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      searchHistory: null == searchHistory
          ? _value.searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      lastSearchQuery: null == lastSearchQuery
          ? _value.lastSearchQuery
          : lastSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchProductHistoryCleared: null == isSearchProductHistoryCleared
          ? _value.isSearchProductHistoryCleared
          : isSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSearchProductHistoryCleared: freezed ==
              totalSearchProductHistoryCleared
          ? _value.totalSearchProductHistoryCleared
          : totalSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic isLoading,
      List<ProductEntityData> products,
      List<ProductPriceEntityData> prices,
      String? errorMsg,
      List<String> searchHistory,
      String searchQuery,
      String lastSearchQuery,
      bool isSearchProductHistoryCleared,
      int? totalSearchProductHistoryCleared});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? products = null,
    Object? prices = null,
    Object? errorMsg = freezed,
    Object? searchHistory = null,
    Object? searchQuery = null,
    Object? lastSearchQuery = null,
    Object? isSearchProductHistoryCleared = null,
    Object? totalSearchProductHistoryCleared = freezed,
  }) {
    return _then(_$ProductStateImpl(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntityData>,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<ProductPriceEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      searchHistory: null == searchHistory
          ? _value._searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      lastSearchQuery: null == lastSearchQuery
          ? _value.lastSearchQuery
          : lastSearchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchProductHistoryCleared: null == isSearchProductHistoryCleared
          ? _value.isSearchProductHistoryCleared
          : isSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
              as bool,
      totalSearchProductHistoryCleared: freezed ==
              totalSearchProductHistoryCleared
          ? _value.totalSearchProductHistoryCleared
          : totalSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  _$ProductStateImpl(
      {this.isLoading = false,
      final List<ProductEntityData> products = const [],
      final List<ProductPriceEntityData> prices = const [],
      this.errorMsg,
      final List<String> searchHistory = const [],
      this.searchQuery = '',
      this.lastSearchQuery = '',
      this.isSearchProductHistoryCleared = false,
      this.totalSearchProductHistoryCleared})
      : _products = products,
        _prices = prices,
        _searchHistory = searchHistory;

  @override
  @JsonKey()
  final dynamic isLoading;
  final List<ProductEntityData> _products;
  @override
  @JsonKey()
  List<ProductEntityData> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductPriceEntityData> _prices;
  @override
  @JsonKey()
  List<ProductPriceEntityData> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  final String? errorMsg;
  final List<String> _searchHistory;
  @override
  @JsonKey()
  List<String> get searchHistory {
    if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final String lastSearchQuery;
  @override
  @JsonKey()
  final bool isSearchProductHistoryCleared;
  @override
  final int? totalSearchProductHistoryCleared;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, products: $products, prices: $prices, errorMsg: $errorMsg, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery, isSearchProductHistoryCleared: $isSearchProductHistoryCleared, totalSearchProductHistoryCleared: $totalSearchProductHistoryCleared)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            const DeepCollectionEquality()
                .equals(other._searchHistory, _searchHistory) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.lastSearchQuery, lastSearchQuery) ||
                other.lastSearchQuery == lastSearchQuery) &&
            (identical(other.isSearchProductHistoryCleared,
                    isSearchProductHistoryCleared) ||
                other.isSearchProductHistoryCleared ==
                    isSearchProductHistoryCleared) &&
            (identical(other.totalSearchProductHistoryCleared,
                    totalSearchProductHistoryCleared) ||
                other.totalSearchProductHistoryCleared ==
                    totalSearchProductHistoryCleared));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_prices),
      errorMsg,
      const DeepCollectionEquality().hash(_searchHistory),
      searchQuery,
      lastSearchQuery,
      isSearchProductHistoryCleared,
      totalSearchProductHistoryCleared);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  factory _ProductState(
      {final dynamic isLoading,
      final List<ProductEntityData> products,
      final List<ProductPriceEntityData> prices,
      final String? errorMsg,
      final List<String> searchHistory,
      final String searchQuery,
      final String lastSearchQuery,
      final bool isSearchProductHistoryCleared,
      final int? totalSearchProductHistoryCleared}) = _$ProductStateImpl;

  @override
  dynamic get isLoading;
  @override
  List<ProductEntityData> get products;
  @override
  List<ProductPriceEntityData> get prices;
  @override
  String? get errorMsg;
  @override
  List<String> get searchHistory;
  @override
  String get searchQuery;
  @override
  String get lastSearchQuery;
  @override
  bool get isSearchProductHistoryCleared;
  @override
  int? get totalSearchProductHistoryCleared;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
