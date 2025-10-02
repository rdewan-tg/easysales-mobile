// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_day_site_visit_report_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToDaySiteVisitReportResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") ToDaySiteVisitReportData get data;
/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToDaySiteVisitReportResponseCopyWith<ToDaySiteVisitReportResponse> get copyWith => _$ToDaySiteVisitReportResponseCopyWithImpl<ToDaySiteVisitReportResponse>(this as ToDaySiteVisitReportResponse, _$identity);

  /// Serializes this ToDaySiteVisitReportResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDaySiteVisitReportResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ToDaySiteVisitReportResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $ToDaySiteVisitReportResponseCopyWith<$Res>  {
  factory $ToDaySiteVisitReportResponseCopyWith(ToDaySiteVisitReportResponse value, $Res Function(ToDaySiteVisitReportResponse) _then) = _$ToDaySiteVisitReportResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ToDaySiteVisitReportData data
});


$ToDaySiteVisitReportDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ToDaySiteVisitReportResponseCopyWithImpl<$Res>
    implements $ToDaySiteVisitReportResponseCopyWith<$Res> {
  _$ToDaySiteVisitReportResponseCopyWithImpl(this._self, this._then);

  final ToDaySiteVisitReportResponse _self;
  final $Res Function(ToDaySiteVisitReportResponse) _then;

/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ToDaySiteVisitReportData,
  ));
}
/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToDaySiteVisitReportDataCopyWith<$Res> get data {
  
  return $ToDaySiteVisitReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ToDaySiteVisitReportResponse].
extension ToDaySiteVisitReportResponsePatterns on ToDaySiteVisitReportResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToDaySiteVisitReportResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToDaySiteVisitReportResponse value)  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToDaySiteVisitReportResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ToDaySiteVisitReportData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ToDaySiteVisitReportData data)  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ToDaySiteVisitReportData data)?  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToDaySiteVisitReportResponse implements ToDaySiteVisitReportResponse {
  const _ToDaySiteVisitReportResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _ToDaySiteVisitReportResponse.fromJson(Map<String, dynamic> json) => _$ToDaySiteVisitReportResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  ToDaySiteVisitReportData data;

/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToDaySiteVisitReportResponseCopyWith<_ToDaySiteVisitReportResponse> get copyWith => __$ToDaySiteVisitReportResponseCopyWithImpl<_ToDaySiteVisitReportResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToDaySiteVisitReportResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToDaySiteVisitReportResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ToDaySiteVisitReportResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ToDaySiteVisitReportResponseCopyWith<$Res> implements $ToDaySiteVisitReportResponseCopyWith<$Res> {
  factory _$ToDaySiteVisitReportResponseCopyWith(_ToDaySiteVisitReportResponse value, $Res Function(_ToDaySiteVisitReportResponse) _then) = __$ToDaySiteVisitReportResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ToDaySiteVisitReportData data
});


@override $ToDaySiteVisitReportDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ToDaySiteVisitReportResponseCopyWithImpl<$Res>
    implements _$ToDaySiteVisitReportResponseCopyWith<$Res> {
  __$ToDaySiteVisitReportResponseCopyWithImpl(this._self, this._then);

  final _ToDaySiteVisitReportResponse _self;
  final $Res Function(_ToDaySiteVisitReportResponse) _then;

/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_ToDaySiteVisitReportResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ToDaySiteVisitReportData,
  ));
}

/// Create a copy of ToDaySiteVisitReportResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ToDaySiteVisitReportDataCopyWith<$Res> get data {
  
  return $ToDaySiteVisitReportDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ToDaySiteVisitReportData {

@JsonKey(name: "totalUniqueVisits") int get totalUniqueVisits;@JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> get visitDetails;
/// Create a copy of ToDaySiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToDaySiteVisitReportDataCopyWith<ToDaySiteVisitReportData> get copyWith => _$ToDaySiteVisitReportDataCopyWithImpl<ToDaySiteVisitReportData>(this as ToDaySiteVisitReportData, _$identity);

  /// Serializes this ToDaySiteVisitReportData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDaySiteVisitReportData&&(identical(other.totalUniqueVisits, totalUniqueVisits) || other.totalUniqueVisits == totalUniqueVisits)&&const DeepCollectionEquality().equals(other.visitDetails, visitDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUniqueVisits,const DeepCollectionEquality().hash(visitDetails));

@override
String toString() {
  return 'ToDaySiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
}


}

