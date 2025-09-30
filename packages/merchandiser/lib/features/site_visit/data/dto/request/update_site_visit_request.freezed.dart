// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_site_visit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateSiteVisitRequest {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'timeOut') String get timeOut;
/// Create a copy of UpdateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSiteVisitRequestCopyWith<UpdateSiteVisitRequest> get copyWith => _$UpdateSiteVisitRequestCopyWithImpl<UpdateSiteVisitRequest>(this as UpdateSiteVisitRequest, _$identity);

  /// Serializes this UpdateSiteVisitRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSiteVisitRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.timeOut, timeOut) || other.timeOut == timeOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeOut);

@override
String toString() {
  return 'UpdateSiteVisitRequest(id: $id, timeOut: $timeOut)';
}


}

/// @nodoc
abstract mixin class $UpdateSiteVisitRequestCopyWith<$Res>  {
  factory $UpdateSiteVisitRequestCopyWith(UpdateSiteVisitRequest value, $Res Function(UpdateSiteVisitRequest) _then) = _$UpdateSiteVisitRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'timeOut') String timeOut
});




}
/// @nodoc
class _$UpdateSiteVisitRequestCopyWithImpl<$Res>
    implements $UpdateSiteVisitRequestCopyWith<$Res> {
  _$UpdateSiteVisitRequestCopyWithImpl(this._self, this._then);

  final UpdateSiteVisitRequest _self;
  final $Res Function(UpdateSiteVisitRequest) _then;

/// Create a copy of UpdateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? timeOut = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeOut: null == timeOut ? _self.timeOut : timeOut // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateSiteVisitRequest].
extension UpdateSiteVisitRequestPatterns on UpdateSiteVisitRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSiteVisitRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSiteVisitRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSiteVisitRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'timeOut')  String timeOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest() when $default != null:
return $default(_that.id,_that.timeOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'timeOut')  String timeOut)  $default,) {final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest():
return $default(_that.id,_that.timeOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'timeOut')  String timeOut)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSiteVisitRequest() when $default != null:
return $default(_that.id,_that.timeOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSiteVisitRequest implements UpdateSiteVisitRequest {
  const _UpdateSiteVisitRequest({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'timeOut') required this.timeOut});
  factory _UpdateSiteVisitRequest.fromJson(Map<String, dynamic> json) => _$UpdateSiteVisitRequestFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'timeOut') final  String timeOut;

/// Create a copy of UpdateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSiteVisitRequestCopyWith<_UpdateSiteVisitRequest> get copyWith => __$UpdateSiteVisitRequestCopyWithImpl<_UpdateSiteVisitRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSiteVisitRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSiteVisitRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.timeOut, timeOut) || other.timeOut == timeOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeOut);

@override
String toString() {
  return 'UpdateSiteVisitRequest(id: $id, timeOut: $timeOut)';
}


}

/// @nodoc
abstract mixin class _$UpdateSiteVisitRequestCopyWith<$Res> implements $UpdateSiteVisitRequestCopyWith<$Res> {
  factory _$UpdateSiteVisitRequestCopyWith(_UpdateSiteVisitRequest value, $Res Function(_UpdateSiteVisitRequest) _then) = __$UpdateSiteVisitRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'timeOut') String timeOut
});




}
/// @nodoc
class __$UpdateSiteVisitRequestCopyWithImpl<$Res>
    implements _$UpdateSiteVisitRequestCopyWith<$Res> {
  __$UpdateSiteVisitRequestCopyWithImpl(this._self, this._then);

  final _UpdateSiteVisitRequest _self;
  final $Res Function(_UpdateSiteVisitRequest) _then;

/// Create a copy of UpdateSiteVisitRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? timeOut = null,}) {
  return _then(_UpdateSiteVisitRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeOut: null == timeOut ? _self.timeOut : timeOut // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
