// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_header_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesHeaderState {

 bool get isLoading; bool get isFetchingCurrentOrderNumber; bool get isOrderSynced; int get currentOrderNumber; List<SalesHeaderEntityData> get salesHeaders; CustomerAddressEntityData? get customerAddressData; SalesCustomerEntityData? get customerData; SalesHeaderEntityData? get salesHeaderData; Map<String, String>? get settings; String? get errorMsg;
/// Create a copy of SalesHeaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesHeaderStateCopyWith<SalesHeaderState> get copyWith => _$SalesHeaderStateCopyWithImpl<SalesHeaderState>(this as SalesHeaderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesHeaderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingCurrentOrderNumber, isFetchingCurrentOrderNumber) || other.isFetchingCurrentOrderNumber == isFetchingCurrentOrderNumber)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.currentOrderNumber, currentOrderNumber) || other.currentOrderNumber == currentOrderNumber)&&const DeepCollectionEquality().equals(other.salesHeaders, salesHeaders)&&(identical(other.customerAddressData, customerAddressData) || other.customerAddressData == customerAddressData)&&(identical(other.customerData, customerData) || other.customerData == customerData)&&(identical(other.salesHeaderData, salesHeaderData) || other.salesHeaderData == salesHeaderData)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingCurrentOrderNumber,isOrderSynced,currentOrderNumber,const DeepCollectionEquality().hash(salesHeaders),customerAddressData,customerData,salesHeaderData,const DeepCollectionEquality().hash(settings),errorMsg);