/// @nodoc
abstract mixin class $ToDaySiteVisitReportDataCopyWith<$Res>  {
  factory $ToDaySiteVisitReportDataCopyWith(ToDaySiteVisitReportData value, $Res Function(ToDaySiteVisitReportData) _then) = _$ToDaySiteVisitReportDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,@JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> visitDetails
});




}
/// @nodoc
class _$ToDaySiteVisitReportDataCopyWithImpl<$Res>
    implements $ToDaySiteVisitReportDataCopyWith<$Res> {
  _$ToDaySiteVisitReportDataCopyWithImpl(this._self, this._then);

  final ToDaySiteVisitReportData _self;
  final $Res Function(ToDaySiteVisitReportData) _then;

/// Create a copy of ToDaySiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalUniqueVisits = null,Object? visitDetails = null,}) {
  return _then(_self.copyWith(
totalUniqueVisits: null == totalUniqueVisits ? _self.totalUniqueVisits : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
as int,visitDetails: null == visitDetails ? _self.visitDetails : visitDetails // ignore: cast_nullable_to_non_nullable
as List<ToDaySiteVisitDetail>,
  ));
}

}


/// Adds pattern-matching-related methods to [ToDaySiteVisitReportData].
extension ToDaySiteVisitReportDataPatterns on ToDaySiteVisitReportData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToDaySiteVisitReportData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToDaySiteVisitReportData value)  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToDaySiteVisitReportData value)?  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ToDaySiteVisitDetail> visitDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ToDaySiteVisitDetail> visitDetails)  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "totalUniqueVisits")  int totalUniqueVisits, @JsonKey(name: "visitDetails")  List<ToDaySiteVisitDetail> visitDetails)?  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitReportData() when $default != null:
return $default(_that.totalUniqueVisits,_that.visitDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToDaySiteVisitReportData implements ToDaySiteVisitReportData {
  const _ToDaySiteVisitReportData({@JsonKey(name: "totalUniqueVisits") required this.totalUniqueVisits, @JsonKey(name: "visitDetails") required final  List<ToDaySiteVisitDetail> visitDetails}): _visitDetails = visitDetails;
  factory _ToDaySiteVisitReportData.fromJson(Map<String, dynamic> json) => _$ToDaySiteVisitReportDataFromJson(json);

@override@JsonKey(name: "totalUniqueVisits") final  int totalUniqueVisits;
 final  List<ToDaySiteVisitDetail> _visitDetails;
@override@JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> get visitDetails {
  if (_visitDetails is EqualUnmodifiableListView) return _visitDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visitDetails);
}


/// Create a copy of ToDaySiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToDaySiteVisitReportDataCopyWith<_ToDaySiteVisitReportData> get copyWith => __$ToDaySiteVisitReportDataCopyWithImpl<_ToDaySiteVisitReportData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToDaySiteVisitReportDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToDaySiteVisitReportData&&(identical(other.totalUniqueVisits, totalUniqueVisits) || other.totalUniqueVisits == totalUniqueVisits)&&const DeepCollectionEquality().equals(other._visitDetails, _visitDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalUniqueVisits,const DeepCollectionEquality().hash(_visitDetails));

@override
String toString() {
  return 'ToDaySiteVisitReportData(totalUniqueVisits: $totalUniqueVisits, visitDetails: $visitDetails)';
}


}

/// @nodoc
abstract mixin class _$ToDaySiteVisitReportDataCopyWith<$Res> implements $ToDaySiteVisitReportDataCopyWith<$Res> {
  factory _$ToDaySiteVisitReportDataCopyWith(_ToDaySiteVisitReportData value, $Res Function(_ToDaySiteVisitReportData) _then) = __$ToDaySiteVisitReportDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "totalUniqueVisits") int totalUniqueVisits,@JsonKey(name: "visitDetails") List<ToDaySiteVisitDetail> visitDetails
});




}
/// @nodoc
class __$ToDaySiteVisitReportDataCopyWithImpl<$Res>
    implements _$ToDaySiteVisitReportDataCopyWith<$Res> {
  __$ToDaySiteVisitReportDataCopyWithImpl(this._self, this._then);

  final _ToDaySiteVisitReportData _self;
  final $Res Function(_ToDaySiteVisitReportData) _then;

/// Create a copy of ToDaySiteVisitReportData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalUniqueVisits = null,Object? visitDetails = null,}) {
  return _then(_ToDaySiteVisitReportData(
totalUniqueVisits: null == totalUniqueVisits ? _self.totalUniqueVisits : totalUniqueVisits // ignore: cast_nullable_to_non_nullable
as int,visitDetails: null == visitDetails ? _self._visitDetails : visitDetails // ignore: cast_nullable_to_non_nullable
as List<ToDaySiteVisitDetail>,
  ));
}


}


