// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompanySettingResponse _$CompanySettingResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CompanySettingResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanySettingResponse {
  String get status => throw _privateConstructorUsedError;
  CompanySettingDto get data => throw _privateConstructorUsedError;

  /// Serializes this CompanySettingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanySettingResponseCopyWith<CompanySettingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySettingResponseCopyWith<$Res> {
  factory $CompanySettingResponseCopyWith(
    CompanySettingResponse value,
    $Res Function(CompanySettingResponse) then,
  ) = _$CompanySettingResponseCopyWithImpl<$Res, CompanySettingResponse>;
  @useResult
  $Res call({String status, CompanySettingDto data});

  $CompanySettingDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$CompanySettingResponseCopyWithImpl<
  $Res,
  $Val extends CompanySettingResponse
>
    implements $CompanySettingResponseCopyWith<$Res> {
  _$CompanySettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as CompanySettingDto,
          )
          as $Val,
    );
  }

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanySettingDtoCopyWith<$Res> get data {
    return $CompanySettingDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanySettingResponseImplCopyWith<$Res>
    implements $CompanySettingResponseCopyWith<$Res> {
  factory _$$CompanySettingResponseImplCopyWith(
    _$CompanySettingResponseImpl value,
    $Res Function(_$CompanySettingResponseImpl) then,
  ) = __$$CompanySettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, CompanySettingDto data});

  @override
  $CompanySettingDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$CompanySettingResponseImplCopyWithImpl<$Res>
    extends
        _$CompanySettingResponseCopyWithImpl<$Res, _$CompanySettingResponseImpl>
    implements _$$CompanySettingResponseImplCopyWith<$Res> {
  __$$CompanySettingResponseImplCopyWithImpl(
    _$CompanySettingResponseImpl _value,
    $Res Function(_$CompanySettingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$CompanySettingResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as CompanySettingDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanySettingResponseImpl implements _CompanySettingResponse {
  const _$CompanySettingResponseImpl({
    required this.status,
    required this.data,
  });

  factory _$CompanySettingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanySettingResponseImplFromJson(json);

  @override
  final String status;
  @override
  final CompanySettingDto data;

  @override
  String toString() {
    return 'CompanySettingResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanySettingResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanySettingResponseImplCopyWith<_$CompanySettingResponseImpl>
  get copyWith =>
      __$$CompanySettingResponseImplCopyWithImpl<_$CompanySettingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanySettingResponseImplToJson(this);
  }
}

abstract class _CompanySettingResponse implements CompanySettingResponse {
  const factory _CompanySettingResponse({
    required final String status,
    required final CompanySettingDto data,
  }) = _$CompanySettingResponseImpl;

  factory _CompanySettingResponse.fromJson(Map<String, dynamic> json) =
      _$CompanySettingResponseImpl.fromJson;

  @override
  String get status;
  @override
  CompanySettingDto get data;

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanySettingResponseImplCopyWith<_$CompanySettingResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CompanySettingDto _$CompanySettingDtoFromJson(Map<String, dynamic> json) {
  return _CompanySettingDto.fromJson(json);
}

/// @nodoc
mixin _$CompanySettingDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "timeZone")
  String get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: "isSiteVisitEnabled")
  bool get isSiteVisitEnabled => throw _privateConstructorUsedError;

  /// Serializes this CompanySettingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanySettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanySettingDtoCopyWith<CompanySettingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySettingDtoCopyWith<$Res> {
  factory $CompanySettingDtoCopyWith(
    CompanySettingDto value,
    $Res Function(CompanySettingDto) then,
  ) = _$CompanySettingDtoCopyWithImpl<$Res, CompanySettingDto>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled,
  });
}

/// @nodoc
class _$CompanySettingDtoCopyWithImpl<$Res, $Val extends CompanySettingDto>
    implements $CompanySettingDtoCopyWith<$Res> {
  _$CompanySettingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanySettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? timeZone = null,
    Object? isSiteVisitEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
            timeZone: null == timeZone
                ? _value.timeZone
                : timeZone // ignore: cast_nullable_to_non_nullable
                      as String,
            isSiteVisitEnabled: null == isSiteVisitEnabled
                ? _value.isSiteVisitEnabled
                : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompanySettingDtoImplCopyWith<$Res>
    implements $CompanySettingDtoCopyWith<$Res> {
  factory _$$CompanySettingDtoImplCopyWith(
    _$CompanySettingDtoImpl value,
    $Res Function(_$CompanySettingDtoImpl) then,
  ) = __$$CompanySettingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "isSiteVisitEnabled") bool isSiteVisitEnabled,
  });
}

/// @nodoc
class __$$CompanySettingDtoImplCopyWithImpl<$Res>
    extends _$CompanySettingDtoCopyWithImpl<$Res, _$CompanySettingDtoImpl>
    implements _$$CompanySettingDtoImplCopyWith<$Res> {
  __$$CompanySettingDtoImplCopyWithImpl(
    _$CompanySettingDtoImpl _value,
    $Res Function(_$CompanySettingDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanySettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyId = null,
    Object? timeZone = null,
    Object? isSiteVisitEnabled = null,
  }) {
    return _then(
      _$CompanySettingDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
        timeZone: null == timeZone
            ? _value.timeZone
            : timeZone // ignore: cast_nullable_to_non_nullable
                  as String,
        isSiteVisitEnabled: null == isSiteVisitEnabled
            ? _value.isSiteVisitEnabled
            : isSiteVisitEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanySettingDtoImpl implements _CompanySettingDto {
  const _$CompanySettingDtoImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "companyId") required this.companyId,
    @JsonKey(name: "timeZone") required this.timeZone,
    @JsonKey(name: "isSiteVisitEnabled") required this.isSiteVisitEnabled,
  });

  factory _$CompanySettingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanySettingDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "timeZone")
  final String timeZone;
  @override
  @JsonKey(name: "isSiteVisitEnabled")
  final bool isSiteVisitEnabled;

  @override
  String toString() {
    return 'CompanySettingDto(id: $id, companyId: $companyId, timeZone: $timeZone, isSiteVisitEnabled: $isSiteVisitEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanySettingDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.isSiteVisitEnabled, isSiteVisitEnabled) ||
                other.isSiteVisitEnabled == isSiteVisitEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, companyId, timeZone, isSiteVisitEnabled);

  /// Create a copy of CompanySettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanySettingDtoImplCopyWith<_$CompanySettingDtoImpl> get copyWith =>
      __$$CompanySettingDtoImplCopyWithImpl<_$CompanySettingDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanySettingDtoImplToJson(this);
  }
}

abstract class _CompanySettingDto implements CompanySettingDto {
  const factory _CompanySettingDto({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "companyId") required final int companyId,
    @JsonKey(name: "timeZone") required final String timeZone,
    @JsonKey(name: "isSiteVisitEnabled") required final bool isSiteVisitEnabled,
  }) = _$CompanySettingDtoImpl;

  factory _CompanySettingDto.fromJson(Map<String, dynamic> json) =
      _$CompanySettingDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "timeZone")
  String get timeZone;
  @override
  @JsonKey(name: "isSiteVisitEnabled")
  bool get isSiteVisitEnabled;

  /// Create a copy of CompanySettingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanySettingDtoImplCopyWith<_$CompanySettingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
