// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") Data get data;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LoginResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") Data data
});


$DataCopyWith<$Res> get data;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  Data data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  Data data)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  Data data)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  Data data;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LoginResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") Data data
});


@override $DataCopyWith<$Res> get data;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_LoginResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

@JsonKey(name: "token") TokenDto get token;@JsonKey(name: "user") UserDto get user;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'Data(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "token") TokenDto token,@JsonKey(name: "user") UserDto user
});


$TokenDtoCopyWith<$Res> get token;$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? user = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as TokenDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenDtoCopyWith<$Res> get token {
  
  return $TokenDtoCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  TokenDto token, @JsonKey(name: "user")  UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "token")  TokenDto token, @JsonKey(name: "user")  UserDto user)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.token,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "token")  TokenDto token, @JsonKey(name: "user")  UserDto user)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({@JsonKey(name: "token") required this.token, @JsonKey(name: "user") required this.user});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override@JsonKey(name: "token") final  TokenDto token;
@override@JsonKey(name: "user") final  UserDto user;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user);

@override
String toString() {
  return 'Data(token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "token") TokenDto token,@JsonKey(name: "user") UserDto user
});


@override $TokenDtoCopyWith<$Res> get token;@override $UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? user = null,}) {
  return _then(_Data(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as TokenDto,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenDtoCopyWith<$Res> get token {
  
  return $TokenDtoCopyWith<$Res>(_self.token, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$TokenDto {

@JsonKey(name: "access_token") String get accessToken;@JsonKey(name: "refresh_token") String get refreshToken;
/// Create a copy of TokenDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenDtoCopyWith<TokenDto> get copyWith => _$TokenDtoCopyWithImpl<TokenDto>(this as TokenDto, _$identity);

  /// Serializes this TokenDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken);

@override
String toString() {
  return 'TokenDto(accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $TokenDtoCopyWith<$Res>  {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) _then) = _$TokenDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class _$TokenDtoCopyWithImpl<$Res>
    implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._self, this._then);

  final TokenDto _self;
  final $Res Function(TokenDto) _then;

/// Create a copy of TokenDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenDto].
extension TokenDtoPatterns on TokenDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenDto value)  $default,){
final _that = this;
switch (_that) {
case _TokenDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenDto value)?  $default,){
final _that = this;
switch (_that) {
case _TokenDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "refresh_token")  String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "refresh_token")  String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _TokenDto():
return $default(_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "access_token")  String accessToken, @JsonKey(name: "refresh_token")  String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _TokenDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenDto implements TokenDto {
  const _TokenDto({@JsonKey(name: "access_token") required this.accessToken, @JsonKey(name: "refresh_token") required this.refreshToken});
  factory _TokenDto.fromJson(Map<String, dynamic> json) => _$TokenDtoFromJson(json);

@override@JsonKey(name: "access_token") final  String accessToken;
@override@JsonKey(name: "refresh_token") final  String refreshToken;

/// Create a copy of TokenDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenDtoCopyWith<_TokenDto> get copyWith => __$TokenDtoCopyWithImpl<_TokenDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken);

@override
String toString() {
  return 'TokenDto(accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$TokenDtoCopyWith<$Res> implements $TokenDtoCopyWith<$Res> {
  factory _$TokenDtoCopyWith(_TokenDto value, $Res Function(_TokenDto) _then) = __$TokenDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "access_token") String accessToken,@JsonKey(name: "refresh_token") String refreshToken
});




}
/// @nodoc
class __$TokenDtoCopyWithImpl<$Res>
    implements _$TokenDtoCopyWith<$Res> {
  __$TokenDtoCopyWithImpl(this._self, this._then);

  final _TokenDto _self;
  final $Res Function(_TokenDto) _then;

/// Create a copy of TokenDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_TokenDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") String get name;@JsonKey(name: "email") String get email;@JsonKey(name: "phoneNumber") String? get phoneNumber;@JsonKey(name: "photo") String? get photo;@JsonKey(name: "role") List<RoleDto> get role;@JsonKey(name: "company") CompanyDto get company;@JsonKey(name: "deviceSetting") DeviceSettingDto get deviceSetting;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.photo, photo) || other.photo == photo)&&const DeepCollectionEquality().equals(other.role, role)&&(identical(other.company, company) || other.company == company)&&(identical(other.deviceSetting, deviceSetting) || other.deviceSetting == deviceSetting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,photo,const DeepCollectionEquality().hash(role),company,deviceSetting);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, photo: $photo, role: $role, company: $company, deviceSetting: $deviceSetting)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "email") String email,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "photo") String? photo,@JsonKey(name: "role") List<RoleDto> role,@JsonKey(name: "company") CompanyDto company,@JsonKey(name: "deviceSetting") DeviceSettingDto deviceSetting
});


$CompanyDtoCopyWith<$Res> get company;$DeviceSettingDtoCopyWith<$Res> get deviceSetting;

}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? photo = freezed,Object? role = null,Object? company = null,Object? deviceSetting = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyDto,deviceSetting: null == deviceSetting ? _self.deviceSetting : deviceSetting // ignore: cast_nullable_to_non_nullable
as DeviceSettingDto,
  ));
}
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDtoCopyWith<$Res> get company {
  
  return $CompanyDtoCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingDtoCopyWith<$Res> get deviceSetting {
  
  return $DeviceSettingDtoCopyWith<$Res>(_self.deviceSetting, (value) {
    return _then(_self.copyWith(deviceSetting: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "role")  List<RoleDto> role, @JsonKey(name: "company")  CompanyDto company, @JsonKey(name: "deviceSetting")  DeviceSettingDto deviceSetting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.role,_that.company,_that.deviceSetting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "role")  List<RoleDto> role, @JsonKey(name: "company")  CompanyDto company, @JsonKey(name: "deviceSetting")  DeviceSettingDto deviceSetting)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.role,_that.company,_that.deviceSetting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "email")  String email, @JsonKey(name: "phoneNumber")  String? phoneNumber, @JsonKey(name: "photo")  String? photo, @JsonKey(name: "role")  List<RoleDto> role, @JsonKey(name: "company")  CompanyDto company, @JsonKey(name: "deviceSetting")  DeviceSettingDto deviceSetting)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phoneNumber,_that.photo,_that.role,_that.company,_that.deviceSetting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "email") required this.email, @JsonKey(name: "phoneNumber") this.phoneNumber, @JsonKey(name: "photo") this.photo, @JsonKey(name: "role") required final  List<RoleDto> role, @JsonKey(name: "company") required this.company, @JsonKey(name: "deviceSetting") required this.deviceSetting}): _role = role;
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "email") final  String email;
@override@JsonKey(name: "phoneNumber") final  String? phoneNumber;
@override@JsonKey(name: "photo") final  String? photo;
 final  List<RoleDto> _role;
