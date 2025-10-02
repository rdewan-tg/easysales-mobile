// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_me_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteMeResponse {

 String get status; dynamic get data;
/// Create a copy of DeleteMeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteMeResponseCopyWith<DeleteMeResponse> get copyWith => _$DeleteMeResponseCopyWithImpl<DeleteMeResponse>(this as DeleteMeResponse, _$identity);

  /// Serializes this DeleteMeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteMeResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DeleteMeResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $DeleteMeResponseCopyWith<$Res>  {
  factory $DeleteMeResponseCopyWith(DeleteMeResponse value, $Res Function(DeleteMeResponse) _then) = _$DeleteMeResponseCopyWithImpl;
@useResult
$Res call({
 String status, dynamic data
});




}
/// @nodoc
class _$DeleteMeResponseCopyWithImpl<$Res>
    implements $DeleteMeResponseCopyWith<$Res> {
  _$DeleteMeResponseCopyWithImpl(this._self, this._then);

  final DeleteMeResponse _self;
  final $Res Function(DeleteMeResponse) _then;

/// Create a copy of DeleteMeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteMeResponse].
extension DeleteMeResponsePatterns on DeleteMeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteMeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteMeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteMeResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteMeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteMeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteMeResponse() when $default != null:
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
case _DeleteMeResponse() when $default != null:
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
case _DeleteMeResponse():
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
case _DeleteMeResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteMeResponse implements DeleteMeResponse {
  const _DeleteMeResponse({required this.status, required this.data});
  factory _DeleteMeResponse.fromJson(Map<String, dynamic> json) => _$DeleteMeResponseFromJson(json);

@override final  String status;
@override final  dynamic data;

/// Create a copy of DeleteMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMeResponseCopyWith<_DeleteMeResponse> get copyWith => __$DeleteMeResponseCopyWithImpl<_DeleteMeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteMeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMeResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DeleteMeResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DeleteMeResponseCopyWith<$Res> implements $DeleteMeResponseCopyWith<$Res> {
  factory _$DeleteMeResponseCopyWith(_DeleteMeResponse value, $Res Function(_DeleteMeResponse) _then) = __$DeleteMeResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, dynamic data
});




}
/// @nodoc
class __$DeleteMeResponseCopyWithImpl<$Res>
    implements _$DeleteMeResponseCopyWith<$Res> {
  __$DeleteMeResponseCopyWithImpl(this._self, this._then);

  final _DeleteMeResponse _self;
  final $Res Function(_DeleteMeResponse) _then;

/// Create a copy of DeleteMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_DeleteMeResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
