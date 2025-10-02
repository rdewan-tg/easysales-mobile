// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'this_month_site_visit_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThisMonthSiteVisitReportResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") ThisMonthSiteVisitReportData get data;
/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThisMonthSiteVisitReportResponseCopyWith<ThisMonthSiteVisitReportResponse> get copyWith => _$ThisMonthSiteVisitReportResponseCopyWithImpl<ThisMonthSiteVisitReportResponse>(this as ThisMonthSiteVisitReportResponse, _$identity);

  /// Serializes this ThisMonthSiteVisitReportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThisMonthSiteVisitReportResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ThisMonthSiteVisitReportResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $ThisMonthSiteVisitReportResponseCopyWith<$Res>  {
  factory $ThisMonthSiteVisitReportResponseCopyWith(ThisMonthSiteVisitReportResponse value, $Res Function(ThisMonthSiteVisitReportResponse) _then) = _$ThisMonthSiteVisitReportResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ThisMonthSiteVisitReportData data
});


$ThisMonthSiteVisitReportDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ThisMonthSiteVisitReportResponseCopyWithImpl<$Res>
    implements $ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  _$ThisMonthSiteVisitReportResponseCopyWithImpl(this._self, this._then);

  final ThisMonthSiteVisitReportResponse _self;
  final $Res Function(ThisMonthSiteVisitReportResponse) _then;

/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ThisMonthSiteVisitReportData,
  ));
}
/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThisMonthSiteVisitReportDataCopyWith<$Res> get data {
  
  return $ThisMonthSiteVisitReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThisMonthSiteVisitReportResponse].
extension ThisMonthSiteVisitReportResponsePatterns on ThisMonthSiteVisitReportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitReportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitReportResponse value)  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThisMonthSiteVisitReportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ThisMonthSiteVisitReportData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ThisMonthSiteVisitReportData data)  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ThisMonthSiteVisitReportData data)?  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThisMonthSiteVisitReportResponse implements ThisMonthSiteVisitReportResponse {
  const _ThisMonthSiteVisitReportResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _ThisMonthSiteVisitReportResponse.fromJson(Map<String, dynamic> json) => _$ThisMonthSiteVisitReportResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  ThisMonthSiteVisitReportData data;

/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThisMonthSiteVisitReportResponseCopyWith<_ThisMonthSiteVisitReportResponse> get copyWith => __$ThisMonthSiteVisitReportResponseCopyWithImpl<_ThisMonthSiteVisitReportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThisMonthSiteVisitReportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThisMonthSiteVisitReportResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ThisMonthSiteVisitReportResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ThisMonthSiteVisitReportResponseCopyWith<$Res> implements $ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  factory _$ThisMonthSiteVisitReportResponseCopyWith(_ThisMonthSiteVisitReportResponse value, $Res Function(_ThisMonthSiteVisitReportResponse) _then) = __$ThisMonthSiteVisitReportResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ThisMonthSiteVisitReportData data
});


@override $ThisMonthSiteVisitReportDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ThisMonthSiteVisitReportResponseCopyWithImpl<$Res>
    implements _$ThisMonthSiteVisitReportResponseCopyWith<$Res> {
  __$ThisMonthSiteVisitReportResponseCopyWithImpl(this._self, this._then);

  final _ThisMonthSiteVisitReportResponse _self;
  final $Res Function(_ThisMonthSiteVisitReportResponse) _then;

/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_ThisMonthSiteVisitReportResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ThisMonthSiteVisitReportData,
  ));
}

/// Create a copy of ThisMonthSiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThisMonthSiteVisitReportDataCopyWith<$Res> get data {
  
  return $ThisMonthSiteVisitReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ThisMonthSiteVisitReportData {

@JsonKey(name: "totalUniqueVisits") int get totalUniqueVisits;@JsonKey(name: "visitDetails") List<ThisMonthSiteVisitDetail> get visitDetails;
/// Create a copy of ThisMonthSiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThisMonthSiteVisitReportDataCopyWith<ThisMonthSiteVisitReportData> get copyWith => _$ThisMonthSiteVisitReportDataCopyWithImpl<ThisMonthSiteVisitReportData>(this as ThisMonthSiteVisitReportData, _$identity);

  /// Serializes this ThisMonthSiteVisitReportData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThisMonthSiteVisitReportData&&(identical(other.totalUniqueVisits, totalUniqueVisits) || other.totalUniqueVisits == totalUniqueVisits)&&const DeepCollectionEquality().equals(other.visitDetails, visitDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUniqueVisits,const DeepCollectionEquality().hash(visitDetails));

@override
String toString() {
  return 'ThisMonthSiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
}


}

