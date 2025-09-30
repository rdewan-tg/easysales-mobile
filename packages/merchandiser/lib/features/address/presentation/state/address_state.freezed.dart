// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddressState {

 bool get isLoading; bool get isAddressImported; List<CustomerAddressEntityData> get addresses; int get totalAddressCount; String? get errorMsg;
/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressStateCopyWith<AddressState> get copyWith => _$AddressStateCopyWithImpl<AddressState>(this as AddressState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAddressImported, isAddressImported) || other.isAddressImported == isAddressImported)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.totalAddressCount, totalAddressCount) || other.totalAddressCount == totalAddressCount)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAddressImported,const DeepCollectionEquality().hash(addresses),totalAddressCount,errorMsg);

@override
String toString() {
  return 'AddressState(isLoading: $isLoading, isAddressImported: $isAddressImported, addresses: $addresses, totalAddressCount: $totalAddressCount, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $AddressStateCopyWith<$Res>  {
  factory $AddressStateCopyWith(AddressState value, $Res Function(AddressState) _then) = _$AddressStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isAddressImported, List<CustomerAddressEntityData> addresses, int totalAddressCount, String? errorMsg
});




}
/// @nodoc
class _$AddressStateCopyWithImpl<$Res>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._self, this._then);

  final AddressState _self;
  final $Res Function(AddressState) _then;

/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isAddressImported = null,Object? addresses = null,Object? totalAddressCount = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAddressImported: null == isAddressImported ? _self.isAddressImported : isAddressImported // ignore: cast_nullable_to_non_nullable
as bool,addresses: null == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<CustomerAddressEntityData>,totalAddressCount: null == totalAddressCount ? _self.totalAddressCount : totalAddressCount // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressState].
extension AddressStatePatterns on AddressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressState value)  $default,){
final _that = this;
switch (_that) {
case _AddressState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressState value)?  $default,){
final _that = this;
switch (_that) {
case _AddressState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isAddressImported,  List<CustomerAddressEntityData> addresses,  int totalAddressCount,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressState() when $default != null:
return $default(_that.isLoading,_that.isAddressImported,_that.addresses,_that.totalAddressCount,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isAddressImported,  List<CustomerAddressEntityData> addresses,  int totalAddressCount,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _AddressState():
return $default(_that.isLoading,_that.isAddressImported,_that.addresses,_that.totalAddressCount,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isAddressImported,  List<CustomerAddressEntityData> addresses,  int totalAddressCount,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _AddressState() when $default != null:
return $default(_that.isLoading,_that.isAddressImported,_that.addresses,_that.totalAddressCount,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _AddressState implements AddressState {
   _AddressState({this.isLoading = false, this.isAddressImported = false, final  List<CustomerAddressEntityData> addresses = const [], this.totalAddressCount = 0, this.errorMsg}): _addresses = addresses;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isAddressImported;
 final  List<CustomerAddressEntityData> _addresses;
@override@JsonKey() List<CustomerAddressEntityData> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

@override@JsonKey() final  int totalAddressCount;
@override final  String? errorMsg;

/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressStateCopyWith<_AddressState> get copyWith => __$AddressStateCopyWithImpl<_AddressState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isAddressImported, isAddressImported) || other.isAddressImported == isAddressImported)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.totalAddressCount, totalAddressCount) || other.totalAddressCount == totalAddressCount)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isAddressImported,const DeepCollectionEquality().hash(_addresses),totalAddressCount,errorMsg);

@override
String toString() {
  return 'AddressState(isLoading: $isLoading, isAddressImported: $isAddressImported, addresses: $addresses, totalAddressCount: $totalAddressCount, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$AddressStateCopyWith<$Res> implements $AddressStateCopyWith<$Res> {
  factory _$AddressStateCopyWith(_AddressState value, $Res Function(_AddressState) _then) = __$AddressStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isAddressImported, List<CustomerAddressEntityData> addresses, int totalAddressCount, String? errorMsg
});




}
/// @nodoc
class __$AddressStateCopyWithImpl<$Res>
    implements _$AddressStateCopyWith<$Res> {
  __$AddressStateCopyWithImpl(this._self, this._then);

  final _AddressState _self;
  final $Res Function(_AddressState) _then;

/// Create a copy of AddressState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isAddressImported = null,Object? addresses = null,Object? totalAddressCount = null,Object? errorMsg = freezed,}) {
  return _then(_AddressState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isAddressImported: null == isAddressImported ? _self.isAddressImported : isAddressImported // ignore: cast_nullable_to_non_nullable
as bool,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<CustomerAddressEntityData>,totalAddressCount: null == totalAddressCount ? _self.totalAddressCount : totalAddressCount // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
