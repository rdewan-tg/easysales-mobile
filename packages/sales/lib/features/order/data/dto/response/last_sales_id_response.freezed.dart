// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_sales_id_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LastSalesIdResponse _$LastSalesIdResponseFromJson(Map<String, dynamic> json) {
  return _LastSalesIdResponse.fromJson(json);
}

/// @nodoc
mixin _$LastSalesIdResponse {
  String get status => throw _privateConstructorUsedError;
  int get data => throw _privateConstructorUsedError;

  /// Serializes this LastSalesIdResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastSalesIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastSalesIdResponseCopyWith<LastSalesIdResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastSalesIdResponseCopyWith<$Res> {
  factory $LastSalesIdResponseCopyWith(
    LastSalesIdResponse value,
    $Res Function(LastSalesIdResponse) then,
  ) = _$LastSalesIdResponseCopyWithImpl<$Res, LastSalesIdResponse>;
  @useResult
  $Res call({String status, int data});
}

/// @nodoc
class _$LastSalesIdResponseCopyWithImpl<$Res, $Val extends LastSalesIdResponse>
    implements $LastSalesIdResponseCopyWith<$Res> {
  _$LastSalesIdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastSalesIdResponse
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
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastSalesIdResponseImplCopyWith<$Res>
    implements $LastSalesIdResponseCopyWith<$Res> {
  factory _$$LastSalesIdResponseImplCopyWith(
    _$LastSalesIdResponseImpl value,
    $Res Function(_$LastSalesIdResponseImpl) then,
  ) = __$$LastSalesIdResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int data});
}

/// @nodoc
class __$$LastSalesIdResponseImplCopyWithImpl<$Res>
    extends _$LastSalesIdResponseCopyWithImpl<$Res, _$LastSalesIdResponseImpl>
    implements _$$LastSalesIdResponseImplCopyWith<$Res> {
  __$$LastSalesIdResponseImplCopyWithImpl(
    _$LastSalesIdResponseImpl _value,
    $Res Function(_$LastSalesIdResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastSalesIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$LastSalesIdResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastSalesIdResponseImpl implements _LastSalesIdResponse {
  const _$LastSalesIdResponseImpl({required this.status, required this.data});

  factory _$LastSalesIdResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastSalesIdResponseImplFromJson(json);

  @override
  final String status;
  @override
  final int data;

  @override
  String toString() {
    return 'LastSalesIdResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastSalesIdResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of LastSalesIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastSalesIdResponseImplCopyWith<_$LastSalesIdResponseImpl> get copyWith =>
      __$$LastSalesIdResponseImplCopyWithImpl<_$LastSalesIdResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LastSalesIdResponseImplToJson(this);
  }
}

abstract class _LastSalesIdResponse implements LastSalesIdResponse {
  const factory _LastSalesIdResponse({
    required final String status,
    required final int data,
  }) = _$LastSalesIdResponseImpl;

  factory _LastSalesIdResponse.fromJson(Map<String, dynamic> json) =
      _$LastSalesIdResponseImpl.fromJson;

  @override
  String get status;
  @override
  int get data;

  /// Create a copy of LastSalesIdResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastSalesIdResponseImplCopyWith<_$LastSalesIdResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
