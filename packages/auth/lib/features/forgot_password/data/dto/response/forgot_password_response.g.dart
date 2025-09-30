// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
  Map<String, dynamic> json,
) => _ForgotPasswordResponse(
  status: json['status'] as String,
  data: Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ForgotPasswordResponseToJson(
  _ForgotPasswordResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) =>
    _Data(emailSent: json['emailSent'] as bool);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'emailSent': instance.emailSent,
};
