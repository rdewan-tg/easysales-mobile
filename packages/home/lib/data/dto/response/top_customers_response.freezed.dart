// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_customers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopCustomersResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') TopCustomersData get data;
/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCustomersResponseCopyWith<TopCustomersResponse> get copyWith => _$TopCustomersResponseCopyWithImpl<TopCustomersResponse>(this as TopCustomersResponse, _$identity);

  /// Serializes this TopCustomersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCustomersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'TopCustomersResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $TopCustomersResponseCopyWith<$Res>  {
  factory $TopCustomersResponseCopyWith(TopCustomersResponse value, $Res Function(TopCustomersResponse) _then) = _$TopCustomersResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') TopCustomersData data
});


$TopCustomersDataCopyWith<$Res> get data;

}
/// @nodoc
class _$TopCustomersResponseCopyWithImpl<$Res>
    implements $TopCustomersResponseCopyWith<$Res> {
  _$TopCustomersResponseCopyWithImpl(this._self, this._then);

  final TopCustomersResponse _self;
  final $Res Function(TopCustomersResponse) _then;

/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopCustomersData,
  ));
}
/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopCustomersDataCopyWith<$Res> get data {
  
  return $TopCustomersDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopCustomersResponse].
extension TopCustomersResponsePatterns on TopCustomersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCustomersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCustomersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCustomersResponse value)  $default,){
final _that = this;
switch (_that) {
case _TopCustomersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCustomersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TopCustomersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopCustomersData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCustomersResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopCustomersData data)  $default,) {final _that = this;
switch (_that) {
case _TopCustomersResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopCustomersData data)?  $default,) {final _that = this;
switch (_that) {
case _TopCustomersResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCustomersResponse implements TopCustomersResponse {
  const _TopCustomersResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') required this.data});
  factory _TopCustomersResponse.fromJson(Map<String, dynamic> json) => _$TopCustomersResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'data') final  TopCustomersData data;

/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCustomersResponseCopyWith<_TopCustomersResponse> get copyWith => __$TopCustomersResponseCopyWithImpl<_TopCustomersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCustomersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCustomersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'TopCustomersResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TopCustomersResponseCopyWith<$Res> implements $TopCustomersResponseCopyWith<$Res> {
  factory _$TopCustomersResponseCopyWith(_TopCustomersResponse value, $Res Function(_TopCustomersResponse) _then) = __$TopCustomersResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') TopCustomersData data
});


@override $TopCustomersDataCopyWith<$Res> get data;

}
/// @nodoc
class __$TopCustomersResponseCopyWithImpl<$Res>
    implements _$TopCustomersResponseCopyWith<$Res> {
  __$TopCustomersResponseCopyWithImpl(this._self, this._then);

  final _TopCustomersResponse _self;
  final $Res Function(_TopCustomersResponse) _then;

/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_TopCustomersResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopCustomersData,
  ));
}

