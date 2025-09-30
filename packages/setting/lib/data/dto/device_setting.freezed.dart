// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceSettingResponse {

 String get status; DeviceSettingData get data;
/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSettingResponseCopyWith<DeviceSettingResponse> get copyWith => _$DeviceSettingResponseCopyWithImpl<DeviceSettingResponse>(this as DeviceSettingResponse, _$identity);

  /// Serializes this DeviceSettingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'DeviceSettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $DeviceSettingResponseCopyWith<$Res>  {
  factory $DeviceSettingResponseCopyWith(DeviceSettingResponse value, $Res Function(DeviceSettingResponse) _then) = _$DeviceSettingResponseCopyWithImpl;
@useResult
$Res call({
 String status, DeviceSettingData data
});


$DeviceSettingDataCopyWith<$Res> get data;

}
/// @nodoc
class _$DeviceSettingResponseCopyWithImpl<$Res>
    implements $DeviceSettingResponseCopyWith<$Res> {
  _$DeviceSettingResponseCopyWithImpl(this._self, this._then);

  final DeviceSettingResponse _self;
  final $Res Function(DeviceSettingResponse) _then;

/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DeviceSettingData,
  ));
}
/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingDataCopyWith<$Res> get data {
  
  return $DeviceSettingDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceSettingResponse].
extension DeviceSettingResponsePatterns on DeviceSettingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSettingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSettingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSettingResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSettingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  DeviceSettingData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSettingResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  DeviceSettingData data)  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  DeviceSettingData data)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceSettingResponse implements DeviceSettingResponse {
  const _DeviceSettingResponse({required this.status, required this.data});
  factory _DeviceSettingResponse.fromJson(Map<String, dynamic> json) => _$DeviceSettingResponseFromJson(json);

@override final  String status;
@override final  DeviceSettingData data;

/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSettingResponseCopyWith<_DeviceSettingResponse> get copyWith => __$DeviceSettingResponseCopyWithImpl<_DeviceSettingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceSettingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'DeviceSettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DeviceSettingResponseCopyWith<$Res> implements $DeviceSettingResponseCopyWith<$Res> {
  factory _$DeviceSettingResponseCopyWith(_DeviceSettingResponse value, $Res Function(_DeviceSettingResponse) _then) = __$DeviceSettingResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, DeviceSettingData data
});


@override $DeviceSettingDataCopyWith<$Res> get data;

}
/// @nodoc
class __$DeviceSettingResponseCopyWithImpl<$Res>
    implements _$DeviceSettingResponseCopyWith<$Res> {
  __$DeviceSettingResponseCopyWithImpl(this._self, this._then);

  final _DeviceSettingResponse _self;
  final $Res Function(_DeviceSettingResponse) _then;

/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_DeviceSettingResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DeviceSettingData,
  ));
}

