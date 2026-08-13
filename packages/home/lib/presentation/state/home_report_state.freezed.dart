// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeReportState {

 bool get isLoadingTopSellingProducts; bool get isLoadingLast3MonthsSalesTotals; List<TopSellingProductsData> get topSellingProducts; bool get isLoadingTopCustomers; TopCustomersData? get topCustomers; List<Last3MonthsSalesTotalsData> get last3MonthsSalesTotals; String? get errorMsg;
/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeReportStateCopyWith<HomeReportState> get copyWith => _$HomeReportStateCopyWithImpl<HomeReportState>(this as HomeReportState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeReportState&&(identical(other.isLoadingTopSellingProducts, isLoadingTopSellingProducts) || other.isLoadingTopSellingProducts == isLoadingTopSellingProducts)&&(identical(other.isLoadingLast3MonthsSalesTotals, isLoadingLast3MonthsSalesTotals) || other.isLoadingLast3MonthsSalesTotals == isLoadingLast3MonthsSalesTotals)&&const DeepCollectionEquality().equals(other.topSellingProducts, topSellingProducts)&&(identical(other.isLoadingTopCustomers, isLoadingTopCustomers) || other.isLoadingTopCustomers == isLoadingTopCustomers)&&(identical(other.topCustomers, topCustomers) || other.topCustomers == topCustomers)&&const DeepCollectionEquality().equals(other.last3MonthsSalesTotals, last3MonthsSalesTotals)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingTopSellingProducts,isLoadingLast3MonthsSalesTotals,const DeepCollectionEquality().hash(topSellingProducts),isLoadingTopCustomers,topCustomers,const DeepCollectionEquality().hash(last3MonthsSalesTotals),errorMsg);