/// Create a copy of TopCustomersResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopCustomersDataCopyWith<$Res> get data {
  
  return $TopCustomersDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$TopCustomersData {

@JsonKey(name: 'maxY') double get maxY;@JsonKey(name: 'labels') List<String> get labels;@JsonKey(name: 'points') List<TopCustomerChartPointData> get points;
/// Create a copy of TopCustomersData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCustomersDataCopyWith<TopCustomersData> get copyWith => _$TopCustomersDataCopyWithImpl<TopCustomersData>(this as TopCustomersData, _$identity);

  /// Serializes this TopCustomersData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCustomersData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other.labels, labels)&&const DeepCollectionEquality().equals(other.points, points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(labels),const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'TopCustomersData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class $TopCustomersDataCopyWith<$Res>  {
  factory $TopCustomersDataCopyWith(TopCustomersData value, $Res Function(TopCustomersData) _then) = _$TopCustomersDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'maxY') double maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<TopCustomerChartPointData> points
});




}
/// @nodoc
class _$TopCustomersDataCopyWithImpl<$Res>
    implements $TopCustomersDataCopyWith<$Res> {
  _$TopCustomersDataCopyWithImpl(this._self, this._then);

  final TopCustomersData _self;
  final $Res Function(TopCustomersData) _then;

/// Create a copy of TopCustomersData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_self.copyWith(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as double,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<TopCustomerChartPointData>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopCustomersData].
extension TopCustomersDataPatterns on TopCustomersData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCustomersData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCustomersData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCustomersData value)  $default,){
final _that = this;
switch (_that) {
case _TopCustomersData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCustomersData value)?  $default,){
final _that = this;
switch (_that) {
case _TopCustomersData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  double maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopCustomerChartPointData> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCustomersData() when $default != null:
return $default(_that.maxY,_that.labels,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  double maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopCustomerChartPointData> points)  $default,) {final _that = this;
switch (_that) {
case _TopCustomersData():
return $default(_that.maxY,_that.labels,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'maxY')  double maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopCustomerChartPointData> points)?  $default,) {final _that = this;
switch (_that) {
case _TopCustomersData() when $default != null:
return $default(_that.maxY,_that.labels,_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCustomersData implements TopCustomersData {
  const _TopCustomersData({@JsonKey(name: 'maxY') required this.maxY, @JsonKey(name: 'labels') required final  List<String> labels, @JsonKey(name: 'points') required final  List<TopCustomerChartPointData> points}): _labels = labels,_points = points;
  factory _TopCustomersData.fromJson(Map<String, dynamic> json) => _$TopCustomersDataFromJson(json);

@override@JsonKey(name: 'maxY') final  double maxY;
 final  List<String> _labels;
@override@JsonKey(name: 'labels') List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

 final  List<TopCustomerChartPointData> _points;
@override@JsonKey(name: 'points') List<TopCustomerChartPointData> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of TopCustomersData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCustomersDataCopyWith<_TopCustomersData> get copyWith => __$TopCustomersDataCopyWithImpl<_TopCustomersData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCustomersDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCustomersData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other._labels, _labels)&&const DeepCollectionEquality().equals(other._points, _points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(_labels),const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'TopCustomersData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class _$TopCustomersDataCopyWith<$Res> implements $TopCustomersDataCopyWith<$Res> {
  factory _$TopCustomersDataCopyWith(_TopCustomersData value, $Res Function(_TopCustomersData) _then) = __$TopCustomersDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'maxY') double maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<TopCustomerChartPointData> points
});




}
/// @nodoc
class __$TopCustomersDataCopyWithImpl<$Res>
    implements _$TopCustomersDataCopyWith<$Res> {
  __$TopCustomersDataCopyWithImpl(this._self, this._then);

  final _TopCustomersData _self;
  final $Res Function(_TopCustomersData) _then;

/// Create a copy of TopCustomersData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_TopCustomersData(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as double,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<TopCustomerChartPointData>,
  ));
}


}


/// @nodoc
mixin _$TopCustomerChartPointData {

@JsonKey(name: 'x') int get x;@JsonKey(name: 'y') double get y;@JsonKey(name: 'customerId') String get customerId;@JsonKey(name: 'customerName') String get customerName;@JsonKey(name: 'totalQuantitySold') num get totalQuantitySold;
/// Create a copy of TopCustomerChartPointData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCustomerChartPointDataCopyWith<TopCustomerChartPointData> get copyWith => _$TopCustomerChartPointDataCopyWithImpl<TopCustomerChartPointData>(this as TopCustomerChartPointData, _$identity);

  /// Serializes this TopCustomerChartPointData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCustomerChartPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.totalQuantitySold, totalQuantitySold) || other.totalQuantitySold == totalQuantitySold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,customerId,customerName,totalQuantitySold);

@override
String toString() {
  return 'TopCustomerChartPointData(x: $x, y: $y, customerId: $customerId, customerName: $customerName, totalQuantitySold: $totalQuantitySold)';
}


}

