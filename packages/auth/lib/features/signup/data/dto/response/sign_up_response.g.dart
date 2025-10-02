// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    _SignUpResponse(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseToJson(_SignUpResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) =>
    _Data(user: User.fromJson(json['user'] as Map<String, dynamic>));

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'user': instance.user,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  authType: json['authType'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'authType': instance.authType,
};
