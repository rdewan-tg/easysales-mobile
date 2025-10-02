// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteOrderResponse {

 String get status; dynamic get data;
/// Create a copy of DeleteOrderResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteOrderResponseCopyWith<DeleteOrderResponse> get copyWith => _$DeleteOrderResponseCopyWithImpl<DeleteOrderResponse>(this as DeleteOrderResponse, _$identity);

  /// Serializes this DeleteOrderResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteOrderResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DeleteOrderResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $DeleteOrderResponseCopyWith<$Res>  {
  factory $DeleteOrderResponseCopyWith(DeleteOrderResponse value, $Res Function(DeleteOrderResponse) _then) = _$DeleteOrderResponseCopyWithImpl;
@useResult
$Res call({
 String status, dynamic data
});




}
/// @nodoc
class _$DeleteOrderResponseCopyWithImpl<$Res>
    implements $DeleteOrderResponseCopyWith<$Res> {
  _$DeleteOrderResponseCopyWithImpl(this._self, this._then);

  final DeleteOrderResponse _self;
  final $Res Function(DeleteOrderResponse) _then;

/// Create a copy of DeleteOrderResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteOrderResponse].
extension DeleteOrderResponsePatterns on DeleteOrderResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteOrderResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteOrderResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteOrderResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteOrderResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteOrderResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteOrderResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  dynamic data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteOrderResponse() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  dynamic data)  $default,) {final _that = this;
switch (_that) {
case _DeleteOrderResponse():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  dynamic data)?  $default,) {final _that = this;
switch (_that) {
case _DeleteOrderResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteOrderResponse implements DeleteOrderResponse {
  const _DeleteOrderResponse({required this.status, this.data});
  factory _DeleteOrderResponse.fromJson(Map<String, dynamic> json) => _$DeleteOrderResponseFromJson(json);

@override final  String status;
@override final  dynamic data;

/// Create a copy of DeleteOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteOrderResponseCopyWith<_DeleteOrderResponse> get copyWith => __$DeleteOrderResponseCopyWithImpl<_DeleteOrderResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteOrderResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteOrderResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DeleteOrderResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DeleteOrderResponseCopyWith<$Res> implements $DeleteOrderResponseCopyWith<$Res> {
  factory _$DeleteOrderResponseCopyWith(_DeleteOrderResponse value, $Res Function(_DeleteOrderResponse) _then) = __$DeleteOrderResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, dynamic data
});




}
/// @nodoc
class __$DeleteOrderResponseCopyWithImpl<$Res>
    implements _$DeleteOrderResponseCopyWith<$Res> {
  __$DeleteOrderResponseCopyWithImpl(this._self, this._then);

  final _DeleteOrderResponse _self;
  final $Res Function(_DeleteOrderResponse) _then;

/// Create a copy of DeleteOrderResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_DeleteOrderResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
