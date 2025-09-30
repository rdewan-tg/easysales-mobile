// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 bool get isLoading; bool get isProductImported; bool get isPriceImported; Map<String, String> get settings; List<ProductEntityData> get products; List<ProductPriceEntityData> get prices; ProductPriceEntityData? get price; List<String> get uom; List<String> get packSize; int get quantity; int get totalProductImported; int get totalPriceImported; List<String> get searchHistory; String get searchQuery; String get lastSearchQuery; bool get isSearchProductHistoryCleared; int? get totalSearchProductHistoryCleared; String? get errorMsg;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isProductImported, isProductImported) || other.isProductImported == isProductImported)&&(identical(other.isPriceImported, isPriceImported) || other.isPriceImported == isPriceImported)&&const DeepCollectionEquality().equals(other.settings, settings)&&const DeepCollectionEquality().equals(other.products, products)&&const DeepCollectionEquality().equals(other.prices, prices)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.uom, uom)&&const DeepCollectionEquality().equals(other.packSize, packSize)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalProductImported, totalProductImported) || other.totalProductImported == totalProductImported)&&(identical(other.totalPriceImported, totalPriceImported) || other.totalPriceImported == totalPriceImported)&&const DeepCollectionEquality().equals(other.searchHistory, searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery)&&(identical(other.isSearchProductHistoryCleared, isSearchProductHistoryCleared) || other.isSearchProductHistoryCleared == isSearchProductHistoryCleared)&&(identical(other.totalSearchProductHistoryCleared, totalSearchProductHistoryCleared) || other.totalSearchProductHistoryCleared == totalSearchProductHistoryCleared)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isProductImported,isPriceImported,const DeepCollectionEquality().hash(settings),const DeepCollectionEquality().hash(products),const DeepCollectionEquality().hash(prices),price,const DeepCollectionEquality().hash(uom),const DeepCollectionEquality().hash(packSize),quantity,totalProductImported,totalPriceImported,const DeepCollectionEquality().hash(searchHistory),searchQuery,lastSearchQuery,isSearchProductHistoryCleared,totalSearchProductHistoryCleared,errorMsg);

