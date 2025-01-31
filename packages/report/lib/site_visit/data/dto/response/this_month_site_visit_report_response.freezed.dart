// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'this_month_site_visit_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThisMonthSiteVisitReportResponse _$ThisMonthSiteVisitReportResponseFromJson(
    Map<String, dynamic> json) {
  return _ThisMonthSiteVisitReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ThisMonthSiteVisitReportResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ThisMonthSiteVisitReportData get data => throw _privateConstructorUsedError;

  /// Serializes this ThisMonthSiteVisitReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThisMonthSiteVisitReportResponseCopyWith<ThisMonthSiteVisitReportResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  factory $ThisMonthSiteVisitReportResponseCopyWith(
          ThisMonthSiteVisitReportResponse value,
          $Res Function(ThisMonthSiteVisitReportResponse) then) =
      _$ThisMonthSiteVisitReportResponseCopyWithImpl<$Res,
          ThisMonthSiteVisitReportResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "data") ThisMonthSiteVisitReportData data});

  $ThisMonthSiteVisitReportDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ThisMonthSiteVisitReportResponseCopyWithImpl<$Res,
        $Val extends ThisMonthSiteVisitReportResponse>
    implements $ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  _$ThisMonthSiteVisitReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThisMonthSiteVisitReportData,
    ) as $Val);
  }

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ThisMonthSiteVisitReportDataCopyWith<$Res> get data {
    return $ThisMonthSiteVisitReportDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThisMonthSiteVisitReportResponseImplCopyWith<$Res>
    implements $ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  factory _$$ThisMonthSiteVisitReportResponseImplCopyWith(
          _$ThisMonthSiteVisitReportResponseImpl value,
          $Res Function(_$ThisMonthSiteVisitReportResponseImpl) then) =
      __$$ThisMonthSiteVisitReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String status,
      @JsonKey(name: "data") ThisMonthSiteVisitReportData data});

  @override
  $ThisMonthSiteVisitReportDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ThisMonthSiteVisitReportResponseImplCopyWithImpl<$Res>
    extends _$ThisMonthSiteVisitReportResponseCopyWithImpl<$Res,
        _$ThisMonthSiteVisitReportResponseImpl>
    implements _$$ThisMonthSiteVisitReportResponseImplCopyWith<$Res> {
  __$$ThisMonthSiteVisitReportResponseImplCopyWithImpl(
      _$ThisMonthSiteVisitReportResponseImpl _value,
      $Res Function(_$ThisMonthSiteVisitReportResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$ThisMonthSiteVisitReportResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ThisMonthSiteVisitReportData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThisMonthSiteVisitReportResponseImpl
    implements _ThisMonthSiteVisitReportResponse {
  const _$ThisMonthSiteVisitReportResponseImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "data") required this.data});

  factory _$ThisMonthSiteVisitReportResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ThisMonthSiteVisitReportResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final ThisMonthSiteVisitReportData data;

  @override
  String toString() {
    return 'ThisMonthSiteVisitReportResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisMonthSiteVisitReportResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisMonthSiteVisitReportResponseImplCopyWith<
          _$ThisMonthSiteVisitReportResponseImpl>
      get copyWith => __$$ThisMonthSiteVisitReportResponseImplCopyWithImpl<
          _$ThisMonthSiteVisitReportResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThisMonthSiteVisitReportResponseImplToJson(
      this,
    );
  }
}

