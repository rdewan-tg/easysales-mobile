// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandiser_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MerchandiserCustomerState {

 bool get isLoading; bool get isCustomerImported; bool get isSearchHistoryCleared; int? get totalSearchHistoryCleared; int get totalCustomerCount; List<MerchandiserCustomerEntityData> get customers; List<MerchandiserCustomerAddress> get addresses; String? get errorMsg; List<String> get searchHistory; String get searchQuery; String get lastSearchQuery; Map<String, String> get settings;
/// Create a copy of MerchandiserCustomerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchandiserCustomerStateCopyWith<MerchandiserCustomerState> get copyWith => _$MerchandiserCustomerStateCopyWithImpl<MerchandiserCustomerState>(this as MerchandiserCustomerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchandiserCustomerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCustomerImported, isCustomerImported) || other.isCustomerImported == isCustomerImported)&&(identical(other.isSearchHistoryCleared, isSearchHistoryCleared) || other.isSearchHistoryCleared == isSearchHistoryCleared)&&(identical(other.totalSearchHistoryCleared, totalSearchHistoryCleared) || other.totalSearchHistoryCleared == totalSearchHistoryCleared)&&(identical(other.totalCustomerCount, totalCustomerCount) || other.totalCustomerCount == totalCustomerCount)&&const DeepCollectionEquality().equals(other.customers, customers)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg)&&const DeepCollectionEquality().equals(other.searchHistory, searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery)&&const DeepCollectionEquality().equals(other.settings, settings));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCustomerImported,isSearchHistoryCleared,totalSearchHistoryCleared,totalCustomerCount,const DeepCollectionEquality().hash(customers),const DeepCollectionEquality().hash(addresses),errorMsg,const DeepCollectionEquality().hash(searchHistory),searchQuery,lastSearchQuery,const DeepCollectionEquality().hash(settings));

@override
String toString() {
  return 'MerchandiserCustomerState(isLoading: $isLoading, isCustomerImported: $isCustomerImported, isSearchHistoryCleared: $isSearchHistoryCleared, totalSearchHistoryCleared: $totalSearchHistoryCleared, totalCustomerCount: $totalCustomerCount, customers: $customers, addresses: $addresses, errorMsg: $errorMsg, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $MerchandiserCustomerStateCopyWith<$Res>  {
  factory $MerchandiserCustomerStateCopyWith(MerchandiserCustomerState value, $Res Function(MerchandiserCustomerState) _then) = _$MerchandiserCustomerStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCustomerImported, bool isSearchHistoryCleared, int? totalSearchHistoryCleared, int totalCustomerCount, List<MerchandiserCustomerEntityData> customers, List<MerchandiserCustomerAddress> addresses, String? errorMsg, List<String> searchHistory, String searchQuery, String lastSearchQuery, Map<String, String> settings
});




}
/// @nodoc
class _$MerchandiserCustomerStateCopyWithImpl<$Res>
    implements $MerchandiserCustomerStateCopyWith<$Res> {
  _$MerchandiserCustomerStateCopyWithImpl(this._self, this._then);

  final MerchandiserCustomerState _self;
  final $Res Function(MerchandiserCustomerState) _then;

/// Create a copy of MerchandiserCustomerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCustomerImported = null,Object? isSearchHistoryCleared = null,Object? totalSearchHistoryCleared = freezed,Object? totalCustomerCount = null,Object? customers = null,Object? addresses = null,Object? errorMsg = freezed,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,Object? settings = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCustomerImported: null == isCustomerImported ? _self.isCustomerImported : isCustomerImported // ignore: cast_nullable_to_non_nullable
as bool,isSearchHistoryCleared: null == isSearchHistoryCleared ? _self.isSearchHistoryCleared : isSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchHistoryCleared: freezed == totalSearchHistoryCleared ? _self.totalSearchHistoryCleared : totalSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,totalCustomerCount: null == totalCustomerCount ? _self.totalCustomerCount : totalCustomerCount // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as List<MerchandiserCustomerEntityData>,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<MerchandiserCustomerAddress>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self.searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchandiserCustomerState].
extension MerchandiserCustomerStatePatterns on MerchandiserCustomerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchandiserCustomerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchandiserCustomerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchandiserCustomerState value)  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchandiserCustomerState value)?  $default,){
final _that = this;
switch (_that) {
case _MerchandiserCustomerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<MerchandiserCustomerEntityData> customers,  List<MerchandiserCustomerAddress> addresses,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  Map<String, String> settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchandiserCustomerState() when $default != null:
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.addresses,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<MerchandiserCustomerEntityData> customers,  List<MerchandiserCustomerAddress> addresses,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  Map<String, String> settings)  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomerState():
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.addresses,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<MerchandiserCustomerEntityData> customers,  List<MerchandiserCustomerAddress> addresses,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery,  Map<String, String> settings)?  $default,) {final _that = this;
switch (_that) {
case _MerchandiserCustomerState() when $default != null:
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.addresses,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery,_that.settings);case _:
  return null;

}
}

}

/// @nodoc