@override
String toString() {
  return 'HomeReportState(isLoadingTopSellingProducts: $isLoadingTopSellingProducts, isLoadingLast3MonthsSalesTotals: $isLoadingLast3MonthsSalesTotals, topSellingProducts: $topSellingProducts, isLoadingTopCustomers: $isLoadingTopCustomers, topCustomers: $topCustomers, last3MonthsSalesTotals: $last3MonthsSalesTotals, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $HomeReportStateCopyWith<$Res>  {
  factory $HomeReportStateCopyWith(HomeReportState value, $Res Function(HomeReportState) _then) = _$HomeReportStateCopyWithImpl;
@useResult
$Res call({
 bool isLoadingTopSellingProducts, bool isLoadingLast3MonthsSalesTotals, List<TopSellingProductsData> topSellingProducts, bool isLoadingTopCustomers, TopCustomersData? topCustomers, List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals, String? errorMsg
});


$TopCustomersDataCopyWith<$Res>? get topCustomers;

}
/// @nodoc
class _$HomeReportStateCopyWithImpl<$Res>
    implements $HomeReportStateCopyWith<$Res> {
  _$HomeReportStateCopyWithImpl(this._self, this._then);

  final HomeReportState _self;
  final $Res Function(HomeReportState) _then;

/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingTopSellingProducts = null,Object? isLoadingLast3MonthsSalesTotals = null,Object? topSellingProducts = null,Object? isLoadingTopCustomers = null,Object? topCustomers = freezed,Object? last3MonthsSalesTotals = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoadingTopSellingProducts: null == isLoadingTopSellingProducts ? _self.isLoadingTopSellingProducts : isLoadingTopSellingProducts // ignore: cast_nullable_to_non_nullable
as bool,isLoadingLast3MonthsSalesTotals: null == isLoadingLast3MonthsSalesTotals ? _self.isLoadingLast3MonthsSalesTotals : isLoadingLast3MonthsSalesTotals // ignore: cast_nullable_to_non_nullable
as bool,topSellingProducts: null == topSellingProducts ? _self.topSellingProducts : topSellingProducts // ignore: cast_nullable_to_non_nullable
as List<TopSellingProductsData>,isLoadingTopCustomers: null == isLoadingTopCustomers ? _self.isLoadingTopCustomers : isLoadingTopCustomers // ignore: cast_nullable_to_non_nullable
as bool,topCustomers: freezed == topCustomers ? _self.topCustomers : topCustomers // ignore: cast_nullable_to_non_nullable
as TopCustomersData?,last3MonthsSalesTotals: null == last3MonthsSalesTotals ? _self.last3MonthsSalesTotals : last3MonthsSalesTotals // ignore: cast_nullable_to_non_nullable
as List<Last3MonthsSalesTotalsData>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopCustomersDataCopyWith<$Res>? get topCustomers {
    if (_self.topCustomers == null) {
    return null;
  }

  return $TopCustomersDataCopyWith<$Res>(_self.topCustomers!, (value) {
    return _then(_self.copyWith(topCustomers: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeReportState].
extension HomeReportStatePatterns on HomeReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeReportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeReportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeReportState value)  $default,){
final _that = this;
switch (_that) {
case _HomeReportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeReportState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeReportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoadingTopSellingProducts,  bool isLoadingLast3MonthsSalesTotals,  List<TopSellingProductsData> topSellingProducts,  bool isLoadingTopCustomers,  TopCustomersData? topCustomers,  List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeReportState() when $default != null:
return $default(_that.isLoadingTopSellingProducts,_that.isLoadingLast3MonthsSalesTotals,_that.topSellingProducts,_that.isLoadingTopCustomers,_that.topCustomers,_that.last3MonthsSalesTotals,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoadingTopSellingProducts,  bool isLoadingLast3MonthsSalesTotals,  List<TopSellingProductsData> topSellingProducts,  bool isLoadingTopCustomers,  TopCustomersData? topCustomers,  List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _HomeReportState():
return $default(_that.isLoadingTopSellingProducts,_that.isLoadingLast3MonthsSalesTotals,_that.topSellingProducts,_that.isLoadingTopCustomers,_that.topCustomers,_that.last3MonthsSalesTotals,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoadingTopSellingProducts,  bool isLoadingLast3MonthsSalesTotals,  List<TopSellingProductsData> topSellingProducts,  bool isLoadingTopCustomers,  TopCustomersData? topCustomers,  List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _HomeReportState() when $default != null:
return $default(_that.isLoadingTopSellingProducts,_that.isLoadingLast3MonthsSalesTotals,_that.topSellingProducts,_that.isLoadingTopCustomers,_that.topCustomers,_that.last3MonthsSalesTotals,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _HomeReportState implements HomeReportState {
   _HomeReportState({this.isLoadingTopSellingProducts = false, this.isLoadingLast3MonthsSalesTotals = false, final  List<TopSellingProductsData> topSellingProducts = const [], this.isLoadingTopCustomers = false, this.topCustomers, final  List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals = const [], this.errorMsg}): _topSellingProducts = topSellingProducts,_last3MonthsSalesTotals = last3MonthsSalesTotals;
  

@override@JsonKey() final  bool isLoadingTopSellingProducts;
@override@JsonKey() final  bool isLoadingLast3MonthsSalesTotals;
 final  List<TopSellingProductsData> _topSellingProducts;
@override@JsonKey() List<TopSellingProductsData> get topSellingProducts {
  if (_topSellingProducts is EqualUnmodifiableListView) return _topSellingProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topSellingProducts);
}

@override@JsonKey() final  bool isLoadingTopCustomers;
@override final  TopCustomersData? topCustomers;
 final  List<Last3MonthsSalesTotalsData> _last3MonthsSalesTotals;
@override@JsonKey() List<Last3MonthsSalesTotalsData> get last3MonthsSalesTotals {
  if (_last3MonthsSalesTotals is EqualUnmodifiableListView) return _last3MonthsSalesTotals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_last3MonthsSalesTotals);
}

@override final  String? errorMsg;

/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeReportStateCopyWith<_HomeReportState> get copyWith => __$HomeReportStateCopyWithImpl<_HomeReportState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeReportState&&(identical(other.isLoadingTopSellingProducts, isLoadingTopSellingProducts) || other.isLoadingTopSellingProducts == isLoadingTopSellingProducts)&&(identical(other.isLoadingLast3MonthsSalesTotals, isLoadingLast3MonthsSalesTotals) || other.isLoadingLast3MonthsSalesTotals == isLoadingLast3MonthsSalesTotals)&&const DeepCollectionEquality().equals(other._topSellingProducts, _topSellingProducts)&&(identical(other.isLoadingTopCustomers, isLoadingTopCustomers) || other.isLoadingTopCustomers == isLoadingTopCustomers)&&(identical(other.topCustomers, topCustomers) || other.topCustomers == topCustomers)&&const DeepCollectionEquality().equals(other._last3MonthsSalesTotals, _last3MonthsSalesTotals)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoadingTopSellingProducts,isLoadingLast3MonthsSalesTotals,const DeepCollectionEquality().hash(_topSellingProducts),isLoadingTopCustomers,topCustomers,const DeepCollectionEquality().hash(_last3MonthsSalesTotals),errorMsg);

@override
String toString() {
  return 'HomeReportState(isLoadingTopSellingProducts: $isLoadingTopSellingProducts, isLoadingLast3MonthsSalesTotals: $isLoadingLast3MonthsSalesTotals, topSellingProducts: $topSellingProducts, isLoadingTopCustomers: $isLoadingTopCustomers, topCustomers: $topCustomers, last3MonthsSalesTotals: $last3MonthsSalesTotals, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$HomeReportStateCopyWith<$Res> implements $HomeReportStateCopyWith<$Res> {
  factory _$HomeReportStateCopyWith(_HomeReportState value, $Res Function(_HomeReportState) _then) = __$HomeReportStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoadingTopSellingProducts, bool isLoadingLast3MonthsSalesTotals, List<TopSellingProductsData> topSellingProducts, bool isLoadingTopCustomers, TopCustomersData? topCustomers, List<Last3MonthsSalesTotalsData> last3MonthsSalesTotals, String? errorMsg
});


@override $TopCustomersDataCopyWith<$Res>? get topCustomers;

}
/// @nodoc
class __$HomeReportStateCopyWithImpl<$Res>
    implements _$HomeReportStateCopyWith<$Res> {
  __$HomeReportStateCopyWithImpl(this._self, this._then);

  final _HomeReportState _self;
  final $Res Function(_HomeReportState) _then;

/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingTopSellingProducts = null,Object? isLoadingLast3MonthsSalesTotals = null,Object? topSellingProducts = null,Object? isLoadingTopCustomers = null,Object? topCustomers = freezed,Object? last3MonthsSalesTotals = null,Object? errorMsg = freezed,}) {
  return _then(_HomeReportState(
isLoadingTopSellingProducts: null == isLoadingTopSellingProducts ? _self.isLoadingTopSellingProducts : isLoadingTopSellingProducts // ignore: cast_nullable_to_non_nullable
as bool,isLoadingLast3MonthsSalesTotals: null == isLoadingLast3MonthsSalesTotals ? _self.isLoadingLast3MonthsSalesTotals : isLoadingLast3MonthsSalesTotals // ignore: cast_nullable_to_non_nullable
as bool,topSellingProducts: null == topSellingProducts ? _self._topSellingProducts : topSellingProducts // ignore: cast_nullable_to_non_nullable
as List<TopSellingProductsData>,isLoadingTopCustomers: null == isLoadingTopCustomers ? _self.isLoadingTopCustomers : isLoadingTopCustomers // ignore: cast_nullable_to_non_nullable
as bool,topCustomers: freezed == topCustomers ? _self.topCustomers : topCustomers // ignore: cast_nullable_to_non_nullable
as TopCustomersData?,last3MonthsSalesTotals: null == last3MonthsSalesTotals ? _self._last3MonthsSalesTotals : last3MonthsSalesTotals // ignore: cast_nullable_to_non_nullable
as List<Last3MonthsSalesTotalsData>,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopCustomersDataCopyWith<$Res>? get topCustomers {
    if (_self.topCustomers == null) {
    return null;
  }

  return $TopCustomersDataCopyWith<$Res>(_self.topCustomers!, (value) {
    return _then(_self.copyWith(topCustomers: value));
  });
}
}

// dart format on