abstract class _ThisMonthSiteVisitReportResponse
    implements ThisMonthSiteVisitReportResponse {
  const factory _ThisMonthSiteVisitReportResponse(
          {@JsonKey(name: "status") required final String status,
          @JsonKey(name: "data")
          required final ThisMonthSiteVisitReportData data}) =
      _$ThisMonthSiteVisitReportResponseImpl;

  factory _ThisMonthSiteVisitReportResponse.fromJson(
          Map<String, dynamic> json) =
      _$ThisMonthSiteVisitReportResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  ThisMonthSiteVisitReportData get data;

  /// Create a copy of ThisMonthSiteVisitReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThisMonthSiteVisitReportResponseImplCopyWith<
          _$ThisMonthSiteVisitReportResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ThisMonthSiteVisitReportData _$ThisMonthSiteVisitReportDataFromJson(
    Map<String, dynamic> json) {
  return _ThisMonthSiteVisitReportData.fromJson(json);
}

/// @nodoc
mixin _$ThisMonthSiteVisitReportData {
  @JsonKey(name: "totalUniqueVisits")
  int get totalUniqueVisits => throw _privateConstructorUsedError;
  @JsonKey(name: "visitDetails")
  List<ThisMonthSiteVisitDetail> get visitDetails =>
      throw _privateConstructorUsedError;

  /// Serializes this ThisMonthSiteVisitReportData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThisMonthSiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThisMonthSiteVisitReportDataCopyWith<ThisMonthSiteVisitReportData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisMonthSiteVisitReportDataCopyWith<$Res> {
  factory $ThisMonthSiteVisitReportDataCopyWith(
          ThisMonthSiteVisitReportData value,
          $Res Function(ThisMonthSiteVisitReportData) then) =
      _$ThisMonthSiteVisitReportDataCopyWithImpl<$Res,
          ThisMonthSiteVisitReportData>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,
      @JsonKey(name: "visitDetails")
      List<ThisMonthSiteVisitDetail> visitDetails});
}