@override
String toString() {
  return 'SalesHeaderState(isLoading: $isLoading, isFetchingCurrentOrderNumber: $isFetchingCurrentOrderNumber, isOrderSynced: $isOrderSynced, currentOrderNumber: $currentOrderNumber, salesHeaders: $salesHeaders, customerAddressData: $customerAddressData, customerData: $customerData, salesHeaderData: $salesHeaderData, settings: $settings, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $SalesHeaderStateCopyWith<$Res>  {
  factory $SalesHeaderStateCopyWith(SalesHeaderState value, $Res Function(SalesHeaderState) _then) = _$SalesHeaderStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isFetchingCurrentOrderNumber, bool isOrderSynced, int currentOrderNumber, List<SalesHeaderEntityData> salesHeaders, CustomerAddressEntityData? customerAddressData, SalesCustomerEntityData? customerData, SalesHeaderEntityData? salesHeaderData, Map<String, String>? settings, String? errorMsg
});




}
/// @nodoc
class _$SalesHeaderStateCopyWithImpl<$Res>
    implements $SalesHeaderStateCopyWith<$Res> {
  _$SalesHeaderStateCopyWithImpl(this._self, this._then);

  final SalesHeaderState _self;
  final $Res Function(SalesHeaderState) _then;

/// Create a copy of SalesHeaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isFetchingCurrentOrderNumber = null,Object? isOrderSynced = null,Object? currentOrderNumber = null,Object? salesHeaders = null,Object? customerAddressData = freezed,Object? customerData = freezed,Object? salesHeaderData = freezed,Object? settings = freezed,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingCurrentOrderNumber: null == isFetchingCurrentOrderNumber ? _self.isFetchingCurrentOrderNumber : isFetchingCurrentOrderNumber // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,currentOrderNumber: null == currentOrderNumber ? _self.currentOrderNumber : currentOrderNumber // ignore: cast_nullable_to_non_nullable
as int,salesHeaders: null == salesHeaders ? _self.salesHeaders : salesHeaders // ignore: cast_nullable_to_non_nullable
as List<SalesHeaderEntityData>,customerAddressData: freezed == customerAddressData ? _self.customerAddressData : customerAddressData // ignore: cast_nullable_to_non_nullable
as CustomerAddressEntityData?,customerData: freezed == customerData ? _self.customerData : customerData // ignore: cast_nullable_to_non_nullable
as SalesCustomerEntityData?,salesHeaderData: freezed == salesHeaderData ? _self.salesHeaderData : salesHeaderData // ignore: cast_nullable_to_non_nullable
as SalesHeaderEntityData?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesHeaderState].
extension SalesHeaderStatePatterns on SalesHeaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesHeaderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesHeaderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesHeaderState value)  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesHeaderState value)?  $default,){
final _that = this;
switch (_that) {
case _SalesHeaderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingCurrentOrderNumber,  bool isOrderSynced,  int currentOrderNumber,  List<SalesHeaderEntityData> salesHeaders,  CustomerAddressEntityData? customerAddressData,  SalesCustomerEntityData? customerData,  SalesHeaderEntityData? salesHeaderData,  Map<String, String>? settings,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesHeaderState() when $default != null:
return $default(_that.isLoading,_that.isFetchingCurrentOrderNumber,_that.isOrderSynced,_that.currentOrderNumber,_that.salesHeaders,_that.customerAddressData,_that.customerData,_that.salesHeaderData,_that.settings,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isFetchingCurrentOrderNumber,  bool isOrderSynced,  int currentOrderNumber,  List<SalesHeaderEntityData> salesHeaders,  CustomerAddressEntityData? customerAddressData,  SalesCustomerEntityData? customerData,  SalesHeaderEntityData? salesHeaderData,  Map<String, String>? settings,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderState():
return $default(_that.isLoading,_that.isFetchingCurrentOrderNumber,_that.isOrderSynced,_that.currentOrderNumber,_that.salesHeaders,_that.customerAddressData,_that.customerData,_that.salesHeaderData,_that.settings,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isFetchingCurrentOrderNumber,  bool isOrderSynced,  int currentOrderNumber,  List<SalesHeaderEntityData> salesHeaders,  CustomerAddressEntityData? customerAddressData,  SalesCustomerEntityData? customerData,  SalesHeaderEntityData? salesHeaderData,  Map<String, String>? settings,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _SalesHeaderState() when $default != null:
return $default(_that.isLoading,_that.isFetchingCurrentOrderNumber,_that.isOrderSynced,_that.currentOrderNumber,_that.salesHeaders,_that.customerAddressData,_that.customerData,_that.salesHeaderData,_that.settings,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _SalesHeaderState implements SalesHeaderState {
   _SalesHeaderState({this.isLoading = false, this.isFetchingCurrentOrderNumber = false, this.isOrderSynced = false, this.currentOrderNumber = 0, final  List<SalesHeaderEntityData> salesHeaders = const [], this.customerAddressData, this.customerData, this.salesHeaderData, final  Map<String, String>? settings, this.errorMsg}): _salesHeaders = salesHeaders,_settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFetchingCurrentOrderNumber;
@override@JsonKey() final  bool isOrderSynced;
@override@JsonKey() final  int currentOrderNumber;
 final  List<SalesHeaderEntityData> _salesHeaders;
@override@JsonKey() List<SalesHeaderEntityData> get salesHeaders {
  if (_salesHeaders is EqualUnmodifiableListView) return _salesHeaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesHeaders);
}

@override final  CustomerAddressEntityData? customerAddressData;
@override final  SalesCustomerEntityData? customerData;
@override final  SalesHeaderEntityData? salesHeaderData;
 final  Map<String, String>? _settings;
@override Map<String, String>? get settings {
  final value = _settings;
  if (value == null) return null;
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? errorMsg;

/// Create a copy of SalesHeaderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesHeaderStateCopyWith<_SalesHeaderState> get copyWith => __$SalesHeaderStateCopyWithImpl<_SalesHeaderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesHeaderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingCurrentOrderNumber, isFetchingCurrentOrderNumber) || other.isFetchingCurrentOrderNumber == isFetchingCurrentOrderNumber)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.currentOrderNumber, currentOrderNumber) || other.currentOrderNumber == currentOrderNumber)&&const DeepCollectionEquality().equals(other._salesHeaders, _salesHeaders)&&(identical(other.customerAddressData, customerAddressData) || other.customerAddressData == customerAddressData)&&(identical(other.customerData, customerData) || other.customerData == customerData)&&(identical(other.salesHeaderData, salesHeaderData) || other.salesHeaderData == salesHeaderData)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFetchingCurrentOrderNumber,isOrderSynced,currentOrderNumber,const DeepCollectionEquality().hash(_salesHeaders),customerAddressData,customerData,salesHeaderData,const DeepCollectionEquality().hash(_settings),errorMsg);

@override
String toString() {
  return 'SalesHeaderState(isLoading: $isLoading, isFetchingCurrentOrderNumber: $isFetchingCurrentOrderNumber, isOrderSynced: $isOrderSynced, currentOrderNumber: $currentOrderNumber, salesHeaders: $salesHeaders, customerAddressData: $customerAddressData, customerData: $customerData, salesHeaderData: $salesHeaderData, settings: $settings, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$SalesHeaderStateCopyWith<$Res> implements $SalesHeaderStateCopyWith<$Res> {
  factory _$SalesHeaderStateCopyWith(_SalesHeaderState value, $Res Function(_SalesHeaderState) _then) = __$SalesHeaderStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isFetchingCurrentOrderNumber, bool isOrderSynced, int currentOrderNumber, List<SalesHeaderEntityData> salesHeaders, CustomerAddressEntityData? customerAddressData, SalesCustomerEntityData? customerData, SalesHeaderEntityData? salesHeaderData, Map<String, String>? settings, String? errorMsg
});




}
/// @nodoc
class __$SalesHeaderStateCopyWithImpl<$Res>
    implements _$SalesHeaderStateCopyWith<$Res> {
  __$SalesHeaderStateCopyWithImpl(this._self, this._then);

  final _SalesHeaderState _self;
  final $Res Function(_SalesHeaderState) _then;

/// Create a copy of SalesHeaderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isFetchingCurrentOrderNumber = null,Object? isOrderSynced = null,Object? currentOrderNumber = null,Object? salesHeaders = null,Object? customerAddressData = freezed,Object? customerData = freezed,Object? salesHeaderData = freezed,Object? settings = freezed,Object? errorMsg = freezed,}) {
  return _then(_SalesHeaderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingCurrentOrderNumber: null == isFetchingCurrentOrderNumber ? _self.isFetchingCurrentOrderNumber : isFetchingCurrentOrderNumber // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,currentOrderNumber: null == currentOrderNumber ? _self.currentOrderNumber : currentOrderNumber // ignore: cast_nullable_to_non_nullable
as int,salesHeaders: null == salesHeaders ? _self._salesHeaders : salesHeaders // ignore: cast_nullable_to_non_nullable
as List<SalesHeaderEntityData>,customerAddressData: freezed == customerAddressData ? _self.customerAddressData : customerAddressData // ignore: cast_nullable_to_non_nullable
as CustomerAddressEntityData?,customerData: freezed == customerData ? _self.customerData : customerData // ignore: cast_nullable_to_non_nullable
as SalesCustomerEntityData?,salesHeaderData: freezed == salesHeaderData ? _self.salesHeaderData : salesHeaderData // ignore: cast_nullable_to_non_nullable
as SalesHeaderEntityData?,settings: freezed == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
