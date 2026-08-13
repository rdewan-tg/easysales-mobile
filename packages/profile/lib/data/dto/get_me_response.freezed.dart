// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_me_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMeResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") DataDto get data;
/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMeResponseCopyWith<GetMeResponse> get copyWith => _$GetMeResponseCopyWithImpl<GetMeResponse>(this as GetMeResponse, _$identity);

  /// Serializes this GetMeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMeResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'GetMeResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetMeResponseCopyWith<$Res>  {
  factory $GetMeResponseCopyWith(GetMeResponse value, $Res Function(GetMeResponse) _then) = _$GetMeResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") DataDto data
});


$DataDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$GetMeResponseCopyWithImpl<$Res>
    implements $GetMeResponseCopyWith<$Res> {
  _$GetMeResponseCopyWithImpl(this._self, this._then);

  final GetMeResponse _self;
  final $Res Function(GetMeResponse) _then;

/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataDto,
  ));
}
/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataDtoCopyWith<$Res> get data {
  
  return $DataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetMeResponse].
extension GetMeResponsePatterns on GetMeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMeResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetMeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetMeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  DataDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMeResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  DataDto data)  $default,) {final _that = this;
switch (_that) {
case _GetMeResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  DataDto data)?  $default,) {final _that = this;
switch (_that) {
case _GetMeResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMeResponse implements GetMeResponse {
  const _GetMeResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _GetMeResponse.fromJson(Map<String, dynamic> json) => _$GetMeResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  DataDto data;

/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMeResponseCopyWith<_GetMeResponse> get copyWith => __$GetMeResponseCopyWithImpl<_GetMeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMeResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'GetMeResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetMeResponseCopyWith<$Res> implements $GetMeResponseCopyWith<$Res> {
  factory _$GetMeResponseCopyWith(_GetMeResponse value, $Res Function(_GetMeResponse) _then) = __$GetMeResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") DataDto data
});


@override $DataDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$GetMeResponseCopyWithImpl<$Res>
    implements _$GetMeResponseCopyWith<$Res> {
  __$GetMeResponseCopyWithImpl(this._self, this._then);

  final _GetMeResponse _self;
  final $Res Function(_GetMeResponse) _then;

/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_GetMeResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataDto,
  ));
}

/// Create a copy of GetMeResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataDtoCopyWith<$Res> get data {
  
  return $DataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DataDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") String get name;@JsonKey(name: "email") String get email;@JsonKey(name: "phoneNumber") String? get phoneNumber;@JsonKey(name: "photo") String? get photo;@JsonKey(name: "dashboardPath") String get dashboardPath;@JsonKey(name: "roles") List<RoleDto> get roles;@JsonKey(name: "areaIds") List<int> get areaIds;@JsonKey(name: "company") MeCompanyDto get company;
/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataDtoCopyWith<DataDto> get copyWith => _$DataDtoCopyWithImpl<DataDto>(this as DataDto, _$identity);

  /// Serializes this DataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.dashboardPath, dashboardPath) || other.dashboardPath == dashboardPath)&&const DeepCollectionEquality().equals(other.roles, roles)&&const DeepCollectionEquality().equals(other.areaIds, areaIds)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,photo,dashboardPath,const DeepCollectionEquality().hash(roles),const DeepCollectionEquality().hash(areaIds),company);

@override
String toString() {
  return 'DataDto(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, photo: $photo, dashboardPath: $dashboardPath, roles: $roles, areaIds: $areaIds, company: $company)';
}


}

/// @nodoc
abstract mixin class $DataDtoCopyWith<$Res>  {
  factory $DataDtoCopyWith(DataDto value, $Res Function(DataDto) _then) = _$DataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "email") String email,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "photo") String? photo,@JsonKey(name: "dashboardPath") String dashboardPath,@JsonKey(name: "roles") List<RoleDto> roles,@JsonKey(name: "areaIds") List<int> areaIds,@JsonKey(name: "company") MeCompanyDto company
});