@override
String toString() {
  return 'ProductState(isLoading: $isLoading, isProductImported: $isProductImported, isPriceImported: $isPriceImported, settings: $settings, products: $products, prices: $prices, price: $price, uom: $uom, packSize: $packSize, quantity: $quantity, totalProductImported: $totalProductImported, totalPriceImported: $totalPriceImported, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery, isSearchProductHistoryCleared: $isSearchProductHistoryCleared, totalSearchProductHistoryCleared: $totalSearchProductHistoryCleared, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isProductImported, bool isPriceImported, Map<String, String> settings, List<ProductEntityData> products, List<ProductPriceEntityData> prices, ProductPriceEntityData? price, List<String> uom, List<String> packSize, int quantity, int totalProductImported, int totalPriceImported, List<String> searchHistory, String searchQuery, String lastSearchQuery, bool isSearchProductHistoryCleared, int? totalSearchProductHistoryCleared, String? errorMsg
});




}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isProductImported = null,Object? isPriceImported = null,Object? settings = null,Object? products = null,Object? prices = null,Object? price = freezed,Object? uom = null,Object? packSize = null,Object? quantity = null,Object? totalProductImported = null,Object? totalPriceImported = null,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,Object? isSearchProductHistoryCleared = null,Object? totalSearchProductHistoryCleared = freezed,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isProductImported: null == isProductImported ? _self.isProductImported : isProductImported // ignore: cast_nullable_to_non_nullable
as bool,isPriceImported: null == isPriceImported ? _self.isPriceImported : isPriceImported // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntityData>,prices: null == prices ? _self.prices : prices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceEntityData>,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as ProductPriceEntityData?,uom: null == uom ? _self.uom : uom // ignore: cast_nullable_to_non_nullable
as List<String>,packSize: null == packSize ? _self.packSize : packSize // ignore: cast_nullable_to_non_nullable
as List<String>,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalProductImported: null == totalProductImported ? _self.totalProductImported : totalProductImported // ignore: cast_nullable_to_non_nullable
as int,totalPriceImported: null == totalPriceImported ? _self.totalPriceImported : totalPriceImported // ignore: cast_nullable_to_non_nullable
as int,searchHistory: null == searchHistory ? _self.searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchProductHistoryCleared: null == isSearchProductHistoryCleared ? _self.isSearchProductHistoryCleared : isSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchProductHistoryCleared: freezed == totalSearchProductHistoryCleared ? _self.totalSearchProductHistoryCleared : totalSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductState value)  $default,){
final _that = this;
switch (_that) {
case _ProductState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isProductImported,  bool isPriceImported,  Map<String, String> settings,  List<ProductEntityData> products,  List<ProductPriceEntityData> prices,  ProductPriceEntityData? price,  List<String> uom,  List<String> packSize,  int quantity,  int totalProductImported,  int totalPriceImported,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  bool isSearchProductHistoryCleared,  int? totalSearchProductHistoryCleared,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.isLoading,_that.isProductImported,_that.isPriceImported,_that.settings,_that.products,_that.prices,_that.price,_that.uom,_that.packSize,_that.quantity,_that.totalProductImported,_that.totalPriceImported,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.isSearchProductHistoryCleared,_that.totalSearchProductHistoryCleared,_that.errorMsg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isProductImported,  bool isPriceImported,  Map<String, String> settings,  List<ProductEntityData> products,  List<ProductPriceEntityData> prices,  ProductPriceEntityData? price,  List<String> uom,  List<String> packSize,  int quantity,  int totalProductImported,  int totalPriceImported,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  bool isSearchProductHistoryCleared,  int? totalSearchProductHistoryCleared,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _ProductState():
return $default(_that.isLoading,_that.isProductImported,_that.isPriceImported,_that.settings,_that.products,_that.prices,_that.price,_that.uom,_that.packSize,_that.quantity,_that.totalProductImported,_that.totalPriceImported,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.isSearchProductHistoryCleared,_that.totalSearchProductHistoryCleared,_that.errorMsg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isProductImported,  bool isPriceImported,  Map<String, String> settings,  List<ProductEntityData> products,  List<ProductPriceEntityData> prices,  ProductPriceEntityData? price,  List<String> uom,  List<String> packSize,  int quantity,  int totalProductImported,  int totalPriceImported,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  bool isSearchProductHistoryCleared,  int? totalSearchProductHistoryCleared,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _ProductState() when $default != null:
return $default(_that.isLoading,_that.isProductImported,_that.isPriceImported,_that.settings,_that.products,_that.prices,_that.price,_that.uom,_that.packSize,_that.quantity,_that.totalProductImported,_that.totalPriceImported,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.isSearchProductHistoryCleared,_that.totalSearchProductHistoryCleared,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _ProductState implements ProductState {
   _ProductState({this.isLoading = false, this.isProductImported = false, this.isPriceImported = false, final  Map<String, String> settings = const {}, final  List<ProductEntityData> products = const [], final  List<ProductPriceEntityData> prices = const [], this.price, final  List<String> uom = const [], final  List<String> packSize = const [], this.quantity = 0, this.totalProductImported = 0, this.totalPriceImported = 0, final  List<String> searchHistory = const [], this.searchQuery = '', this.lastSearchQuery = '', this.isSearchProductHistoryCleared = false, this.totalSearchProductHistoryCleared, this.errorMsg}): _settings = settings,_products = products,_prices = prices,_uom = uom,_packSize = packSize,_searchHistory = searchHistory;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isProductImported;
@override@JsonKey() final  bool isPriceImported;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}

 final  List<ProductEntityData> _products;
@override@JsonKey() List<ProductEntityData> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  List<ProductPriceEntityData> _prices;
@override@JsonKey() List<ProductPriceEntityData> get prices {
  if (_prices is EqualUnmodifiableListView) return _prices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prices);
}

@override final  ProductPriceEntityData? price;
 final  List<String> _uom;
@override@JsonKey() List<String> get uom {
  if (_uom is EqualUnmodifiableListView) return _uom;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uom);
}

 final  List<String> _packSize;
@override@JsonKey() List<String> get packSize {
  if (_packSize is EqualUnmodifiableListView) return _packSize;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_packSize);
}

@override@JsonKey() final  int quantity;
@override@JsonKey() final  int totalProductImported;
@override@JsonKey() final  int totalPriceImported;
 final  List<String> _searchHistory;
@override@JsonKey() List<String> get searchHistory {
  if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchHistory);
}