/// @nodoc
class _$ThisMonthSiteVisitReportDataCopyWithImpl<$Res,
        $Val extends ThisMonthSiteVisitReportData>
    implements $ThisMonthSiteVisitReportDataCopyWith<$Res> {
  _$ThisMonthSiteVisitReportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThisMonthSiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUniqueVisits = null,
    Object? visitDetails = null,
  }) {
    return _then(_value.copyWith(
      totalUniqueVisits: null == totalUniqueVisits
          ? _value.totalUniqueVisits
          : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
              as int,
      visitDetails: null == visitDetails
          ? _value.visitDetails
          : visitDetails // ignore: cast_nullable_to_non_nullable
              as List<ThisMonthSiteVisitDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThisMonthSiteVisitReportDataImplCopyWith<$Res>
    implements $ThisMonthSiteVisitReportDataCopyWith<$Res> {
  factory _$$ThisMonthSiteVisitReportDataImplCopyWith(
          _$ThisMonthSiteVisitReportDataImpl value,
          $Res Function(_$ThisMonthSiteVisitReportDataImpl) then) =
      __$$ThisMonthSiteVisitReportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,
      @JsonKey(name: "visitDetails")
      List<ThisMonthSiteVisitDetail> visitDetails});
}

/// @nodoc
class __$$ThisMonthSiteVisitReportDataImplCopyWithImpl<$Res>
    extends _$ThisMonthSiteVisitReportDataCopyWithImpl<$Res,
        _$ThisMonthSiteVisitReportDataImpl>
    implements _$$ThisMonthSiteVisitReportDataImplCopyWith<$Res> {
  __$$ThisMonthSiteVisitReportDataImplCopyWithImpl(
      _$ThisMonthSiteVisitReportDataImpl _value,
      $Res Function(_$ThisMonthSiteVisitReportDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisMonthSiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUniqueVisits = null,
    Object? visitDetails = null,
  }) {
    return _then(_$ThisMonthSiteVisitReportDataImpl(
      totalUniqueVisits: null == totalUniqueVisits
          ? _value.totalUniqueVisits
          : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
              as int,
      visitDetails: null == visitDetails
          ? _value._visitDetails
          : visitDetails // ignore: cast_nullable_to_non_nullable
              as List<ThisMonthSiteVisitDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThisMonthSiteVisitReportDataImpl
    implements _ThisMonthSiteVisitReportData {
  const _$ThisMonthSiteVisitReportDataImpl(
      {@JsonKey(name: "totalUniqueVisits") required this.totalUniqueVisits,
      @JsonKey(name: "visitDetails")
      required final List<ThisMonthSiteVisitDetail> visitDetails})
      : _visitDetails = visitDetails;

  factory _$ThisMonthSiteVisitReportDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ThisMonthSiteVisitReportDataImplFromJson(json);

  @override
  @JsonKey(name: "totalUniqueVisits")
  final int totalUniqueVisits;
  final List<ThisMonthSiteVisitDetail> _visitDetails;
  @override
  @JsonKey(name: "visitDetails")
  List<ThisMonthSiteVisitDetail> get visitDetails {
    if (_visitDetails is EqualUnmodifiableListView) return _visitDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_visitDetails);
  }

  @override
  String toString() {
    return 'ThisMonthSiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisMonthSiteVisitReportDataImpl &&
            (identical(other.totalUniqueVisits, totalUniqueVisits) ||
                other.totalUniqueVisits == totalUniqueVisits) &&
            const DeepCollectionEquality()
                .equals(other._visitDetails, _visitDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalUniqueVisits,
      const DeepCollectionEquality().hash(_visitDetails));

  /// Create a copy of ThisMonthSiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisMonthSiteVisitReportDataImplCopyWith<
          _$ThisMonthSiteVisitReportDataImpl>
      get copyWith => __$$ThisMonthSiteVisitReportDataImplCopyWithImpl<
          _$ThisMonthSiteVisitReportDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThisMonthSiteVisitReportDataImplToJson(
      this,
    );
  }
}

abstract class _ThisMonthSiteVisitReportData
    implements ThisMonthSiteVisitReportData {
  const factory _ThisMonthSiteVisitReportData(
      {@JsonKey(name: "totalUniqueVisits") required final int totalUniqueVisits,
      @JsonKey(name: "visitDetails")
      required final List<ThisMonthSiteVisitDetail>
          visitDetails}) = _$ThisMonthSiteVisitReportDataImpl;

  factory _ThisMonthSiteVisitReportData.fromJson(Map<String, dynamic> json) =
      _$ThisMonthSiteVisitReportDataImpl.fromJson;

  @override
  @JsonKey(name: "totalUniqueVisits")
  int get totalUniqueVisits;
  @override
  @JsonKey(name: "visitDetails")
  List<ThisMonthSiteVisitDetail> get visitDetails;

  /// Create a copy of ThisMonthSiteVisitReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThisMonthSiteVisitReportDataImplCopyWith<
          _$ThisMonthSiteVisitReportDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ThisMonthSiteVisitDetail _$ThisMonthSiteVisitDetailFromJson(
    Map<String, dynamic> json) {
  return _ThisMonthSiteVisitDetail.fromJson(json);
}

/// @nodoc
mixin _$ThisMonthSiteVisitDetail {
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerName")
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "customerAddress")
  String get customerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "visitCount")
  int get visitCount => throw _privateConstructorUsedError;

  /// Serializes this ThisMonthSiteVisitDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ThisMonthSiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThisMonthSiteVisitDetailCopyWith<ThisMonthSiteVisitDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThisMonthSiteVisitDetailCopyWith<$Res> {
  factory $ThisMonthSiteVisitDetailCopyWith(ThisMonthSiteVisitDetail value,
          $Res Function(ThisMonthSiteVisitDetail) then) =
      _$ThisMonthSiteVisitDetailCopyWithImpl<$Res, ThisMonthSiteVisitDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "customerName") String customerName,
      @JsonKey(name: "customerAddress") String customerAddress,
      @JsonKey(name: "visitCount") int visitCount});
}

