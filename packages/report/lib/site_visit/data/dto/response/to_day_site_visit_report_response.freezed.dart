// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_day_site_visit_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ToDaySiteVisitReportResponse _$ToDaySiteVisitReportResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ToDaySiteVisitReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ToDaySiteVisitReportResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ToDaySiteVisitReportData get data => throw _privateConstructorUsedError;

  /// Serializes this ToDaySiteVisitReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToDaySiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDaySiteVisitReportResponseCopyWith<ToDaySiteVisitReportResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDaySiteVisitReportResponseCopyWith<$Res> {
  factory $ToDaySiteVisitReportResponseCopyWith(
    ToDaySiteVisitReportResponse value,
    $Res Function(ToDaySiteVisitReportResponse) then,
  ) =
      _$ToDaySiteVisitReportResponseCopyWithImpl<
        $Res,
        ToDaySiteVisitReportResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") ToDaySiteVisitReportData data,
  });

  $ToDaySiteVisitReportDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ToDaySiteVisitReportResponseCopyWithImpl<
  $Res,
  $Val extends ToDaySiteVisitReportResponse
>
    implements $ToDaySiteVisitReportResponseCopyWith<$Res> {
  _$ToDaySiteVisitReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDaySiteVisitReportResponse
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
                      as ToDaySiteVisitReportData,
          )
          as $Val,
    );
  }

  /// Create a copy of ToDaySiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToDaySiteVisitReportDataCopyWith<$Res> get data {
    return $ToDaySiteVisitReportDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToDaySiteVisitReportResponseImplCopyWith<$Res>
    implements $ToDaySiteVisitReportResponseCopyWith<$Res> {
  factory _$$ToDaySiteVisitReportResponseImplCopyWith(
    _$ToDaySiteVisitReportResponseImpl value,
    $Res Function(_$ToDaySiteVisitReportResponseImpl) then,
  ) = __$$ToDaySiteVisitReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") ToDaySiteVisitReportData data,
  });

  @override
  $ToDaySiteVisitReportDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ToDaySiteVisitReportResponseImplCopyWithImpl<$Res>
    extends
        _$ToDaySiteVisitReportResponseCopyWithImpl<
          $Res,
          _$ToDaySiteVisitReportResponseImpl
        >
    implements _$$ToDaySiteVisitReportResponseImplCopyWith<$Res> {
  __$$ToDaySiteVisitReportResponseImplCopyWithImpl(
    _$ToDaySiteVisitReportResponseImpl _value,
    $Res Function(_$ToDaySiteVisitReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToDaySiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$ToDaySiteVisitReportResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ToDaySiteVisitReportData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDaySiteVisitReportResponseImpl
    implements _ToDaySiteVisitReportResponse {
  const _$ToDaySiteVisitReportResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") required this.data,
  });

  factory _$ToDaySiteVisitReportResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ToDaySiteVisitReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final ToDaySiteVisitReportData data;

  @override
  String toString() {
    return 'ToDaySiteVisitReportResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDaySiteVisitReportResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of ToDaySiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDaySiteVisitReportResponseImplCopyWith<
    _$ToDaySiteVisitReportResponseImpl
  >
  get copyWith =>
      __$$ToDaySiteVisitReportResponseImplCopyWithImpl<
        _$ToDaySiteVisitReportResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDaySiteVisitReportResponseImplToJson(this);
  }
}

abstract class _ToDaySiteVisitReportResponse
    implements ToDaySiteVisitReportResponse {
  const factory _ToDaySiteVisitReportResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") required final ToDaySiteVisitReportData data,
  }) = _$ToDaySiteVisitReportResponseImpl;

  factory _ToDaySiteVisitReportResponse.fromJson(Map<String, dynamic> json) =
      _$ToDaySiteVisitReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  ToDaySiteVisitReportData get data;

  /// Create a copy of ToDaySiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDaySiteVisitReportResponseImplCopyWith<
    _$ToDaySiteVisitReportResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

ToDaySiteVisitReportData _$ToDaySiteVisitReportDataFromJson(
  Map<String, dynamic> json,
) {
  return _ToDaySiteVisitReportData.fromJson(json);
}