@override@JsonKey(name: "role") List<RoleDto> get role {
  if (_role is EqualUnmodifiableListView) return _role;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_role);
}

@override@JsonKey(name: "company") final  CompanyDto company;
@override@JsonKey(name: "deviceSetting") final  DeviceSettingDto deviceSetting;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.photo, photo) || other.photo == photo)&&const DeepCollectionEquality().equals(other._role, _role)&&(identical(other.company, company) || other.company == company)&&(identical(other.deviceSetting, deviceSetting) || other.deviceSetting == deviceSetting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phoneNumber,photo,const DeepCollectionEquality().hash(_role),company,deviceSetting);

@override
String toString() {
  return 'UserDto(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, photo: $photo, role: $role, company: $company, deviceSetting: $deviceSetting)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "email") String email,@JsonKey(name: "phoneNumber") String? phoneNumber,@JsonKey(name: "photo") String? photo,@JsonKey(name: "role") List<RoleDto> role,@JsonKey(name: "company") CompanyDto company,@JsonKey(name: "deviceSetting") DeviceSettingDto deviceSetting
});


@override $CompanyDtoCopyWith<$Res> get company;@override $DeviceSettingDtoCopyWith<$Res> get deviceSetting;

}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? phoneNumber = freezed,Object? photo = freezed,Object? role = null,Object? company = null,Object? deviceSetting = null,}) {
  return _then(_UserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self._role : role // ignore: cast_nullable_to_non_nullable
as List<RoleDto>,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyDto,deviceSetting: null == deviceSetting ? _self.deviceSetting : deviceSetting // ignore: cast_nullable_to_non_nullable
as DeviceSettingDto,
  ));
}

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyDtoCopyWith<$Res> get company {
  
  return $CompanyDtoCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceSettingDtoCopyWith<$Res> get deviceSetting {
  
  return $DeviceSettingDtoCopyWith<$Res>(_self.deviceSetting, (value) {
    return _then(_self.copyWith(deviceSetting: value));
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
mixin _$CompanyDto {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") String get name;@JsonKey(name: "companyCode") String? get companyCode;@JsonKey(name: "countryCode") String? get countryCode;@JsonKey(name: "timeZone") String get timeZone;@JsonKey(name: "isSiteVisitEnabled") bool get isSiteVisitEnabled;
/// Create a copy of CompanyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDtoCopyWith<CompanyDto> get copyWith => _$CompanyDtoCopyWithImpl<CompanyDto>(this as CompanyDto, _$identity);

  /// Serializes this CompanyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isSiteVisitEnabled, isSiteVisitEnabled) || other.isSiteVisitEnabled == isSiteVisitEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,companyCode,countryCode,timeZone,isSiteVisitEnabled);

@override
String toString() {
  return 'CompanyDto(id: $id, name: $name, companyCode: $companyCode, countryCode: $countryCode, timeZone: $timeZone, isSiteVisitEnabled: $isSiteVisitEnabled)';
}


}

/// @nodoc
abstract mixin class $CompanyDtoCopyWith<$Res>  {
  factory $CompanyDtoCopyWith(CompanyDto value, $Res Function(CompanyDto) _then) = _$CompanyDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "companyCode") String? companyCode,@JsonKey(name: "countryCode") String? countryCode,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled
});




}
/// @nodoc
class _$CompanyDtoCopyWithImpl<$Res>
    implements $CompanyDtoCopyWith<$Res> {
  _$CompanyDtoCopyWithImpl(this._self, this._then);

  final CompanyDto _self;
  final $Res Function(CompanyDto) _then;

/// Create a copy of CompanyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? companyCode = freezed,Object? countryCode = freezed,Object? timeZone = null,Object? isSiteVisitEnabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,companyCode: freezed == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,isSiteVisitEnabled: null == isSiteVisitEnabled ? _self.isSiteVisitEnabled : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyDto].
extension CompanyDtoPatterns on CompanyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyDto value)  $default,){
final _that = this;
switch (_that) {
case _CompanyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "companyCode")  String? companyCode, @JsonKey(name: "countryCode")  String? countryCode, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyDto() when $default != null:
return $default(_that.id,_that.name,_that.companyCode,_that.countryCode,_that.timeZone,_that.isSiteVisitEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "companyCode")  String? companyCode, @JsonKey(name: "countryCode")  String? countryCode, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)  $default,) {final _that = this;
switch (_that) {
case _CompanyDto():
return $default(_that.id,_that.name,_that.companyCode,_that.countryCode,_that.timeZone,_that.isSiteVisitEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "companyCode")  String? companyCode, @JsonKey(name: "countryCode")  String? countryCode, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "isSiteVisitEnabled")  bool isSiteVisitEnabled)?  $default,) {final _that = this;
switch (_that) {
case _CompanyDto() when $default != null:
return $default(_that.id,_that.name,_that.companyCode,_that.countryCode,_that.timeZone,_that.isSiteVisitEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyDto implements CompanyDto {
  const _CompanyDto({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "companyCode") this.companyCode, @JsonKey(name: "countryCode") this.countryCode, @JsonKey(name: "timeZone") required this.timeZone, @JsonKey(name: "isSiteVisitEnabled") required this.isSiteVisitEnabled});
  factory _CompanyDto.fromJson(Map<String, dynamic> json) => _$CompanyDtoFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "companyCode") final  String? companyCode;
@override@JsonKey(name: "countryCode") final  String? countryCode;
@override@JsonKey(name: "timeZone") final  String timeZone;
@override@JsonKey(name: "isSiteVisitEnabled") final  bool isSiteVisitEnabled;

/// Create a copy of CompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDtoCopyWith<_CompanyDto> get copyWith => __$CompanyDtoCopyWithImpl<_CompanyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.companyCode, companyCode) || other.companyCode == companyCode)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.isSiteVisitEnabled, isSiteVisitEnabled) || other.isSiteVisitEnabled == isSiteVisitEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,companyCode,countryCode,timeZone,isSiteVisitEnabled);

@override
String toString() {
  return 'CompanyDto(id: $id, name: $name, companyCode: $companyCode, countryCode: $countryCode, timeZone: $timeZone, isSiteVisitEnabled: $isSiteVisitEnabled)';
}


}

/// @nodoc
abstract mixin class _$CompanyDtoCopyWith<$Res> implements $CompanyDtoCopyWith<$Res> {
  factory _$CompanyDtoCopyWith(_CompanyDto value, $Res Function(_CompanyDto) _then) = __$CompanyDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "companyCode") String? companyCode,@JsonKey(name: "countryCode") String? countryCode,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled
});




}
/// @nodoc
class __$CompanyDtoCopyWithImpl<$Res>
    implements _$CompanyDtoCopyWith<$Res> {
  __$CompanyDtoCopyWithImpl(this._self, this._then);

  final _CompanyDto _self;
  final $Res Function(_CompanyDto) _then;

/// Create a copy of CompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? companyCode = freezed,Object? countryCode = freezed,Object? timeZone = null,Object? isSiteVisitEnabled = null,}) {
  return _then(_CompanyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,companyCode: freezed == companyCode ? _self.companyCode : companyCode // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,isSiteVisitEnabled: null == isSiteVisitEnabled ? _self.isSiteVisitEnabled : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$DeviceSettingDto {

@JsonKey(name: "deviceId") String? get deviceId;@JsonKey(name: "salesPersonCode") String? get salesPersonCode;@JsonKey(name: "orderNumberFormat") String? get orderNumberFormat;
/// Create a copy of DeviceSettingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceSettingDtoCopyWith<DeviceSettingDto> get copyWith => _$DeviceSettingDtoCopyWithImpl<DeviceSettingDto>(this as DeviceSettingDto, _$identity);

  /// Serializes this DeviceSettingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceSettingDto&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.orderNumberFormat, orderNumberFormat) || other.orderNumberFormat == orderNumberFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,salesPersonCode,orderNumberFormat);

@override
String toString() {
  return 'DeviceSettingDto(deviceId: $deviceId, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat)';
}


}

/// @nodoc
abstract mixin class $DeviceSettingDtoCopyWith<$Res>  {
  factory $DeviceSettingDtoCopyWith(DeviceSettingDto value, $Res Function(DeviceSettingDto) _then) = _$DeviceSettingDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "deviceId") String? deviceId,@JsonKey(name: "salesPersonCode") String? salesPersonCode,@JsonKey(name: "orderNumberFormat") String? orderNumberFormat
});




}
/// @nodoc
class _$DeviceSettingDtoCopyWithImpl<$Res>
    implements $DeviceSettingDtoCopyWith<$Res> {
  _$DeviceSettingDtoCopyWithImpl(this._self, this._then);

  final DeviceSettingDto _self;
  final $Res Function(DeviceSettingDto) _then;

/// Create a copy of DeviceSettingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? salesPersonCode = freezed,Object? orderNumberFormat = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,salesPersonCode: freezed == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String?,orderNumberFormat: freezed == orderNumberFormat ? _self.orderNumberFormat : orderNumberFormat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceSettingDto].
extension DeviceSettingDtoPatterns on DeviceSettingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceSettingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceSettingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceSettingDto value)  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceSettingDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceSettingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "deviceId")  String? deviceId, @JsonKey(name: "salesPersonCode")  String? salesPersonCode, @JsonKey(name: "orderNumberFormat")  String? orderNumberFormat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceSettingDto() when $default != null:
return $default(_that.deviceId,_that.salesPersonCode,_that.orderNumberFormat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "deviceId")  String? deviceId, @JsonKey(name: "salesPersonCode")  String? salesPersonCode, @JsonKey(name: "orderNumberFormat")  String? orderNumberFormat)  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingDto():
return $default(_that.deviceId,_that.salesPersonCode,_that.orderNumberFormat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "deviceId")  String? deviceId, @JsonKey(name: "salesPersonCode")  String? salesPersonCode, @JsonKey(name: "orderNumberFormat")  String? orderNumberFormat)?  $default,) {final _that = this;
switch (_that) {
case _DeviceSettingDto() when $default != null:
return $default(_that.deviceId,_that.salesPersonCode,_that.orderNumberFormat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceSettingDto implements DeviceSettingDto {
  const _DeviceSettingDto({@JsonKey(name: "deviceId") this.deviceId, @JsonKey(name: "salesPersonCode") this.salesPersonCode, @JsonKey(name: "orderNumberFormat") this.orderNumberFormat});
  factory _DeviceSettingDto.fromJson(Map<String, dynamic> json) => _$DeviceSettingDtoFromJson(json);

@override@JsonKey(name: "deviceId") final  String? deviceId;
@override@JsonKey(name: "salesPersonCode") final  String? salesPersonCode;
@override@JsonKey(name: "orderNumberFormat") final  String? orderNumberFormat;

/// Create a copy of DeviceSettingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceSettingDtoCopyWith<_DeviceSettingDto> get copyWith => __$DeviceSettingDtoCopyWithImpl<_DeviceSettingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceSettingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceSettingDto&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.salesPersonCode, salesPersonCode) || other.salesPersonCode == salesPersonCode)&&(identical(other.orderNumberFormat, orderNumberFormat) || other.orderNumberFormat == orderNumberFormat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,salesPersonCode,orderNumberFormat);

@override
String toString() {
  return 'DeviceSettingDto(deviceId: $deviceId, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat)';
}


}

/// @nodoc
abstract mixin class _$DeviceSettingDtoCopyWith<$Res> implements $DeviceSettingDtoCopyWith<$Res> {
  factory _$DeviceSettingDtoCopyWith(_DeviceSettingDto value, $Res Function(_DeviceSettingDto) _then) = __$DeviceSettingDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "deviceId") String? deviceId,@JsonKey(name: "salesPersonCode") String? salesPersonCode,@JsonKey(name: "orderNumberFormat") String? orderNumberFormat
});




}
/// @nodoc
class __$DeviceSettingDtoCopyWithImpl<$Res>
    implements _$DeviceSettingDtoCopyWith<$Res> {
  __$DeviceSettingDtoCopyWithImpl(this._self, this._then);

  final _DeviceSettingDto _self;
  final $Res Function(_DeviceSettingDto) _then;

/// Create a copy of DeviceSettingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? salesPersonCode = freezed,Object? orderNumberFormat = freezed,}) {
  return _then(_DeviceSettingDto(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,salesPersonCode: freezed == salesPersonCode ? _self.salesPersonCode : salesPersonCode // ignore: cast_nullable_to_non_nullable
as String?,orderNumberFormat: freezed == orderNumberFormat ? _self.orderNumberFormat : orderNumberFormat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