/// @nodoc
class _$ThisMonthSiteVisitDetailCopyWithImpl<$Res,
        $Val extends ThisMonthSiteVisitDetail>
    implements $ThisMonthSiteVisitDetailCopyWith<$Res> {
  _$ThisMonthSiteVisitDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThisMonthSiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? visitCount = null,
  }) {
    return _then(_value.copyWith(
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
      visitCount: null == visitCount
          ? _value.visitCount
          : visitCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThisMonthSiteVisitDetailImplCopyWith<$Res>
    implements $ThisMonthSiteVisitDetailCopyWith<$Res> {
  factory _$$ThisMonthSiteVisitDetailImplCopyWith(
          _$ThisMonthSiteVisitDetailImpl value,
          $Res Function(_$ThisMonthSiteVisitDetailImpl) then) =
      __$$ThisMonthSiteVisitDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customerId") String customerId,
      @JsonKey(name: "customerName") String customerName,
      @JsonKey(name: "customerAddress") String customerAddress,
      @JsonKey(name: "visitCount") int visitCount});
}

/// @nodoc
class __$$ThisMonthSiteVisitDetailImplCopyWithImpl<$Res>
    extends _$ThisMonthSiteVisitDetailCopyWithImpl<$Res,
        _$ThisMonthSiteVisitDetailImpl>
    implements _$$ThisMonthSiteVisitDetailImplCopyWith<$Res> {
  __$$ThisMonthSiteVisitDetailImplCopyWithImpl(
      _$ThisMonthSiteVisitDetailImpl _value,
      $Res Function(_$ThisMonthSiteVisitDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ThisMonthSiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? customerName = null,
    Object? customerAddress = null,
    Object? visitCount = null,
  }) {
    return _then(_$ThisMonthSiteVisitDetailImpl(
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
      visitCount: null == visitCount
          ? _value.visitCount
          : visitCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThisMonthSiteVisitDetailImpl implements _ThisMonthSiteVisitDetail {
  const _$ThisMonthSiteVisitDetailImpl(
      {@JsonKey(name: "customerId") required this.customerId,
      @JsonKey(name: "customerName") required this.customerName,
      @JsonKey(name: "customerAddress") required this.customerAddress,
      @JsonKey(name: "visitCount") required this.visitCount});

  factory _$ThisMonthSiteVisitDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThisMonthSiteVisitDetailImplFromJson(json);

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
  @JsonKey(name: "visitCount")
  final int visitCount;

  @override
  String toString() {
    return 'ThisMonthSiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, visitCount: $visitCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThisMonthSiteVisitDetailImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.visitCount, visitCount) ||
                other.visitCount == visitCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, customerId, customerName, customerAddress, visitCount);

  /// Create a copy of ThisMonthSiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThisMonthSiteVisitDetailImplCopyWith<_$ThisMonthSiteVisitDetailImpl>
      get copyWith => __$$ThisMonthSiteVisitDetailImplCopyWithImpl<
          _$ThisMonthSiteVisitDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThisMonthSiteVisitDetailImplToJson(
      this,
    );
  }
}

abstract class _ThisMonthSiteVisitDetail implements ThisMonthSiteVisitDetail {
  const factory _ThisMonthSiteVisitDetail(
      {@JsonKey(name: "customerId") required final String customerId,
      @JsonKey(name: "customerName") required final String customerName,
      @JsonKey(name: "customerAddress") required final String customerAddress,
      @JsonKey(name: "visitCount")
      required final int visitCount}) = _$ThisMonthSiteVisitDetailImpl;

  factory _ThisMonthSiteVisitDetail.fromJson(Map<String, dynamic> json) =
      _$ThisMonthSiteVisitDetailImpl.fromJson;

  @override
  @JsonKey(name: "customerId")
  String get customerId;
  @override
  @JsonKey(name: "customerName")
  String get customerName;
  @override
  @JsonKey(name: "customerAddress")
  String get customerAddress;
  @override
  @JsonKey(name: "visitCount")
  int get visitCount;

  /// Create a copy of ThisMonthSiteVisitDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThisMonthSiteVisitDetailImplCopyWith<_$ThisMonthSiteVisitDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