/// @nodoc
abstract mixin class $ThisMonthSiteVisitReportDataCopyWith<$Res>  {
  factory $ThisMonthSiteVisitReportDataCopyWith(ThisMonthSiteVisitReportData value, $Res Function(ThisMonthSiteVisitReportData) _then) = _$ThisMonthSiteVisitReportDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,@JsonKey(name: "visitDetails") List<ThisMonthSiteVisitDetail> visitDetails
});




}
/// @nodoc
class _$ThisMonthSiteVisitReportDataCopyWithImpl<$Res>
    implements $ThisMonthSiteVisitReportDataCopyWith<$Res> {
  _$ThisMonthSiteVisitReportDataCopyWithImpl(this._self, this._then);

  final ThisMonthSiteVisitReportData _self;
  final $Res Function(ThisMonthSiteVisitReportData) _then;

/// Create a copy of ThisMonthSiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUniqueVisits = null,Object? visitDetails = null,}) {
  return _then(_self.copyWith(
totalUniqueVisits: null == totalUniqueVisits ? _self.totalUniqueVisits : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
as int,visitDetails: null == visitDetails ? _self.visitDetails : visitDetails // ignore: cast_nullable_to_non_nullable
as List<ThisMonthSiteVisitDetail>,
  ));
}

}


/// Adds pattern-matching-related methods to [ThisMonthSiteVisitReportData].
extension ThisMonthSiteVisitReportDataPatterns on ThisMonthSiteVisitReportData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitReportData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitReportData value)  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThisMonthSiteVisitReportData value)?  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ThisMonthSiteVisitDetail> visitDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData() when $default != null:
return $default(_that.totalUniqueVisits,_that.visitDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ThisMonthSiteVisitDetail> visitDetails)  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData():
return $default(_that.totalUniqueVisits,_that.visitDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ThisMonthSiteVisitDetail> visitDetails)?  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitReportData() when $default != null:
return $default(_that.totalUniqueVisits,_that.visitDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThisMonthSiteVisitReportData implements ThisMonthSiteVisitReportData {
  const _ThisMonthSiteVisitReportData({@JsonKey(name: "totalUniqueVisits") required this.totalUniqueVisits, @JsonKey(name: "visitDetails") required final  List<ThisMonthSiteVisitDetail> visitDetails}): _visitDetails = visitDetails;
  factory _ThisMonthSiteVisitReportData.fromJson(Map<String, dynamic> json) => _$ThisMonthSiteVisitReportDataFromJson(json);

@override@JsonKey(name: "totalUniqueVisits") final  int totalUniqueVisits;
 final  List<ThisMonthSiteVisitDetail> _visitDetails;
@override@JsonKey(name: "visitDetails") List<ThisMonthSiteVisitDetail> get visitDetails {
  if (_visitDetails is EqualUnmodifiableListView) return _visitDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visitDetails);
}


/// Create a copy of ThisMonthSiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThisMonthSiteVisitReportDataCopyWith<_ThisMonthSiteVisitReportData> get copyWith => __$ThisMonthSiteVisitReportDataCopyWithImpl<_ThisMonthSiteVisitReportData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThisMonthSiteVisitReportDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThisMonthSiteVisitReportData&&(identical(other.totalUniqueVisits, totalUniqueVisits) || other.totalUniqueVisits == totalUniqueVisits)&&const DeepCollectionEquality().equals(other._visitDetails, _visitDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUniqueVisits,const DeepCollectionEquality().hash(_visitDetails));

@override
String toString() {
  return 'ThisMonthSiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
}


}

/// @nodoc
abstract mixin class _$ThisMonthSiteVisitReportDataCopyWith<$Res> implements $ThisMonthSiteVisitReportDataCopyWith<$Res> {
  factory _$ThisMonthSiteVisitReportDataCopyWith(_ThisMonthSiteVisitReportData value, $Res Function(_ThisMonthSiteVisitReportData) _then) = __$ThisMonthSiteVisitReportDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,@JsonKey(name: "visitDetails") List<ThisMonthSiteVisitDetail> visitDetails
});




}
/// @nodoc
class __$ThisMonthSiteVisitReportDataCopyWithImpl<$Res>
    implements _$ThisMonthSiteVisitReportDataCopyWith<$Res> {
  __$ThisMonthSiteVisitReportDataCopyWithImpl(this._self, this._then);

  final _ThisMonthSiteVisitReportData _self;
  final $Res Function(_ThisMonthSiteVisitReportData) _then;

/// Create a copy of ThisMonthSiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUniqueVisits = null,Object? visitDetails = null,}) {
  return _then(_ThisMonthSiteVisitReportData(
totalUniqueVisits: null == totalUniqueVisits ? _self.totalUniqueVisits : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
as int,visitDetails: null == visitDetails ? _self._visitDetails : visitDetails // ignore: cast_nullable_to_non_nullable
as List<ThisMonthSiteVisitDetail>,
  ));
}


}