/// @nodoc
mixin _$ToDaySiteVisitReportData {
  @JsonKey(name: "totalUniqueVisits")
  int get totalUniqueVisits => throw _privateConstructorUsedError;
  @JsonKey(name: "visitDetails")
  List<ToDaySiteVisitDetail> get visitDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this ToDaySiteVisitReportData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToDaySiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDaySiteVisitReportDataCopyWith<ToDaySiteVisitReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDaySiteVisitReportDataCopyWith<$Res> {
  factory $ToDaySiteVisitReportDataCopyWith(
    ToDaySiteVisitReportData value,
    $Res Function(ToDaySiteVisitReportData) then,
  ) = _$ToDaySiteVisitReportDataCopyWithImpl<$Res, ToDaySiteVisitReportData>;
  @useResult
  $Res call({
    @JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,
    @JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> visitDetails,
  });
}

/// @nodoc
class _$ToDaySiteVisitReportDataCopyWithImpl<
  $Res,
  $Val extends ToDaySiteVisitReportData
>
    implements $ToDaySiteVisitReportDataCopyWith<$Res> {
  _$ToDaySiteVisitReportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDaySiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalUniqueVisits = null, Object? visitDetails = null}) {
    return _then(
      _value.copyWith(
            totalUniqueVisits: null == totalUniqueVisits
                ? _value.totalUniqueVisits
                : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
                      as int,
            visitDetails: null == visitDetails
                ? _value.visitDetails
                : visitDetails // ignore: cast_nullable_to_non_nullable
                      as List<ToDaySiteVisitDetail>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ToDaySiteVisitReportDataImplCopyWith<$Res>
    implements $ToDaySiteVisitReportDataCopyWith<$Res> {
  factory _$$ToDaySiteVisitReportDataImplCopyWith(
    _$ToDaySiteVisitReportDataImpl value,
    $Res Function(_$ToDaySiteVisitReportDataImpl) then,
  ) = __$$ToDaySiteVisitReportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,
    @JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> visitDetails,
  });
}

/// @nodoc
class __$$ToDaySiteVisitReportDataImplCopyWithImpl<$Res>
    extends
        _$ToDaySiteVisitReportDataCopyWithImpl<
          $Res,
          _$ToDaySiteVisitReportDataImpl
        >
    implements _$$ToDaySiteVisitReportDataImplCopyWith<$Res> {
  __$$ToDaySiteVisitReportDataImplCopyWithImpl(
    _$ToDaySiteVisitReportDataImpl _value,
    $Res Function(_$ToDaySiteVisitReportDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToDaySiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? totalUniqueVisits = null, Object? visitDetails = null}) {
    return _then(
      _$ToDaySiteVisitReportDataImpl(
        totalUniqueVisits: null == totalUniqueVisits
            ? _value.totalUniqueVisits
            : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
                  as int,
        visitDetails: null == visitDetails
            ? _value._visitDetails
            : visitDetails // ignore: cast_nullable_to_non_nullable
                  as List<ToDaySiteVisitDetail>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDaySiteVisitReportDataImpl implements _ToDaySiteVisitReportData {
  const _$ToDaySiteVisitReportDataImpl({
    @JsonKey(name: "totalUniqueVisits") required this.totalUniqueVisits,
    @JsonKey(name: "visitDetails")
    required final List<ToDaySiteVisitDetail> visitDetails,
  }) : _visitDetails = visitDetails;

  factory _$ToDaySiteVisitReportDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDaySiteVisitReportDataImplFromJson(json);

  @override
  @JsonKey(name: "totalUniqueVisits")
  final int totalUniqueVisits;
  final List<ToDaySiteVisitDetail> _visitDetails;
  @override
  @JsonKey(name: "visitDetails")
  List<ToDaySiteVisitDetail> get visitDetails {
    if (_visitDetails is EqualUnmodifiableListView) return _visitDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visitDetails);
  }

  @override
  String toString() {
    return 'ToDaySiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDaySiteVisitReportDataImpl &&
            (identical(other.totalUniqueVisits, totalUniqueVisits) ||
                other.totalUniqueVisits == totalUniqueVisits) &&
            const DeepCollectionEquality().equals(
              other._visitDetails,
              _visitDetails,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalUniqueVisits,
    const DeepCollectionEquality().hash(_visitDetails),
  );

  /// Create a copy of ToDaySiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDaySiteVisitReportDataImplCopyWith<_$ToDaySiteVisitReportDataImpl>
  get copyWith =>
      __$$ToDaySiteVisitReportDataImplCopyWithImpl<
        _$ToDaySiteVisitReportDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDaySiteVisitReportDataImplToJson(this);
  }
}

abstract class _ToDaySiteVisitReportData implements ToDaySiteVisitReportData {
  const factory _ToDaySiteVisitReportData({
    @JsonKey(name: "totalUniqueVisits") required final int totalUniqueVisits,
    @JsonKey(name: "visitDetails")
    required final List<ToDaySiteVisitDetail> visitDetails,
  }) = _$ToDaySiteVisitReportDataImpl;

  factory _ToDaySiteVisitReportData.fromJson(Map<String, dynamic> json) =
      _$ToDaySiteVisitReportDataImpl.fromJson;

  @override
  @JsonKey(name: "totalUniqueVisits")
  int get totalUniqueVisits;
  @override
  @JsonKey(name: "visitDetails")
  List<ToDaySiteVisitDetail> get visitDetails;

  /// Create a copy of ToDaySiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDaySiteVisitReportDataImplCopyWith<_$ToDaySiteVisitReportDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ToDaySiteVisitDetail _$ToDaySiteVisitDetailFromJson(Map<String, dynamic> json) {
  return _ToDaySiteVisitDetail.fromJson(json);
}

/// @nodoc
mixin _$ToDaySiteVisitDetail {
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerName")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customerAddress")
  String get customerAddress => throw _privateConstructorUsedError;

  /// Serializes this ToDaySiteVisitDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ToDaySiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDaySiteVisitDetailCopyWith<ToDaySiteVisitDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDaySiteVisitDetailCopyWith<$Res> {
  factory $ToDaySiteVisitDetailCopyWith(
    ToDaySiteVisitDetail value,
    $Res Function(ToDaySiteVisitDetail) then,
  ) = _$ToDaySiteVisitDetailCopyWithImpl<$Res, ToDaySiteVisitDetail>;
  @useResult
  $Res call({
    @JsonKey(name: "customerId") String customerId,
    @JsonKey(name: "customerName") String customerName,
    @JsonKey(name: "customerAddress") String customerAddress,
  });
}

/// @nodoc
class _$ToDaySiteVisitDetailCopyWithImpl<
  $Res,
  $Val extends ToDaySiteVisitDetail
>
    implements $ToDaySiteVisitDetailCopyWith<$Res> {
  _$ToDaySiteVisitDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDaySiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
  }) {
    return _then(
      _value.copyWith(
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String,
            customerName: null == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String,
            customerAddress: null == customerAddress
                ? _value.customerAddress
                : customerAddress // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ToDaySiteVisitDetailImplCopyWith<$Res>
    implements $ToDaySiteVisitDetailCopyWith<$Res> {
  factory _$$ToDaySiteVisitDetailImplCopyWith(
    _$ToDaySiteVisitDetailImpl value,
    $Res Function(_$ToDaySiteVisitDetailImpl) then,
  ) = __$$ToDaySiteVisitDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "customerId") String customerId,
    @JsonKey(name: "customerName") String customerName,
    @JsonKey(name: "customerAddress") String customerAddress,
  });
}

/// @nodoc
class __$$ToDaySiteVisitDetailImplCopyWithImpl<$Res>
    extends _$ToDaySiteVisitDetailCopyWithImpl<$Res, _$ToDaySiteVisitDetailImpl>
    implements _$$ToDaySiteVisitDetailImplCopyWith<$Res> {
  __$$ToDaySiteVisitDetailImplCopyWithImpl(
    _$ToDaySiteVisitDetailImpl _value,
    $Res Function(_$ToDaySiteVisitDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ToDaySiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
  }) {
    return _then(
      _$ToDaySiteVisitDetailImpl(
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String,
        customerName: null == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String,
        customerAddress: null == customerAddress
            ? _value.customerAddress
            : customerAddress // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDaySiteVisitDetailImpl implements _ToDaySiteVisitDetail {
  const _$ToDaySiteVisitDetailImpl({
    @JsonKey(name: "customerId") required this.customerId,
    @JsonKey(name: "customerName") required this.customerName,
    @JsonKey(name: "customerAddress") required this.customerAddress,
  });

  factory _$ToDaySiteVisitDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDaySiteVisitDetailImplFromJson(json);

  @override
  @JsonKey(name: "customerId")
  final String customerId;
  @override
  @JsonKey(name: "customerName")
  final String customerName;
  @override
  @JsonKey(name: "customerAddress")
  final String customerAddress;

  @override
  String toString() {
    return 'ToDaySiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDaySiteVisitDetailImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerId, customerName, customerAddress);

  /// Create a copy of ToDaySiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDaySiteVisitDetailImplCopyWith<_$ToDaySiteVisitDetailImpl>
  get copyWith =>
      __$$ToDaySiteVisitDetailImplCopyWithImpl<_$ToDaySiteVisitDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDaySiteVisitDetailImplToJson(this);
  }
}

abstract class _ToDaySiteVisitDetail implements ToDaySiteVisitDetail {
  const factory _ToDaySiteVisitDetail({
    @JsonKey(name: "customerId") required final String customerId,
    @JsonKey(name: "customerName") required final String customerName,
    @JsonKey(name: "customerAddress") required final String customerAddress,
  }) = _$ToDaySiteVisitDetailImpl;

  factory _ToDaySiteVisitDetail.fromJson(Map<String, dynamic> json) =
      _$ToDaySiteVisitDetailImpl.fromJson;

  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @override
  @JsonKey(name: "customerName")
  String get customerName;
  @override
  @JsonKey(name: "customerAddress")
  String get customerAddress;

  /// Create a copy of ToDaySiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDaySiteVisitDetailImplCopyWith<_$ToDaySiteVisitDetailImpl>
  get copyWith => throw _privateConstructorUsedError;
}
