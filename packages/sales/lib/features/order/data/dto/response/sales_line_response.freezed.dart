// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_line_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesLineResponse {

 String get status; SalesLineData get data;
/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesLineResponseCopyWith<SalesLineResponse> get copyWith => _$SalesLineResponseCopyWithImpl<SalesLineResponse>(this as SalesLineResponse, _$identity);

  /// Serializes this SalesLineResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesLineResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SalesLineResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $SalesLineResponseCopyWith<$Res>  {
  factory $SalesLineResponseCopyWith(SalesLineResponse value, $Res Function(SalesLineResponse) _then) = _$SalesLineResponseCopyWithImpl;
@useResult
$Res call({
 String status, SalesLineData data
});


$SalesLineDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SalesLineResponseCopyWithImpl<$Res>
    implements $SalesLineResponseCopyWith<$Res> {
  _$SalesLineResponseCopyWithImpl(this._self, this._then);

  final SalesLineResponse _self;
  final $Res Function(SalesLineResponse) _then;

/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SalesLineData,
  ));
}
/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesLineDataCopyWith<$Res> get data {
  
  return $SalesLineDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SalesLineResponse].
extension SalesLineResponsePatterns on SalesLineResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesLineResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesLineResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesLineResponse value)  $default,){
final _that = this;
switch (_that) {
case _SalesLineResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesLineResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SalesLineResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  SalesLineData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesLineResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  SalesLineData data)  $default,) {final _that = this;
switch (_that) {
case _SalesLineResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  SalesLineData data)?  $default,) {final _that = this;
switch (_that) {
case _SalesLineResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesLineResponse implements SalesLineResponse {
  const _SalesLineResponse({required this.status, required this.data});
  factory _SalesLineResponse.fromJson(Map<String, dynamic> json) => _$SalesLineResponseFromJson(json);

@override final  String status;
@override final  SalesLineData data;

/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesLineResponseCopyWith<_SalesLineResponse> get copyWith => __$SalesLineResponseCopyWithImpl<_SalesLineResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesLineResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesLineResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SalesLineResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SalesLineResponseCopyWith<$Res> implements $SalesLineResponseCopyWith<$Res> {
  factory _$SalesLineResponseCopyWith(_SalesLineResponse value, $Res Function(_SalesLineResponse) _then) = __$SalesLineResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, SalesLineData data
});


@override $SalesLineDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SalesLineResponseCopyWithImpl<$Res>
    implements _$SalesLineResponseCopyWith<$Res> {
  __$SalesLineResponseCopyWithImpl(this._self, this._then);

  final _SalesLineResponse _self;
  final $Res Function(_SalesLineResponse) _then;

/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_SalesLineResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SalesLineData,
  ));
}

/// Create a copy of SalesLineResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SalesLineDataCopyWith<$Res> get data {
  
  return $SalesLineDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SalesLineData {

 int get count;
/// Create a copy of SalesLineData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesLineDataCopyWith<SalesLineData> get copyWith => _$SalesLineDataCopyWithImpl<SalesLineData>(this as SalesLineData, _$identity);

  /// Serializes this SalesLineData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesLineData&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'SalesLineData(count: $count)';
}


}

/// @nodoc
abstract mixin class $SalesLineDataCopyWith<$Res>  {
  factory $SalesLineDataCopyWith(SalesLineData value, $Res Function(SalesLineData) _then) = _$SalesLineDataCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$SalesLineDataCopyWithImpl<$Res>
    implements $SalesLineDataCopyWith<$Res> {
  _$SalesLineDataCopyWithImpl(this._self, this._then);

  final SalesLineData _self;
  final $Res Function(SalesLineData) _then;

/// Create a copy of SalesLineData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesLineData].
extension SalesLineDataPatterns on SalesLineData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesLineData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesLineData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesLineData value)  $default,){
final _that = this;
switch (_that) {
case _SalesLineData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesLineData value)?  $default,){
final _that = this;
switch (_that) {
case _SalesLineData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesLineData() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count)  $default,) {final _that = this;
switch (_that) {
case _SalesLineData():
return $default(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count)?  $default,) {final _that = this;
switch (_that) {
case _SalesLineData() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesLineData implements SalesLineData {
  const _SalesLineData({required this.count});
  factory _SalesLineData.fromJson(Map<String, dynamic> json) => _$SalesLineDataFromJson(json);

@override final  int count;

/// Create a copy of SalesLineData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesLineDataCopyWith<_SalesLineData> get copyWith => __$SalesLineDataCopyWithImpl<_SalesLineData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesLineDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesLineData&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'SalesLineData(count: $count)';
}


}

/// @nodoc
abstract mixin class _$SalesLineDataCopyWith<$Res> implements $SalesLineDataCopyWith<$Res> {
  factory _$SalesLineDataCopyWith(_SalesLineData value, $Res Function(_SalesLineData) _then) = __$SalesLineDataCopyWithImpl;
@override @useResult
$Res call({
 int count
});




}
/// @nodoc
class __$SalesLineDataCopyWithImpl<$Res>
    implements _$SalesLineDataCopyWith<$Res> {
  __$SalesLineDataCopyWithImpl(this._self, this._then);

  final _SalesLineData _self;
  final $Res Function(_SalesLineData) _then;

/// Create a copy of SalesLineData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_SalesLineData(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