/// @nodoc
abstract mixin class $TopCustomerChartPointDataCopyWith<$Res>  {
  factory $TopCustomerChartPointDataCopyWith(TopCustomerChartPointData value, $Res Function(TopCustomerChartPointData) _then) = _$TopCustomerChartPointDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') double y,@JsonKey(name: 'customerId') String customerId,@JsonKey(name: 'customerName') String customerName,@JsonKey(name: 'totalQuantitySold') num totalQuantitySold
});




}
/// @nodoc
class _$TopCustomerChartPointDataCopyWithImpl<$Res>
    implements $TopCustomerChartPointDataCopyWith<$Res> {
  _$TopCustomerChartPointDataCopyWithImpl(this._self, this._then);

  final TopCustomerChartPointData _self;
  final $Res Function(TopCustomerChartPointData) _then;

/// Create a copy of TopCustomerChartPointData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? customerId = null,Object? customerName = null,Object? totalQuantitySold = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,totalQuantitySold: null == totalQuantitySold ? _self.totalQuantitySold : totalQuantitySold // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [TopCustomerChartPointData].
extension TopCustomerChartPointDataPatterns on TopCustomerChartPointData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCustomerChartPointData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCustomerChartPointData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCustomerChartPointData value)  $default,){
final _that = this;
switch (_that) {
case _TopCustomerChartPointData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCustomerChartPointData value)?  $default,){
final _that = this;
switch (_that) {
case _TopCustomerChartPointData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  double y, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCustomerChartPointData() when $default != null:
return $default(_that.x,_that.y,_that.customerId,_that.customerName,_that.totalQuantitySold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  double y, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)  $default,) {final _that = this;
switch (_that) {
case _TopCustomerChartPointData():
return $default(_that.x,_that.y,_that.customerId,_that.customerName,_that.totalQuantitySold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  double y, @JsonKey(name: 'customerId')  String customerId, @JsonKey(name: 'customerName')  String customerName, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)?  $default,) {final _that = this;
switch (_that) {
case _TopCustomerChartPointData() when $default != null:
return $default(_that.x,_that.y,_that.customerId,_that.customerName,_that.totalQuantitySold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCustomerChartPointData implements TopCustomerChartPointData {
  const _TopCustomerChartPointData({@JsonKey(name: 'x') required this.x, @JsonKey(name: 'y') required this.y, @JsonKey(name: 'customerId') required this.customerId, @JsonKey(name: 'customerName') required this.customerName, @JsonKey(name: 'totalQuantitySold') required this.totalQuantitySold});
  factory _TopCustomerChartPointData.fromJson(Map<String, dynamic> json) => _$TopCustomerChartPointDataFromJson(json);

@override@JsonKey(name: 'x') final  int x;
@override@JsonKey(name: 'y') final  double y;
@override@JsonKey(name: 'customerId') final  String customerId;
@override@JsonKey(name: 'customerName') final  String customerName;
@override@JsonKey(name: 'totalQuantitySold') final  num totalQuantitySold;

/// Create a copy of TopCustomerChartPointData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCustomerChartPointDataCopyWith<_TopCustomerChartPointData> get copyWith => __$TopCustomerChartPointDataCopyWithImpl<_TopCustomerChartPointData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCustomerChartPointDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCustomerChartPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.totalQuantitySold, totalQuantitySold) || other.totalQuantitySold == totalQuantitySold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,customerId,customerName,totalQuantitySold);

@override
String toString() {
  return 'TopCustomerChartPointData(x: $x, y: $y, customerId: $customerId, customerName: $customerName, totalQuantitySold: $totalQuantitySold)';
}


}

/// @nodoc
abstract mixin class _$TopCustomerChartPointDataCopyWith<$Res> implements $TopCustomerChartPointDataCopyWith<$Res> {
  factory _$TopCustomerChartPointDataCopyWith(_TopCustomerChartPointData value, $Res Function(_TopCustomerChartPointData) _then) = __$TopCustomerChartPointDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') double y,@JsonKey(name: 'customerId') String customerId,@JsonKey(name: 'customerName') String customerName,@JsonKey(name: 'totalQuantitySold') num totalQuantitySold
});




}
/// @nodoc
class __$TopCustomerChartPointDataCopyWithImpl<$Res>
    implements _$TopCustomerChartPointDataCopyWith<$Res> {
  __$TopCustomerChartPointDataCopyWithImpl(this._self, this._then);

  final _TopCustomerChartPointData _self;
  final $Res Function(_TopCustomerChartPointData) _then;

/// Create a copy of TopCustomerChartPointData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? customerId = null,Object? customerName = null,Object? totalQuantitySold = null,}) {
  return _then(_TopCustomerChartPointData(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,customerId: null == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,totalQuantitySold: null == totalQuantitySold ? _self.totalQuantitySold : totalQuantitySold // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
