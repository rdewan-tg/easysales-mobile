// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_merchandiser_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UploadMerchandiserPhotoResponse _$UploadMerchandiserPhotoResponseFromJson(
  Map<String, dynamic> json,
) {
  return _UploadMerchandiserPhotoResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadMerchandiserPhotoResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String get data => throw _privateConstructorUsedError;

  /// Serializes this UploadMerchandiserPhotoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadMerchandiserPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadMerchandiserPhotoResponseCopyWith<UploadMerchandiserPhotoResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadMerchandiserPhotoResponseCopyWith<$Res> {
  factory $UploadMerchandiserPhotoResponseCopyWith(
    UploadMerchandiserPhotoResponse value,
    $Res Function(UploadMerchandiserPhotoResponse) then,
  ) =
      _$UploadMerchandiserPhotoResponseCopyWithImpl<
        $Res,
        UploadMerchandiserPhotoResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") String data,
  });
}

/// @nodoc
class _$UploadMerchandiserPhotoResponseCopyWithImpl<
  $Res,
  $Val extends UploadMerchandiserPhotoResponse
>
    implements $UploadMerchandiserPhotoResponseCopyWith<$Res> {
  _$UploadMerchandiserPhotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadMerchandiserPhotoResponse
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
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadMerchandiserPhotoResponseImplCopyWith<$Res>
    implements $UploadMerchandiserPhotoResponseCopyWith<$Res> {
  factory _$$UploadMerchandiserPhotoResponseImplCopyWith(
    _$UploadMerchandiserPhotoResponseImpl value,
    $Res Function(_$UploadMerchandiserPhotoResponseImpl) then,
  ) = __$$UploadMerchandiserPhotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") String data,
  });
}

/// @nodoc
class __$$UploadMerchandiserPhotoResponseImplCopyWithImpl<$Res>
    extends
        _$UploadMerchandiserPhotoResponseCopyWithImpl<
          $Res,
          _$UploadMerchandiserPhotoResponseImpl
        >
    implements _$$UploadMerchandiserPhotoResponseImplCopyWith<$Res> {
  __$$UploadMerchandiserPhotoResponseImplCopyWithImpl(
    _$UploadMerchandiserPhotoResponseImpl _value,
    $Res Function(_$UploadMerchandiserPhotoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadMerchandiserPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$UploadMerchandiserPhotoResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadMerchandiserPhotoResponseImpl
    implements _UploadMerchandiserPhotoResponse {
  const _$UploadMerchandiserPhotoResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") required this.data,
  });

  factory _$UploadMerchandiserPhotoResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UploadMerchandiserPhotoResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final String data;

  @override
  String toString() {
    return 'UploadMerchandiserPhotoResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadMerchandiserPhotoResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of UploadMerchandiserPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadMerchandiserPhotoResponseImplCopyWith<
    _$UploadMerchandiserPhotoResponseImpl
  >
  get copyWith =>
      __$$UploadMerchandiserPhotoResponseImplCopyWithImpl<
        _$UploadMerchandiserPhotoResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadMerchandiserPhotoResponseImplToJson(this);
  }
}

abstract class _UploadMerchandiserPhotoResponse
    implements UploadMerchandiserPhotoResponse {
  const factory _UploadMerchandiserPhotoResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") required final String data,
  }) = _$UploadMerchandiserPhotoResponseImpl;

  factory _UploadMerchandiserPhotoResponse.fromJson(Map<String, dynamic> json) =
      _$UploadMerchandiserPhotoResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  String get data;

  /// Create a copy of UploadMerchandiserPhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadMerchandiserPhotoResponseImplCopyWith<
    _$UploadMerchandiserPhotoResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
