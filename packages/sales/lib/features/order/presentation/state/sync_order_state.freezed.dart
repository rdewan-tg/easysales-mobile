// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SyncOrderState {

 bool get isLoading; bool get isOrderSynced; String? get errorMsg;
/// Create a copy of SyncOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncOrderStateCopyWith<SyncOrderState> get copyWith => _$SyncOrderStateCopyWithImpl<SyncOrderState>(this as SyncOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncOrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOrderSynced,errorMsg);

@override
String toString() {
  return 'SyncOrderState(isLoading: $isLoading, isOrderSynced: $isOrderSynced, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $SyncOrderStateCopyWith<$Res>  {
  factory $SyncOrderStateCopyWith(SyncOrderState value, $Res Function(SyncOrderState) _then) = _$SyncOrderStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isOrderSynced, String? errorMsg
});




}
/// @nodoc
class _$SyncOrderStateCopyWithImpl<$Res>
    implements $SyncOrderStateCopyWith<$Res> {
  _$SyncOrderStateCopyWithImpl(this._self, this._then);

  final SyncOrderState _self;
  final $Res Function(SyncOrderState) _then;

/// Create a copy of SyncOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isOrderSynced = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncOrderState].
extension SyncOrderStatePatterns on SyncOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncOrderState value)  $default,){
final _that = this;
switch (_that) {
case _SyncOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _SyncOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isOrderSynced,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncOrderState() when $default != null:
return $default(_that.isLoading,_that.isOrderSynced,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isOrderSynced,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _SyncOrderState():
return $default(_that.isLoading,_that.isOrderSynced,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isOrderSynced,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _SyncOrderState() when $default != null:
return $default(_that.isLoading,_that.isOrderSynced,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _SyncOrderState implements SyncOrderState {
   _SyncOrderState({this.isLoading = false, this.isOrderSynced = false, this.errorMsg});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isOrderSynced;
@override final  String? errorMsg;

/// Create a copy of SyncOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncOrderStateCopyWith<_SyncOrderState> get copyWith => __$SyncOrderStateCopyWithImpl<_SyncOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncOrderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOrderSynced,errorMsg);

@override
String toString() {
  return 'SyncOrderState(isLoading: $isLoading, isOrderSynced: $isOrderSynced, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$SyncOrderStateCopyWith<$Res> implements $SyncOrderStateCopyWith<$Res> {
  factory _$SyncOrderStateCopyWith(_SyncOrderState value, $Res Function(_SyncOrderState) _then) = __$SyncOrderStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isOrderSynced, String? errorMsg
});




}
/// @nodoc
class __$SyncOrderStateCopyWithImpl<$Res>
    implements _$SyncOrderStateCopyWith<$Res> {
  __$SyncOrderStateCopyWithImpl(this._self, this._then);

  final _SyncOrderState _self;
  final $Res Function(_SyncOrderState) _then;

/// Create a copy of SyncOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isOrderSynced = null,Object? errorMsg = freezed,}) {
  return _then(_SyncOrderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