/// @nodoc
mixin _$ToDaySiteVisitDetail {

@JsonKey(name: "customerId") String get customerId;@JsonKey(name: "customerName") String get customerName;@JsonKey(name: "customerAddress") String get customerAddress;
/// Create a copy of ToDaySiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToDaySiteVisitDetailCopyWith<ToDaySiteVisitDetail> get copyWith => _$ToDaySiteVisitDetailCopyWithImpl<ToDaySiteVisitDetail>(this as ToDaySiteVisitDetail, _$identity);

  /// Serializes this ToDaySiteVisitDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToDaySiteVisitDetail&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,customerName,customerAddress);

@override
String toString() {
  return 'ToDaySiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress)';
}


}

/// @nodoc
abstract mixin class $ToDaySiteVisitDetailCopyWith<$Res>  {
  factory $ToDaySiteVisitDetailCopyWith(ToDaySiteVisitDetail value, $Res Function(ToDaySiteVisitDetail) _then) = _$ToDaySiteVisitDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "customerAddress") String customerAddress
});




}
/// @nodoc
class _$ToDaySiteVisitDetailCopyWithImpl<$Res>
    implements $ToDaySiteVisitDetailCopyWith<$Res> {
  _$ToDaySiteVisitDetailCopyWithImpl(this._self, this._then);

  final ToDaySiteVisitDetail _self;
  final $Res Function(ToDaySiteVisitDetail) _then;

/// Create a copy of ToDaySiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = null,Object? customerName = null,Object? customerAddress = null,}) {
  return _then(_self.copyWith(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ToDaySiteVisitDetail].
extension ToDaySiteVisitDetailPatterns on ToDaySiteVisitDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToDaySiteVisitDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToDaySiteVisitDetail value)  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToDaySiteVisitDetail value)?  $default,){
final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail() when $default != null:
return $default(_that.customerId,_that.customerName,_that.customerAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress)  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail():
return $default(_that.customerId,_that.customerName,_that.customerAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "customerId")  String customerId, @JsonKey(name: "customerName")  String customerName, @JsonKey(name: "customerAddress")  String customerAddress)?  $default,) {final _that = this;
switch (_that) {
case _ToDaySiteVisitDetail() when $default != null:
return $default(_that.customerId,_that.customerName,_that.customerAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToDaySiteVisitDetail implements ToDaySiteVisitDetail {
  const _ToDaySiteVisitDetail({@JsonKey(name: "customerId") required this.customerId, @JsonKey(name: "customerName") required this.customerName, @JsonKey(name: "customerAddress") required this.customerAddress});
  factory _ToDaySiteVisitDetail.fromJson(Map<String, dynamic> json) => _$ToDaySiteVisitDetailFromJson(json);

@override@JsonKey(name: "customerId") final  String customerId;
@override@JsonKey(name: "customerName") final  String customerName;
@override@JsonKey(name: "customerAddress") final  String customerAddress;

/// Create a copy of ToDaySiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToDaySiteVisitDetailCopyWith<_ToDaySiteVisitDetail> get copyWith => __$ToDaySiteVisitDetailCopyWithImpl<_ToDaySiteVisitDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToDaySiteVisitDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToDaySiteVisitDetail&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.customerAddress, customerAddress) || other.customerAddress == customerAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,customerName,customerAddress);

@override
String toString() {
  return 'ToDaySiteVisitDetail(customerId: $customerId, customerName: $customerName, customerAddress: $customerAddress)';
}


}

/// @nodoc
abstract mixin class _$ToDaySiteVisitDetailCopyWith<$Res> implements $ToDaySiteVisitDetailCopyWith<$Res> {
  factory _$ToDaySiteVisitDetailCopyWith(_ToDaySiteVisitDetail value, $Res Function(_ToDaySiteVisitDetail) _then) = __$ToDaySiteVisitDetailCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "customerId") String customerId,@JsonKey(name: "customerName") String customerName,@JsonKey(name: "customerAddress") String customerAddress
});




}
/// @nodoc
class __$ToDaySiteVisitDetailCopyWithImpl<$Res>
    implements _$ToDaySiteVisitDetailCopyWith<$Res> {
  __$ToDaySiteVisitDetailCopyWithImpl(this._self, this._then);

  final _ToDaySiteVisitDetail _self;
  final $Res Function(_ToDaySiteVisitDetail) _then;

/// Create a copy of ToDaySiteVisitDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = null,Object? customerName = null,Object? customerAddress = null,}) {
  return _then(_ToDaySiteVisitDetail(
customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,customerAddress: null == customerAddress ? _self.customerAddress : customerAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
