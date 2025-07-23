// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_site_visit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpdateSiteVisitRequest _$UpdateSiteVisitRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateSiteVisitRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSiteVisitRequest {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeOut')
  String get timeOut => throw _privateConstructorUsedError;

  /// Serializes this UpdateSiteVisitRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSiteVisitRequestCopyWith<UpdateSiteVisitRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSiteVisitRequestCopyWith<$Res> {
  factory $UpdateSiteVisitRequestCopyWith(
    UpdateSiteVisitRequest value,
    $Res Function(UpdateSiteVisitRequest) then,
  ) = _$UpdateSiteVisitRequestCopyWithImpl<$Res, UpdateSiteVisitRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'timeOut') String timeOut,
  });
}

/// @nodoc
class _$UpdateSiteVisitRequestCopyWithImpl<
  $Res,
  $Val extends UpdateSiteVisitRequest
>
    implements $UpdateSiteVisitRequestCopyWith<$Res> {
  _$UpdateSiteVisitRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? timeOut = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            timeOut: null == timeOut
                ? _value.timeOut
                : timeOut // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateSiteVisitRequestImplCopyWith<$Res>
    implements $UpdateSiteVisitRequestCopyWith<$Res> {
  factory _$$UpdateSiteVisitRequestImplCopyWith(
    _$UpdateSiteVisitRequestImpl value,
    $Res Function(_$UpdateSiteVisitRequestImpl) then,
  ) = __$$UpdateSiteVisitRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'timeOut') String timeOut,
  });
}

/// @nodoc
class __$$UpdateSiteVisitRequestImplCopyWithImpl<$Res>
    extends
        _$UpdateSiteVisitRequestCopyWithImpl<$Res, _$UpdateSiteVisitRequestImpl>
    implements _$$UpdateSiteVisitRequestImplCopyWith<$Res> {
  __$$UpdateSiteVisitRequestImplCopyWithImpl(
    _$UpdateSiteVisitRequestImpl _value,
    $Res Function(_$UpdateSiteVisitRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? timeOut = null}) {
    return _then(
      _$UpdateSiteVisitRequestImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        timeOut: null == timeOut
            ? _value.timeOut
            : timeOut // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSiteVisitRequestImpl implements _UpdateSiteVisitRequest {
  const _$UpdateSiteVisitRequestImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'timeOut') required this.timeOut,
  });

  factory _$UpdateSiteVisitRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSiteVisitRequestImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'timeOut')
  final String timeOut;

  @override
  String toString() {
    return 'UpdateSiteVisitRequest(id: $id, timeOut: $timeOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSiteVisitRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeOut, timeOut) || other.timeOut == timeOut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, timeOut);

  /// Create a copy of UpdateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSiteVisitRequestImplCopyWith<_$UpdateSiteVisitRequestImpl>
  get copyWith =>
      __$$UpdateSiteVisitRequestImplCopyWithImpl<_$UpdateSiteVisitRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSiteVisitRequestImplToJson(this);
  }
}

abstract class _UpdateSiteVisitRequest implements UpdateSiteVisitRequest {
  const factory _UpdateSiteVisitRequest({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'timeOut') required final String timeOut,
  }) = _$UpdateSiteVisitRequestImpl;

  factory _UpdateSiteVisitRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSiteVisitRequestImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'timeOut')
  String get timeOut;

  /// Create a copy of UpdateSiteVisitRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSiteVisitRequestImplCopyWith<_$UpdateSiteVisitRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