/// @nodoc
mixin _$ThisMonthSiteVisitDetail {

@JsonKey(name: "customerId") String get customerId;@JsonKey(name: "customerName") String get customerName;@JsonKey(name: "customerAddress") String get customerAddress;@JsonKey(name: "visitCount") int get visitCount;
/// Create a copy of ThisMonthSiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThisMonthSiteVisitDetailCopyWith<ThisMonthSiteVisitDetail> get copyWith => _$ThisMonthSiteVisitDetailCopyWithImpl<ThisMonthSiteVisitDetail>(this as ThisMonthSiteVisitDetail, _$identity);

  /// Serializes this ThisMonthSiteVisitDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThisMonthSiteVisitDetail&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.visitCount, visitCount) || other.visitCount == visitCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,customerName,customerAddress,visitCount);

@override
String toString() {
  return 'ThisMonthSiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, visitCount: $visitCount)';
}


}

/// @nodoc
abstract mixin class $ThisMonthSiteVisitDetailCopyWith<$Res>  {
  factory $ThisMonthSiteVisitDetailCopyWith(ThisMonthSiteVisitDetail value, $Res Function(ThisMonthSiteVisitDetail) _then) = _$ThisMonthSiteVisitDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "customerAddress") String customerAddress,@JsonKey(name: "visitCount") int visitCount
});




}
/// @nodoc
class _$ThisMonthSiteVisitDetailCopyWithImpl<$Res>
    implements $ThisMonthSiteVisitDetailCopyWith<$Res> {
  _$ThisMonthSiteVisitDetailCopyWithImpl(this._self, this._then);

  final ThisMonthSiteVisitDetail _self;
  final $Res Function(ThisMonthSiteVisitDetail) _then;

/// Create a copy of ThisMonthSiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? visitCount = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,visitCount: null == visitCount ? _self.visitCount : visitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ThisMonthSiteVisitDetail].
extension ThisMonthSiteVisitDetailPatterns on ThisMonthSiteVisitDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThisMonthSiteVisitDetail value)  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThisMonthSiteVisitDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress, @JsonKey(name: "visitCount")  int visitCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail() when $default != null:
return $default(_that.customerId,_that.customerName,_that.customerAddress,_that.visitCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress, @JsonKey(name: "visitCount")  int visitCount)  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail():
return $default(_that.customerId,_that.customerName,_that.customerAddress,_that.visitCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress, @JsonKey(name: "visitCount")  int visitCount)?  $default,) {final _that = this;
switch (_that) {
case _ThisMonthSiteVisitDetail() when $default != null:
return $default(_that.customerId,_that.customerName,_that.customerAddress,_that.visitCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThisMonthSiteVisitDetail implements ThisMonthSiteVisitDetail {
  const _ThisMonthSiteVisitDetail({@JsonKey(name: "customerId") required this.customerId, @JsonKey(name: "customerName") required this.customerName, @JsonKey(name: "customerAddress") required this.customerAddress, @JsonKey(name: "visitCount") required this.visitCount});
  factory _ThisMonthSiteVisitDetail.fromJson(Map<String, dynamic> json) => _$ThisMonthSiteVisitDetailFromJson(json);

@override@JsonKey(name: "customerId") final  String customerId;
@override@JsonKey(name: "customerName") final  String customerName;
@override@JsonKey(name: "customerAddress") final  String customerAddress;
@override@JsonKey(name: "visitCount") final  int visitCount;

/// Create a copy of ThisMonthSiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThisMonthSiteVisitDetailCopyWith<_ThisMonthSiteVisitDetail> get copyWith => __$ThisMonthSiteVisitDetailCopyWithImpl<_ThisMonthSiteVisitDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThisMonthSiteVisitDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThisMonthSiteVisitDetail&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress)&&(identical(other.visitCount, visitCount) || other.visitCount == visitCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,customerName,customerAddress,visitCount);

@override
String toString() {
  return 'ThisMonthSiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress, visitCount: $visitCount)';
}


}

/// @nodoc
abstract mixin class _$ThisMonthSiteVisitDetailCopyWith<$Res> implements $ThisMonthSiteVisitDetailCopyWith<$Res> {
  factory _$ThisMonthSiteVisitDetailCopyWith(_ThisMonthSiteVisitDetail value, $Res Function(_ThisMonthSiteVisitDetail) _then) = __$ThisMonthSiteVisitDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "customerAddress") String customerAddress,@JsonKey(name: "visitCount") int visitCount
});




}
/// @nodoc
class __$ThisMonthSiteVisitDetailCopyWithImpl<$Res>
    implements _$ThisMonthSiteVisitDetailCopyWith<$Res> {
  __$ThisMonthSiteVisitDetailCopyWithImpl(this._self, this._then);

  final _ThisMonthSiteVisitDetail _self;
  final $Res Function(_ThisMonthSiteVisitDetail) _then;

/// Create a copy of ThisMonthSiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? customerName = null,Object? customerAddress = null,Object? visitCount = null,}) {
  return _then(_ThisMonthSiteVisitDetail(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,visitCount: null == visitCount ? _self.visitCount : visitCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
