// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanySettingResponse {

 String get status; CompanySettingDto get data;
/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanySettingResponseCopyWith<CompanySettingResponse> get copyWith => _$CompanySettingResponseCopyWithImpl<CompanySettingResponse>(this as CompanySettingResponse, _$identity);

  /// Serializes this CompanySettingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanySettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CompanySettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $CompanySettingResponseCopyWith<$Res>  {
  factory $CompanySettingResponseCopyWith(CompanySettingResponse value, $Res Function(CompanySettingResponse) _then) = _$CompanySettingResponseCopyWithImpl;
@useResult
$Res call({
 String status, CompanySettingDto data
});


$CompanySettingDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$CompanySettingResponseCopyWithImpl<$Res>
    implements $CompanySettingResponseCopyWith<$Res> {
  _$CompanySettingResponseCopyWithImpl(this._self, this._then);

  final CompanySettingResponse _self;
  final $Res Function(CompanySettingResponse) _then;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanySettingDto,
  ));
}
/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanySettingDtoCopyWith<$Res> get data {
  
  return $CompanySettingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanySettingResponse].
extension CompanySettingResponsePatterns on CompanySettingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanySettingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanySettingResponse value)  $default,){
final _that = this;
switch (_that) {
case _CompanySettingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanySettingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  CompanySettingDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  CompanySettingDto data)  $default,) {final _that = this;
switch (_that) {
case _CompanySettingResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  CompanySettingDto data)?  $default,) {final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanySettingResponse implements CompanySettingResponse {
  const _CompanySettingResponse({required this.status, required this.data});
  factory _CompanySettingResponse.fromJson(Map<String, dynamic> json) => _$CompanySettingResponseFromJson(json);

@override final  String status;
@override final  CompanySettingDto data;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanySettingResponseCopyWith<_CompanySettingResponse> get copyWith => __$CompanySettingResponseCopyWithImpl<_CompanySettingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanySettingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanySettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CompanySettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CompanySettingResponseCopyWith<$Res> implements $CompanySettingResponseCopyWith<$Res> {
  factory _$CompanySettingResponseCopyWith(_CompanySettingResponse value, $Res Function(_CompanySettingResponse) _then) = __$CompanySettingResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, CompanySettingDto data
});


@override $CompanySettingDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$CompanySettingResponseCopyWithImpl<$Res>
    implements _$CompanySettingResponseCopyWith<$Res> {
  __$CompanySettingResponseCopyWithImpl(this._self, this._then);

  final _CompanySettingResponse _self;
  final $Res Function(_CompanySettingResponse) _then;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_CompanySettingResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanySettingDto,
  ));
}

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanySettingDtoCopyWith<$Res> get data {
  
  return $CompanySettingDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CompanySettingDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "timeZone") String get timeZone;@JsonKey(name: "isSiteVisitEnabled") bool get isSiteVisitEnabled;
/// Create a copy of CompanySettingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanySettingDtoCopyWith<CompanySettingDto> get copyWith => _$CompanySettingDtoCopyWithImpl<CompanySettingDto>(this as CompanySettingDto, _$identity);

  /// Serializes this CompanySettingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanySettingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isSiteVisitEnabled, isSiteVisitEnabled) || other.isSiteVisitEnabled == isSiteVisitEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,timeZone,isSiteVisitEnabled);

@override
String toString() {
  return 'CompanySettingDto(id: $id, companyId: $companyId, timeZone: $timeZone, isSiteVisitEnabled: $isSiteVisitEnabled)';
}


}

/// @nodoc
abstract mixin class $CompanySettingDtoCopyWith<$Res>  {
  factory $CompanySettingDtoCopyWith(CompanySettingDto value, $Res Function(CompanySettingDto) _then) = _$CompanySettingDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled
});




}
/// @nodoc
class _$CompanySettingDtoCopyWithImpl<$Res>
    implements $CompanySettingDtoCopyWith<$Res> {
  _$CompanySettingDtoCopyWithImpl(this._self, this._then);

  final CompanySettingDto _self;
  final $Res Function(CompanySettingDto) _then;

/// Create a copy of CompanySettingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? timeZone = null,Object? isSiteVisitEnabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,isSiteVisitEnabled: null == isSiteVisitEnabled ? _self.isSiteVisitEnabled : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanySettingDto].
extension CompanySettingDtoPatterns on CompanySettingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanySettingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanySettingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanySettingDto value)  $default,){
final _that = this;
switch (_that) {
case _CompanySettingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanySettingDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompanySettingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanySettingDto() when $default != null:
return $default(_that.id,_that.companyId,_that.timeZone,_that.isSiteVisitEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)  $default,) {final _that = this;
switch (_that) {
case _CompanySettingDto():
return $default(_that.id,_that.companyId,_that.timeZone,_that.isSiteVisitEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)?  $default,) {final _that = this;
switch (_that) {
case _CompanySettingDto() when $default != null:
return $default(_that.id,_that.companyId,_that.timeZone,_that.isSiteVisitEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanySettingDto implements CompanySettingDto {
  const _CompanySettingDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "timeZone") required this.timeZone, @JsonKey(name: "isSiteVisitEnabled") required this.isSiteVisitEnabled});
  factory _CompanySettingDto.fromJson(Map<String, dynamic> json) => _$CompanySettingDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "timeZone") final  String timeZone;
@override@JsonKey(name: "isSiteVisitEnabled") final  bool isSiteVisitEnabled;

/// Create a copy of CompanySettingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanySettingDtoCopyWith<_CompanySettingDto> get copyWith => __$CompanySettingDtoCopyWithImpl<_CompanySettingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanySettingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanySettingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isSiteVisitEnabled, isSiteVisitEnabled) || other.isSiteVisitEnabled == isSiteVisitEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,timeZone,isSiteVisitEnabled);

@override
String toString() {
  return 'CompanySettingDto(id: $id, companyId: $companyId, timeZone: $timeZone, isSiteVisitEnabled: $isSiteVisitEnabled)';
}


}

/// @nodoc
abstract mixin class _$CompanySettingDtoCopyWith<$Res> implements $CompanySettingDtoCopyWith<$Res> {
  factory _$CompanySettingDtoCopyWith(_CompanySettingDto value, $Res Function(_CompanySettingDto) _then) = __$CompanySettingDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled
});




}
/// @nodoc
class __$CompanySettingDtoCopyWithImpl<$Res>
    implements _$CompanySettingDtoCopyWith<$Res> {
  __$CompanySettingDtoCopyWithImpl(this._self, this._then);

  final _CompanySettingDto _self;
  final $Res Function(_CompanySettingDto) _then;

/// Create a copy of CompanySettingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? timeZone = null,Object? isSiteVisitEnabled = null,}) {
  return _then(_CompanySettingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,isSiteVisitEnabled: null == isSiteVisitEnabled ? _self.isSiteVisitEnabled : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
