// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_sales_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastSalesIdResponse {

 String get status; int get data;
/// Create a copy of LastSalesIdResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastSalesIdResponseCopyWith<LastSalesIdResponse> get copyWith => _$LastSalesIdResponseCopyWithImpl<LastSalesIdResponse>(this as LastSalesIdResponse, _$identity);

  /// Serializes this LastSalesIdResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastSalesIdResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LastSalesIdResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $LastSalesIdResponseCopyWith<$Res>  {
  factory $LastSalesIdResponseCopyWith(LastSalesIdResponse value, $Res Function(LastSalesIdResponse) _then) = _$LastSalesIdResponseCopyWithImpl;
@useResult
$Res call({
 String status, int data
});




}
/// @nodoc
class _$LastSalesIdResponseCopyWithImpl<$Res>
    implements $LastSalesIdResponseCopyWith<$Res> {
  _$LastSalesIdResponseCopyWithImpl(this._self, this._then);

  final LastSalesIdResponse _self;
  final $Res Function(LastSalesIdResponse) _then;

/// Create a copy of LastSalesIdResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LastSalesIdResponse].
extension LastSalesIdResponsePatterns on LastSalesIdResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastSalesIdResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastSalesIdResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastSalesIdResponse value)  $default,){
final _that = this;
switch (_that) {
case _LastSalesIdResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastSalesIdResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LastSalesIdResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastSalesIdResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int data)  $default,) {final _that = this;
switch (_that) {
case _LastSalesIdResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int data)?  $default,) {final _that = this;
switch (_that) {
case _LastSalesIdResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastSalesIdResponse implements LastSalesIdResponse {
  const _LastSalesIdResponse({required this.status, required this.data});
  factory _LastSalesIdResponse.fromJson(Map<String, dynamic> json) => _$LastSalesIdResponseFromJson(json);

@override final  String status;
@override final  int data;

/// Create a copy of LastSalesIdResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastSalesIdResponseCopyWith<_LastSalesIdResponse> get copyWith => __$LastSalesIdResponseCopyWithImpl<_LastSalesIdResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastSalesIdResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastSalesIdResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LastSalesIdResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LastSalesIdResponseCopyWith<$Res> implements $LastSalesIdResponseCopyWith<$Res> {
  factory _$LastSalesIdResponseCopyWith(_LastSalesIdResponse value, $Res Function(_LastSalesIdResponse) _then) = __$LastSalesIdResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, int data
});




}
/// @nodoc
class __$LastSalesIdResponseCopyWithImpl<$Res>
    implements _$LastSalesIdResponseCopyWith<$Res> {
  __$LastSalesIdResponseCopyWithImpl(this._self, this._then);

  final _LastSalesIdResponse _self;
  final $Res Function(_LastSalesIdResponse) _then;

/// Create a copy of LastSalesIdResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_LastSalesIdResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