class _MerchandiserCustomerState implements MerchandiserCustomerState {
   _MerchandiserCustomerState({this.isLoading = false, this.isCustomerImported = false, this.isSearchHistoryCleared = false, this.totalSearchHistoryCleared, this.totalCustomerCount = 0, final  List<MerchandiserCustomerEntityData> customers = const [], final  List<MerchandiserCustomerAddress> addresses = const [], this.errorMsg, final  List<String> searchHistory = const [], this.searchQuery = '', this.lastSearchQuery = '', final  Map<String, String> settings = const {}}): _customers = customers,_addresses = addresses,_searchHistory = searchHistory,_settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCustomerImported;
@override@JsonKey() final  bool isSearchHistoryCleared;
@override final  int? totalSearchHistoryCleared;
@override@JsonKey() final  int totalCustomerCount;
 final  List<MerchandiserCustomerEntityData> _customers;
@override@JsonKey() List<MerchandiserCustomerEntityData> get customers {
  if (_customers is EqualUnmodifiableListView) return _customers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customers);
}

 final  List<MerchandiserCustomerAddress> _addresses;
@override@JsonKey() List<MerchandiserCustomerAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override final  String? errorMsg;
 final  List<String> _searchHistory;
@override@JsonKey() List<String> get searchHistory {
  if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchHistory);
}

@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  String lastSearchQuery;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}


/// Create a copy of MerchandiserCustomerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchandiserCustomerStateCopyWith<_MerchandiserCustomerState> get copyWith => __$MerchandiserCustomerStateCopyWithImpl<_MerchandiserCustomerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchandiserCustomerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCustomerImported, isCustomerImported) || other.isCustomerImported == isCustomerImported)&&(identical(other.isSearchHistoryCleared, isSearchHistoryCleared) || other.isSearchHistoryCleared == isSearchHistoryCleared)&&(identical(other.totalSearchHistoryCleared, totalSearchHistoryCleared) || other.totalSearchHistoryCleared == totalSearchHistoryCleared)&&(identical(other.totalCustomerCount, totalCustomerCount) || other.totalCustomerCount == totalCustomerCount)&&const DeepCollectionEquality().equals(other._customers, _customers)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg)&&const DeepCollectionEquality().equals(other._searchHistory, _searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery)&&const DeepCollectionEquality().equals(other._settings, _settings));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCustomerImported,isSearchHistoryCleared,totalSearchHistoryCleared,totalCustomerCount,const DeepCollectionEquality().hash(_customers),const DeepCollectionEquality().hash(_addresses),errorMsg,const DeepCollectionEquality().hash(_searchHistory),searchQuery,lastSearchQuery,const DeepCollectionEquality().hash(_settings));

@override
String toString() {
  return 'MerchandiserCustomerState(isLoading: $isLoading, isCustomerImported: $isCustomerImported, isSearchHistoryCleared: $isSearchHistoryCleared, totalSearchHistoryCleared: $totalSearchHistoryCleared, totalCustomerCount: $totalCustomerCount, customers: $customers, addresses: $addresses, errorMsg: $errorMsg, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$MerchandiserCustomerStateCopyWith<$Res> implements $MerchandiserCustomerStateCopyWith<$Res> {
  factory _$MerchandiserCustomerStateCopyWith(_MerchandiserCustomerState value, $Res Function(_MerchandiserCustomerState) _then) = __$MerchandiserCustomerStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCustomerImported, bool isSearchHistoryCleared, int? totalSearchHistoryCleared, int totalCustomerCount, List<MerchandiserCustomerEntityData> customers, List<MerchandiserCustomerAddress> addresses, String? errorMsg, List<String> searchHistory, String searchQuery, String lastSearchQuery, Map<String, String> settings
});




}
/// @nodoc
class __$MerchandiserCustomerStateCopyWithImpl<$Res>
    implements _$MerchandiserCustomerStateCopyWith<$Res> {
  __$MerchandiserCustomerStateCopyWithImpl(this._self, this._then);

  final _MerchandiserCustomerState _self;
  final $Res Function(_MerchandiserCustomerState) _then;

/// Create a copy of MerchandiserCustomerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCustomerImported = null,Object? isSearchHistoryCleared = null,Object? totalSearchHistoryCleared = freezed,Object? totalCustomerCount = null,Object? customers = null,Object? addresses = null,Object? errorMsg = freezed,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,Object? settings = null,}) {
  return _then(_MerchandiserCustomerState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCustomerImported: null == isCustomerImported ? _self.isCustomerImported : isCustomerImported // ignore: cast_nullable_to_non_nullable
as bool,isSearchHistoryCleared: null == isSearchHistoryCleared ? _self.isSearchHistoryCleared : isSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchHistoryCleared: freezed == totalSearchHistoryCleared ? _self.totalSearchHistoryCleared : totalSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,totalCustomerCount: null == totalCustomerCount ? _self.totalCustomerCount : totalCustomerCount // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self._customers : customers // ignore: cast_nullable_to_non_nullable
as List<MerchandiserCustomerEntityData>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<MerchandiserCustomerAddress>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self._searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
