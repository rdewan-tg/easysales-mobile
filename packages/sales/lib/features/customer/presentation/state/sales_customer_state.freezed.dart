// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesCustomerState {

 bool get isLoading; bool get isCustomerImported; bool get isSearchHistoryCleared; int? get totalSearchHistoryCleared; int get totalCustomerCount; List<SalesCustomerEntityData> get customers; String? get errorMsg; List<String> get searchHistory; String get searchQuery; String get lastSearchQuery;
/// Create a copy of SalesCustomerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesCustomerStateCopyWith<SalesCustomerState> get copyWith => _$SalesCustomerStateCopyWithImpl<SalesCustomerState>(this as SalesCustomerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesCustomerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCustomerImported, isCustomerImported) || other.isCustomerImported == isCustomerImported)&&(identical(other.isSearchHistoryCleared, isSearchHistoryCleared) || other.isSearchHistoryCleared == isSearchHistoryCleared)&&(identical(other.totalSearchHistoryCleared, totalSearchHistoryCleared) || other.totalSearchHistoryCleared == totalSearchHistoryCleared)&&(identical(other.totalCustomerCount, totalCustomerCount) || other.totalCustomerCount == totalCustomerCount)&&const DeepCollectionEquality().equals(other.customers, customers)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg)&&const DeepCollectionEquality().equals(other.searchHistory, searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCustomerImported,isSearchHistoryCleared,totalSearchHistoryCleared,totalCustomerCount,const DeepCollectionEquality().hash(customers),errorMsg,const DeepCollectionEquality().hash(searchHistory),searchQuery,lastSearchQuery);

@override
String toString() {
  return 'SalesCustomerState(isLoading: $isLoading, isCustomerImported: $isCustomerImported, isSearchHistoryCleared: $isSearchHistoryCleared, totalSearchHistoryCleared: $totalSearchHistoryCleared, totalCustomerCount: $totalCustomerCount, customers: $customers, errorMsg: $errorMsg, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery)';
}


}