$MeCompanyDtoCopyWith<$Res> get company;

}
/// @nodoc
class _$DataDtoCopyWithImpl<$Res>
    implements $DataDtoCopyWith<$Res> {
  _$DataDtoCopyWithImpl(this._self, this._then);

  final DataDto _self;
  final $Res Function(DataDto) _then;

/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? photo = freezed,Object? dashboardPath = null,Object? roles = null,Object? areaIds = null,Object? company = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,dashboardPath: null == dashboardPath ? _self.dashboardPath : dashboardPath // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,areaIds: null == areaIds ? _self.areaIds : areaIds // ignore: cast_nullable_to_non_nullable
as List<int>,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as MeCompanyDto,
  ));
}
/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeCompanyDtoCopyWith<$Res> get company {
  
  return $MeCompanyDtoCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [DataDto].
extension DataDtoPatterns on DataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataDto value)  $default,){
final _that = this;
switch (_that) {
case _DataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataDto value)?  $default,){
final _that = this;
switch (_that) {
case _DataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "dashboardPath")  String dashboardPath, @JsonKey(name: "roles")  List<RoleDto> roles, @JsonKey(name: "areaIds")  List<int> areaIds, @JsonKey(name: "company")  MeCompanyDto company)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.dashboardPath,_that.roles,_that.areaIds,_that.company);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "dashboardPath")  String dashboardPath, @JsonKey(name: "roles")  List<RoleDto> roles, @JsonKey(name: "areaIds")  List<int> areaIds, @JsonKey(name: "company")  MeCompanyDto company)  $default,) {final _that = this;
switch (_that) {
case _DataDto():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.dashboardPath,_that.roles,_that.areaIds,_that.company);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "dashboardPath")  String dashboardPath, @JsonKey(name: "roles")  List<RoleDto> roles, @JsonKey(name: "areaIds")  List<int> areaIds, @JsonKey(name: "company")  MeCompanyDto company)?  $default,) {final _that = this;
switch (_that) {
case _DataDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.dashboardPath,_that.roles,_that.areaIds,_that.company);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataDto implements DataDto {
  const _DataDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "email") required this.email, @JsonKey(name: "phoneNumber") this.phoneNumber, @JsonKey(name: "photo") this.photo, @JsonKey(name: "dashboardPath") required this.dashboardPath, @JsonKey(name: "roles") required final  List<RoleDto> roles, @JsonKey(name: "areaIds") required final  List<int> areaIds, @JsonKey(name: "company") required this.company}): _roles = roles,_areaIds = areaIds;
  factory _DataDto.fromJson(Map<String, dynamic> json) => _$DataDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "phoneNumber") final  String? phoneNumber;
@override@JsonKey(name: "photo") final  String? photo;
@override@JsonKey(name: "dashboardPath") final  String dashboardPath;
 final  List<RoleDto> _roles;
@override@JsonKey(name: "roles") List<RoleDto> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

 final  List<int> _areaIds;
@override@JsonKey(name: "areaIds") List<int> get areaIds {
  if (_areaIds is EqualUnmodifiableListView) return _areaIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_areaIds);
}

@override@JsonKey(name: "company") final  MeCompanyDto company;

/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataDtoCopyWith<_DataDto> get copyWith => __$DataDtoCopyWithImpl<_DataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.dashboardPath, dashboardPath) || other.dashboardPath == dashboardPath)&&const DeepCollectionEquality().equals(other._roles, _roles)&&const DeepCollectionEquality().equals(other._areaIds, _areaIds)&&(identical(other.company, company) || other.company == company));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,photo,dashboardPath,const DeepCollectionEquality().hash(_roles),const DeepCollectionEquality().hash(_areaIds),company);

@override
String toString() {
  return 'DataDto(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, photo: $photo, dashboardPath: $dashboardPath, roles: $roles, areaIds: $areaIds, company: $company)';
}


}

/// @nodoc
abstract mixin class _$DataDtoCopyWith<$Res> implements $DataDtoCopyWith<$Res> {
  factory _$DataDtoCopyWith(_DataDto value, $Res Function(_DataDto) _then) = __$DataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "email") String email,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "photo") String? photo,@JsonKey(name: "dashboardPath") String dashboardPath,@JsonKey(name: "roles") List<RoleDto> roles,@JsonKey(name: "areaIds") List<int> areaIds,@JsonKey(name: "company") MeCompanyDto company
});


@override $MeCompanyDtoCopyWith<$Res> get company;

}
/// @nodoc
class __$DataDtoCopyWithImpl<$Res>
    implements _$DataDtoCopyWith<$Res> {
  __$DataDtoCopyWithImpl(this._self, this._then);

  final _DataDto _self;
  final $Res Function(_DataDto) _then;

/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? photo = freezed,Object? dashboardPath = null,Object? roles = null,Object? areaIds = null,Object? company = null,}) {
  return _then(_DataDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,dashboardPath: null == dashboardPath ? _self.dashboardPath : dashboardPath // ignore: cast_nullable_to_non_nullable
as String,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,areaIds: null == areaIds ? _self._areaIds : areaIds // ignore: cast_nullable_to_non_nullable
as List<int>,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as MeCompanyDto,
  ));
}

/// Create a copy of DataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeCompanyDtoCopyWith<$Res> get company {
  
  return $MeCompanyDtoCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// @nodoc
mixin _$RoleDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") UserRole get name;
/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoleDtoCopyWith<RoleDto> get copyWith => _$RoleDtoCopyWithImpl<RoleDto>(this as RoleDto, _$identity);

  /// Serializes this RoleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoleDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $RoleDtoCopyWith<$Res>  {
  factory $RoleDtoCopyWith(RoleDto value, $Res Function(RoleDto) _then) = _$RoleDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") UserRole name
});




}
/// @nodoc
class _$RoleDtoCopyWithImpl<$Res>
    implements $RoleDtoCopyWith<$Res> {
  _$RoleDtoCopyWithImpl(this._self, this._then);

  final RoleDto _self;
  final $Res Function(RoleDto) _then;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as UserRole,
  ));
}

}