@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  String lastSearchQuery;
@override@JsonKey() final  bool isSearchProductHistoryCleared;
@override final  int? totalSearchProductHistoryCleared;
@override final  String? errorMsg;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isProductImported, isProductImported) || other.isProductImported == isProductImported)&&(identical(other.isPriceImported, isPriceImported) || other.isPriceImported == isPriceImported)&&const DeepCollectionEquality().equals(other._settings, _settings)&&const DeepCollectionEquality().equals(other._products, _products)&&const DeepCollectionEquality().equals(other._prices, _prices)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other._uom, _uom)&&const DeepCollectionEquality().equals(other._packSize, _packSize)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.totalProductImported, totalProductImported) || other.totalProductImported == totalProductImported)&&(identical(other.totalPriceImported, totalPriceImported) || other.totalPriceImported == totalPriceImported)&&const DeepCollectionEquality().equals(other._searchHistory, _searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery)&&(identical(other.isSearchProductHistoryCleared, isSearchProductHistoryCleared) || other.isSearchProductHistoryCleared == isSearchProductHistoryCleared)&&(identical(other.totalSearchProductHistoryCleared, totalSearchProductHistoryCleared) || other.totalSearchProductHistoryCleared == totalSearchProductHistoryCleared)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isProductImported,isPriceImported,const DeepCollectionEquality().hash(_settings),const DeepCollectionEquality().hash(_products),const DeepCollectionEquality().hash(_prices),price,const DeepCollectionEquality().hash(_uom),const DeepCollectionEquality().hash(_packSize),quantity,totalProductImported,totalPriceImported,const DeepCollectionEquality().hash(_searchHistory),searchQuery,lastSearchQuery,isSearchProductHistoryCleared,totalSearchProductHistoryCleared,errorMsg);

@override
String toString() {
  return 'ProductState(isLoading: $isLoading, isProductImported: $isProductImported, isPriceImported: $isPriceImported, settings: $settings, products: $products, prices: $prices, price: $price, uom: $uom, packSize: $packSize, quantity: $quantity, totalProductImported: $totalProductImported, totalPriceImported: $totalPriceImported, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery, isSearchProductHistoryCleared: $isSearchProductHistoryCleared, totalSearchProductHistoryCleared: $totalSearchProductHistoryCleared, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isProductImported, bool isPriceImported, Map<String, String> settings, List<ProductEntityData> products, List<ProductPriceEntityData> prices, ProductPriceEntityData? price, List<String> uom, List<String> packSize, int quantity, int totalProductImported, int totalPriceImported, List<String> searchHistory, String searchQuery, String lastSearchQuery, bool isSearchProductHistoryCleared, int? totalSearchProductHistoryCleared, String? errorMsg
});




}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isProductImported = null,Object? isPriceImported = null,Object? settings = null,Object? products = null,Object? prices = null,Object? price = freezed,Object? uom = null,Object? packSize = null,Object? quantity = null,Object? totalProductImported = null,Object? totalPriceImported = null,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,Object? isSearchProductHistoryCleared = null,Object? totalSearchProductHistoryCleared = freezed,Object? errorMsg = freezed,}) {
  return _then(_ProductState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isProductImported: null == isProductImported ? _self.isProductImported : isProductImported // ignore: cast_nullable_to_non_nullable
as bool,isPriceImported: null == isPriceImported ? _self.isPriceImported : isPriceImported // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntityData>,prices: null == prices ? _self._prices : prices // ignore: cast_nullable_to_non_nullable
as List<ProductPriceEntityData>,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as ProductPriceEntityData?,uom: null == uom ? _self._uom : uom // ignore: cast_nullable_to_non_nullable
as List<String>,packSize: null == packSize ? _self._packSize : packSize // ignore: cast_nullable_to_non_nullable
as List<String>,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,totalProductImported: null == totalProductImported ? _self.totalProductImported : totalProductImported // ignore: cast_nullable_to_non_nullable
as int,totalPriceImported: null == totalPriceImported ? _self.totalPriceImported : totalPriceImported // ignore: cast_nullable_to_non_nullable
as int,searchHistory: null == searchHistory ? _self._searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchProductHistoryCleared: null == isSearchProductHistoryCleared ? _self.isSearchProductHistoryCleared : isSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchProductHistoryCleared: freezed == totalSearchProductHistoryCleared ? _self.totalSearchProductHistoryCleared : totalSearchProductHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
