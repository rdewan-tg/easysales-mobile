// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_line_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SalesLineResponse _$SalesLineResponseFromJson(Map<String, dynamic> json) {
  return _SalesLineResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesLineResponse {
  String get status => throw _privateConstructorUsedError;
  SalesLineData get data => throw _privateConstructorUsedError;

  /// Serializes this SalesLineResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesLineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesLineResponseCopyWith<SalesLineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesLineResponseCopyWith<$Res> {
  factory $SalesLineResponseCopyWith(
    SalesLineResponse value,
    $Res Function(SalesLineResponse) then,
  ) = _$SalesLineResponseCopyWithImpl<$Res, SalesLineResponse>;
  @useResult
  $Res call({String status, SalesLineData data});

  $SalesLineDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SalesLineResponseCopyWithImpl<$Res, $Val extends SalesLineResponse>
    implements $SalesLineResponseCopyWith<$Res> {
  _$SalesLineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesLineResponse
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
                      as SalesLineData,
          )
          as $Val,
    );
  }

  /// Create a copy of SalesLineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SalesLineDataCopyWith<$Res> get data {
    return $SalesLineDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesLineResponseImplCopyWith<$Res>
    implements $SalesLineResponseCopyWith<$Res> {
  factory _$$SalesLineResponseImplCopyWith(
    _$SalesLineResponseImpl value,
    $Res Function(_$SalesLineResponseImpl) then,
  ) = __$$SalesLineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, SalesLineData data});

  @override
  $SalesLineDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SalesLineResponseImplCopyWithImpl<$Res>
    extends _$SalesLineResponseCopyWithImpl<$Res, _$SalesLineResponseImpl>
    implements _$$SalesLineResponseImplCopyWith<$Res> {
  __$$SalesLineResponseImplCopyWithImpl(
    _$SalesLineResponseImpl _value,
    $Res Function(_$SalesLineResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesLineResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$SalesLineResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SalesLineData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesLineResponseImpl implements _SalesLineResponse {
  const _$SalesLineResponseImpl({required this.status, required this.data});

  factory _$SalesLineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesLineResponseImplFromJson(json);

  @override
  final String status;
  @override
  final SalesLineData data;

  @override
  String toString() {
    return 'SalesLineResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesLineResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of SalesLineResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesLineResponseImplCopyWith<_$SalesLineResponseImpl> get copyWith =>
      __$$SalesLineResponseImplCopyWithImpl<_$SalesLineResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesLineResponseImplToJson(this);
  }
}

abstract class _SalesLineResponse implements SalesLineResponse {
  const factory _SalesLineResponse({
    required final String status,
    required final SalesLineData data,
  }) = _$SalesLineResponseImpl;

  factory _SalesLineResponse.fromJson(Map<String, dynamic> json) =
      _$SalesLineResponseImpl.fromJson;

  @override
  String get status;
  @override
  SalesLineData get data;

  /// Create a copy of SalesLineResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesLineResponseImplCopyWith<_$SalesLineResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SalesLineData _$SalesLineDataFromJson(Map<String, dynamic> json) {
  return _SalesLineData.fromJson(json);
}

/// @nodoc
mixin _$SalesLineData {
  int get count => throw _privateConstructorUsedError;

  /// Serializes this SalesLineData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesLineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesLineDataCopyWith<SalesLineData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesLineDataCopyWith<$Res> {
  factory $SalesLineDataCopyWith(
    SalesLineData value,
    $Res Function(SalesLineData) then,
  ) = _$SalesLineDataCopyWithImpl<$Res, SalesLineData>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$SalesLineDataCopyWithImpl<$Res, $Val extends SalesLineData>
    implements $SalesLineDataCopyWith<$Res> {
  _$SalesLineDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesLineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null}) {
    return _then(
      _value.copyWith(
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SalesLineDataImplCopyWith<$Res>
    implements $SalesLineDataCopyWith<$Res> {
  factory _$$SalesLineDataImplCopyWith(
    _$SalesLineDataImpl value,
    $Res Function(_$SalesLineDataImpl) then,
  ) = __$$SalesLineDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$SalesLineDataImplCopyWithImpl<$Res>
    extends _$SalesLineDataCopyWithImpl<$Res, _$SalesLineDataImpl>
    implements _$$SalesLineDataImplCopyWith<$Res> {
  __$$SalesLineDataImplCopyWithImpl(
    _$SalesLineDataImpl _value,
    $Res Function(_$SalesLineDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SalesLineData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? count = null}) {
    return _then(
      _$SalesLineDataImpl(
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesLineDataImpl implements _SalesLineData {
  _$SalesLineDataImpl({required this.count});

  factory _$SalesLineDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesLineDataImplFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'SalesLineData(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesLineDataImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of SalesLineData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesLineDataImplCopyWith<_$SalesLineDataImpl> get copyWith =>
      __$$SalesLineDataImplCopyWithImpl<_$SalesLineDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesLineDataImplToJson(this);
  }
}

abstract class _SalesLineData implements SalesLineData {
  factory _SalesLineData({required final int count}) = _$SalesLineDataImpl;

  factory _SalesLineData.fromJson(Map<String, dynamic> json) =
      _$SalesLineDataImpl.fromJson;

  @override
  int get count;

  /// Create a copy of SalesLineData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesLineDataImplCopyWith<_$SalesLineDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
