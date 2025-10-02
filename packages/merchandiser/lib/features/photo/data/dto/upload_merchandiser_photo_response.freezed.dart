// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_merchandiser_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadMerchandiserPhotoResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") String get data;
/// Create a copy of UploadMerchandiserPhotoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMerchandiserPhotoResponseCopyWith<UploadMerchandiserPhotoResponse> get copyWith => _$UploadMerchandiserPhotoResponseCopyWithImpl<UploadMerchandiserPhotoResponse>(this as UploadMerchandiserPhotoResponse, _$identity);

  /// Serializes this UploadMerchandiserPhotoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMerchandiserPhotoResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'UploadMerchandiserPhotoResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $UploadMerchandiserPhotoResponseCopyWith<$Res>  {
  factory $UploadMerchandiserPhotoResponseCopyWith(UploadMerchandiserPhotoResponse value, $Res Function(UploadMerchandiserPhotoResponse) _then) = _$UploadMerchandiserPhotoResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") String data
});




}
/// @nodoc
class _$UploadMerchandiserPhotoResponseCopyWithImpl<$Res>
    implements $UploadMerchandiserPhotoResponseCopyWith<$Res> {
  _$UploadMerchandiserPhotoResponseCopyWithImpl(this._self, this._then);

  final UploadMerchandiserPhotoResponse _self;
  final $Res Function(UploadMerchandiserPhotoResponse) _then;

/// Create a copy of UploadMerchandiserPhotoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadMerchandiserPhotoResponse].
extension UploadMerchandiserPhotoResponsePatterns on UploadMerchandiserPhotoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadMerchandiserPhotoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadMerchandiserPhotoResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadMerchandiserPhotoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  String data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  String data)  $default,) {final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  String data)?  $default,) {final _that = this;
switch (_that) {
case _UploadMerchandiserPhotoResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadMerchandiserPhotoResponse implements UploadMerchandiserPhotoResponse {
  const _UploadMerchandiserPhotoResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _UploadMerchandiserPhotoResponse.fromJson(Map<String, dynamic> json) => _$UploadMerchandiserPhotoResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  String data;

/// Create a copy of UploadMerchandiserPhotoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadMerchandiserPhotoResponseCopyWith<_UploadMerchandiserPhotoResponse> get copyWith => __$UploadMerchandiserPhotoResponseCopyWithImpl<_UploadMerchandiserPhotoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadMerchandiserPhotoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadMerchandiserPhotoResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'UploadMerchandiserPhotoResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UploadMerchandiserPhotoResponseCopyWith<$Res> implements $UploadMerchandiserPhotoResponseCopyWith<$Res> {
  factory _$UploadMerchandiserPhotoResponseCopyWith(_UploadMerchandiserPhotoResponse value, $Res Function(_UploadMerchandiserPhotoResponse) _then) = __$UploadMerchandiserPhotoResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") String data
});




}
/// @nodoc
class __$UploadMerchandiserPhotoResponseCopyWithImpl<$Res>
    implements _$UploadMerchandiserPhotoResponseCopyWith<$Res> {
  __$UploadMerchandiserPhotoResponseCopyWithImpl(this._self, this._then);

  final _UploadMerchandiserPhotoResponse _self;
  final $Res Function(_UploadMerchandiserPhotoResponse) _then;

/// Create a copy of UploadMerchandiserPhotoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_UploadMerchandiserPhotoResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