/// Create a copy of DeviceSettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingDataCopyWith<$Res> get data {
  
  return $DeviceSettingDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DeviceSettingData {

 int get id; String get deviceId; int get userId; String get userName; String get salesPersonCode; String get orderNumberFormat; DateTime get createAt; DateTime get updatedAt; int get companyId;
/// Create a copy of DeviceSettingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSettingDataCopyWith<DeviceSettingData> get copyWith => _$DeviceSettingDataCopyWithImpl<DeviceSettingData>(this as DeviceSettingData, _$identity);

  /// Serializes this DeviceSettingData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSettingData&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.orderNumberFormat, orderNumberFormat) || other.orderNumberFormat == orderNumberFormat)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,userId,userName,salesPersonCode,orderNumberFormat,createAt,updatedAt,companyId);

@override
String toString() {
  return 'DeviceSettingData(id: $id, deviceId: $deviceId, userId: $userId, userName: $userName, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat, createAt: $createAt, updatedAt: $updatedAt, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class $DeviceSettingDataCopyWith<$Res>  {
  factory $DeviceSettingDataCopyWith(DeviceSettingData value, $Res Function(DeviceSettingData) _then) = _$DeviceSettingDataCopyWithImpl;
@useResult
$Res call({
 int id, String deviceId, int userId, String userName, String salesPersonCode, String orderNumberFormat, DateTime createAt, DateTime updatedAt, int companyId
});




}
/// @nodoc
class _$DeviceSettingDataCopyWithImpl<$Res>
    implements $DeviceSettingDataCopyWith<$Res> {
  _$DeviceSettingDataCopyWithImpl(this._self, this._then);

  final DeviceSettingData _self;
  final $Res Function(DeviceSettingData) _then;

/// Create a copy of DeviceSettingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deviceId = null,Object? userId = null,Object? userName = null,Object? salesPersonCode = null,Object? orderNumberFormat = null,Object? createAt = null,Object? updatedAt = null,Object? companyId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,salesPersonCode: null == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String,orderNumberFormat: null == orderNumberFormat ? _self.orderNumberFormat : orderNumberFormat // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceSettingData].
extension DeviceSettingDataPatterns on DeviceSettingData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSettingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSettingData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSettingData value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSettingData value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String deviceId,  int userId,  String userName,  String salesPersonCode,  String orderNumberFormat,  DateTime createAt,  DateTime updatedAt,  int companyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSettingData() when $default != null:
return $default(_that.id,_that.deviceId,_that.userId,_that.userName,_that.salesPersonCode,_that.orderNumberFormat,_that.createAt,_that.updatedAt,_that.companyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String deviceId,  int userId,  String userName,  String salesPersonCode,  String orderNumberFormat,  DateTime createAt,  DateTime updatedAt,  int companyId)  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingData():
return $default(_that.id,_that.deviceId,_that.userId,_that.userName,_that.salesPersonCode,_that.orderNumberFormat,_that.createAt,_that.updatedAt,_that.companyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String deviceId,  int userId,  String userName,  String salesPersonCode,  String orderNumberFormat,  DateTime createAt,  DateTime updatedAt,  int companyId)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingData() when $default != null:
return $default(_that.id,_that.deviceId,_that.userId,_that.userName,_that.salesPersonCode,_that.orderNumberFormat,_that.createAt,_that.updatedAt,_that.companyId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceSettingData implements DeviceSettingData {
  const _DeviceSettingData({required this.id, required this.deviceId, required this.userId, required this.userName, required this.salesPersonCode, required this.orderNumberFormat, required this.createAt, required this.updatedAt, required this.companyId});
  factory _DeviceSettingData.fromJson(Map<String, dynamic> json) => _$DeviceSettingDataFromJson(json);

@override final  int id;
@override final  String deviceId;
@override final  int userId;
@override final  String userName;
@override final  String salesPersonCode;
@override final  String orderNumberFormat;
@override final  DateTime createAt;
@override final  DateTime updatedAt;
@override final  int companyId;

/// Create a copy of DeviceSettingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSettingDataCopyWith<_DeviceSettingData> get copyWith => __$DeviceSettingDataCopyWithImpl<_DeviceSettingData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceSettingDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSettingData&&(identical(other.id, id) || other.id == id)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.orderNumberFormat, orderNumberFormat) || other.orderNumberFormat == orderNumberFormat)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deviceId,userId,userName,salesPersonCode,orderNumberFormat,createAt,updatedAt,companyId);

@override
String toString() {
  return 'DeviceSettingData(id: $id, deviceId: $deviceId, userId: $userId, userName: $userName, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat, createAt: $createAt, updatedAt: $updatedAt, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class _$DeviceSettingDataCopyWith<$Res> implements $DeviceSettingDataCopyWith<$Res> {
  factory _$DeviceSettingDataCopyWith(_DeviceSettingData value, $Res Function(_DeviceSettingData) _then) = __$DeviceSettingDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String deviceId, int userId, String userName, String salesPersonCode, String orderNumberFormat, DateTime createAt, DateTime updatedAt, int companyId
});




}
/// @nodoc
class __$DeviceSettingDataCopyWithImpl<$Res>
    implements _$DeviceSettingDataCopyWith<$Res> {
  __$DeviceSettingDataCopyWithImpl(this._self, this._then);

  final _DeviceSettingData _self;
  final $Res Function(_DeviceSettingData) _then;

/// Create a copy of DeviceSettingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deviceId = null,Object? userId = null,Object? userName = null,Object? salesPersonCode = null,Object? orderNumberFormat = null,Object? createAt = null,Object? updatedAt = null,Object? companyId = null,}) {
  return _then(_DeviceSettingData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,salesPersonCode: null == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String,orderNumberFormat: null == orderNumberFormat ? _self.orderNumberFormat : orderNumberFormat // ignore: cast_nullable_to_non_nullable
as String,createAt: null == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