/// Adds pattern-matching-related methods to [RoleDto].
extension RoleDtoPatterns on RoleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoleDto value)  $default,){
final _that = this;
switch (_that) {
case _RoleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoleDto value)?  $default,){
final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  UserRole name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  UserRole name)  $default,) {final _that = this;
switch (_that) {
case _RoleDto():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  UserRole name)?  $default,) {final _that = this;
switch (_that) {
case _RoleDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoleDto implements RoleDto {
  const _RoleDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name});
  factory _RoleDto.fromJson(Map<String, dynamic> json) => _$RoleDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  UserRole name;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoleDtoCopyWith<_RoleDto> get copyWith => __$RoleDtoCopyWithImpl<_RoleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoleDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'RoleDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RoleDtoCopyWith<$Res> implements $RoleDtoCopyWith<$Res> {
  factory _$RoleDtoCopyWith(_RoleDto value, $Res Function(_RoleDto) _then) = __$RoleDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") UserRole name
});




}
/// @nodoc
class __$RoleDtoCopyWithImpl<$Res>
    implements _$RoleDtoCopyWith<$Res> {
  __$RoleDtoCopyWithImpl(this._self, this._then);

  final _RoleDto _self;
  final $Res Function(_RoleDto) _then;

/// Create a copy of RoleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_RoleDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as UserRole,
  ));
}


}


/// @nodoc
mixin _$MeCompanyDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") String get name;@JsonKey(name: "timeZone") String? get timeZone;
/// Create a copy of MeCompanyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeCompanyDtoCopyWith<MeCompanyDto> get copyWith => _$MeCompanyDtoCopyWithImpl<MeCompanyDto>(this as MeCompanyDto, _$identity);

  /// Serializes this MeCompanyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MeCompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,timeZone);

@override
String toString() {
  return 'MeCompanyDto(id: $id, name: $name, timeZone: $timeZone)';
}


}

/// @nodoc
abstract mixin class $MeCompanyDtoCopyWith<$Res>  {
  factory $MeCompanyDtoCopyWith(MeCompanyDto value, $Res Function(MeCompanyDto) _then) = _$MeCompanyDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "timeZone") String? timeZone
});




}
/// @nodoc
class _$MeCompanyDtoCopyWithImpl<$Res>
    implements $MeCompanyDtoCopyWith<$Res> {
  _$MeCompanyDtoCopyWithImpl(this._self, this._then);

  final MeCompanyDto _self;
  final $Res Function(MeCompanyDto) _then;

/// Create a copy of MeCompanyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? timeZone = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,timeZone: freezed == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MeCompanyDto].
extension MeCompanyDtoPatterns on MeCompanyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MeCompanyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MeCompanyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MeCompanyDto value)  $default,){
final _that = this;
switch (_that) {
case _MeCompanyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MeCompanyDto value)?  $default,){
final _that = this;
switch (_that) {
case _MeCompanyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "timeZone")  String? timeZone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MeCompanyDto() when $default != null:
return $default(_that.id,_that.name,_that.timeZone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "timeZone")  String? timeZone)  $default,) {final _that = this;
switch (_that) {
case _MeCompanyDto():
return $default(_that.id,_that.name,_that.timeZone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "timeZone")  String? timeZone)?  $default,) {final _that = this;
switch (_that) {
case _MeCompanyDto() when $default != null:
return $default(_that.id,_that.name,_that.timeZone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MeCompanyDto implements MeCompanyDto {
  const _MeCompanyDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "timeZone") this.timeZone});
  factory _MeCompanyDto.fromJson(Map<String, dynamic> json) => _$MeCompanyDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "timeZone") final  String? timeZone;

/// Create a copy of MeCompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeCompanyDtoCopyWith<_MeCompanyDto> get copyWith => __$MeCompanyDtoCopyWithImpl<_MeCompanyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeCompanyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MeCompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,timeZone);

@override
String toString() {
  return 'MeCompanyDto(id: $id, name: $name, timeZone: $timeZone)';
}


}

/// @nodoc
abstract mixin class _$MeCompanyDtoCopyWith<$Res> implements $MeCompanyDtoCopyWith<$Res> {
  factory _$MeCompanyDtoCopyWith(_MeCompanyDto value, $Res Function(_MeCompanyDto) _then) = __$MeCompanyDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "timeZone") String? timeZone
});




}
/// @nodoc
class __$MeCompanyDtoCopyWithImpl<$Res>
    implements _$MeCompanyDtoCopyWith<$Res> {
  __$MeCompanyDtoCopyWithImpl(this._self, this._then);

  final _MeCompanyDto _self;
  final $Res Function(_MeCompanyDto) _then;

/// Create a copy of MeCompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? timeZone = freezed,}) {
  return _then(_MeCompanyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,timeZone: freezed == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