/// @nodoc
abstract mixin class $SalesCustomerStateCopyWith<$Res>  {
  factory $SalesCustomerStateCopyWith(SalesCustomerState value, $Res Function(SalesCustomerState) _then) = _$SalesCustomerStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCustomerImported, bool isSearchHistoryCleared, int? totalSearchHistoryCleared, int totalCustomerCount, List<SalesCustomerEntityData> customers, String? errorMsg, List<String> searchHistory, String searchQuery, String lastSearchQuery
});




}
/// @nodoc
class _$SalesCustomerStateCopyWithImpl<$Res>
    implements $SalesCustomerStateCopyWith<$Res> {
  _$SalesCustomerStateCopyWithImpl(this._self, this._then);

  final SalesCustomerState _self;
  final $Res Function(SalesCustomerState) _then;

/// Create a copy of SalesCustomerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCustomerImported = null,Object? isSearchHistoryCleared = null,Object? totalSearchHistoryCleared = freezed,Object? totalCustomerCount = null,Object? customers = null,Object? errorMsg = freezed,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCustomerImported: null == isCustomerImported ? _self.isCustomerImported : isCustomerImported // ignore: cast_nullable_to_non_nullable
as bool,isSearchHistoryCleared: null == isSearchHistoryCleared ? _self.isSearchHistoryCleared : isSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchHistoryCleared: freezed == totalSearchHistoryCleared ? _self.totalSearchHistoryCleared : totalSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,totalCustomerCount: null == totalCustomerCount ? _self.totalCustomerCount : totalCustomerCount // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self.customers : customers // ignore: cast_nullable_to_non_nullable
as List<SalesCustomerEntityData>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self.searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesCustomerState].
extension SalesCustomerStatePatterns on SalesCustomerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesCustomerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesCustomerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesCustomerState value)  $default,){
final _that = this;
switch (_that) {
case _SalesCustomerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesCustomerState value)?  $default,){
final _that = this;
switch (_that) {
case _SalesCustomerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<SalesCustomerEntityData> customers,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesCustomerState() when $default != null:
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<SalesCustomerEntityData> customers,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery)  $default,) {final _that = this;
switch (_that) {
case _SalesCustomerState():
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCustomerImported,  bool isSearchHistoryCleared,  int? totalSearchHistoryCleared,  int totalCustomerCount,  List<SalesCustomerEntityData> customers,  String? errorMsg,  List<String> searchHistory,  String searchQuery,  String lastSearchQuery)?  $default,) {final _that = this;
switch (_that) {
case _SalesCustomerState() when $default != null:
return $default(_that.isLoading,_that.isCustomerImported,_that.isSearchHistoryCleared,_that.totalSearchHistoryCleared,_that.totalCustomerCount,_that.customers,_that.errorMsg,_that.searchHistory,_that.searchQuery,_that.lastSearchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _SalesCustomerState implements SalesCustomerState {
   _SalesCustomerState({this.isLoading = false, this.isCustomerImported = false, this.isSearchHistoryCleared = false, this.totalSearchHistoryCleared, this.totalCustomerCount = 0, final  List<SalesCustomerEntityData> customers = const [], this.errorMsg, final  List<String> searchHistory = const [], this.searchQuery = '', this.lastSearchQuery = ''}): _customers = customers,_searchHistory = searchHistory;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCustomerImported;
@override@JsonKey() final  bool isSearchHistoryCleared;
@override final  int? totalSearchHistoryCleared;
@override@JsonKey() final  int totalCustomerCount;
 final  List<SalesCustomerEntityData> _customers;
@override@JsonKey() List<SalesCustomerEntityData> get customers {
  if (_customers is EqualUnmodifiableListView) return _customers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customers);
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

/// Create a copy of SalesCustomerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesCustomerStateCopyWith<_SalesCustomerState> get copyWith => __$SalesCustomerStateCopyWithImpl<_SalesCustomerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesCustomerState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCustomerImported, isCustomerImported) || other.isCustomerImported == isCustomerImported)&&(identical(other.isSearchHistoryCleared, isSearchHistoryCleared) || other.isSearchHistoryCleared == isSearchHistoryCleared)&&(identical(other.totalSearchHistoryCleared, totalSearchHistoryCleared) || other.totalSearchHistoryCleared == totalSearchHistoryCleared)&&(identical(other.totalCustomerCount, totalCustomerCount) || other.totalCustomerCount == totalCustomerCount)&&const DeepCollectionEquality().equals(other._customers, _customers)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg)&&const DeepCollectionEquality().equals(other._searchHistory, _searchHistory)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.lastSearchQuery, lastSearchQuery) || other.lastSearchQuery == lastSearchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCustomerImported,isSearchHistoryCleared,totalSearchHistoryCleared,totalCustomerCount,const DeepCollectionEquality().hash(_customers),errorMsg,const DeepCollectionEquality().hash(_searchHistory),searchQuery,lastSearchQuery);

@override
String toString() {
  return 'SalesCustomerState(isLoading: $isLoading, isCustomerImported: $isCustomerImported, isSearchHistoryCleared: $isSearchHistoryCleared, totalSearchHistoryCleared: $totalSearchHistoryCleared, totalCustomerCount: $totalCustomerCount, customers: $customers, errorMsg: $errorMsg, searchHistory: $searchHistory, searchQuery: $searchQuery, lastSearchQuery: $lastSearchQuery)';
}


}

/// @nodoc
abstract mixin class _$SalesCustomerStateCopyWith<$Res> implements $SalesCustomerStateCopyWith<$Res> {
  factory _$SalesCustomerStateCopyWith(_SalesCustomerState value, $Res Function(_SalesCustomerState) _then) = __$SalesCustomerStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCustomerImported, bool isSearchHistoryCleared, int? totalSearchHistoryCleared, int totalCustomerCount, List<SalesCustomerEntityData> customers, String? errorMsg, List<String> searchHistory, String searchQuery, String lastSearchQuery
});




}
/// @nodoc
class __$SalesCustomerStateCopyWithImpl<$Res>
    implements _$SalesCustomerStateCopyWith<$Res> {
  __$SalesCustomerStateCopyWithImpl(this._self, this._then);

  final _SalesCustomerState _self;
  final $Res Function(_SalesCustomerState) _then;

/// Create a copy of SalesCustomerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCustomerImported = null,Object? isSearchHistoryCleared = null,Object? totalSearchHistoryCleared = freezed,Object? totalCustomerCount = null,Object? customers = null,Object? errorMsg = freezed,Object? searchHistory = null,Object? searchQuery = null,Object? lastSearchQuery = null,}) {
  return _then(_SalesCustomerState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCustomerImported: null == isCustomerImported ? _self.isCustomerImported : isCustomerImported // ignore: cast_nullable_to_non_nullable
as bool,isSearchHistoryCleared: null == isSearchHistoryCleared ? _self.isSearchHistoryCleared : isSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as bool,totalSearchHistoryCleared: freezed == totalSearchHistoryCleared ? _self.totalSearchHistoryCleared : totalSearchHistoryCleared // ignore: cast_nullable_to_non_nullable
as int?,totalCustomerCount: null == totalCustomerCount ? _self.totalCustomerCount : totalCustomerCount // ignore: cast_nullable_to_non_nullable
as int,customers: null == customers ? _self._customers : customers // ignore: cast_nullable_to_non_nullable
as List<SalesCustomerEntityData>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,searchHistory: null == searchHistory ? _self._searchHistory : searchHistory // ignore: cast_nullable_to_non_nullable
as List<String>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,lastSearchQuery: null == lastSearchQuery ? _self.lastSearchQuery : lastSearchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
