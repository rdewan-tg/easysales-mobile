// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_selling_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopSellingProductsResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') TopSellingProductsData get data;
/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopSellingProductsResponseCopyWith<TopSellingProductsResponse> get copyWith => _$TopSellingProductsResponseCopyWithImpl<TopSellingProductsResponse>(this as TopSellingProductsResponse, _$identity);

  /// Serializes this TopSellingProductsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopSellingProductsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'TopSellingProductsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $TopSellingProductsResponseCopyWith<$Res>  {
  factory $TopSellingProductsResponseCopyWith(TopSellingProductsResponse value, $Res Function(TopSellingProductsResponse) _then) = _$TopSellingProductsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') TopSellingProductsData data
});


$TopSellingProductsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$TopSellingProductsResponseCopyWithImpl<$Res>
    implements $TopSellingProductsResponseCopyWith<$Res> {
  _$TopSellingProductsResponseCopyWithImpl(this._self, this._then);

  final TopSellingProductsResponse _self;
  final $Res Function(TopSellingProductsResponse) _then;

/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopSellingProductsData,
  ));
}
/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopSellingProductsDataCopyWith<$Res> get data {
  
  return $TopSellingProductsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopSellingProductsResponse].
extension TopSellingProductsResponsePatterns on TopSellingProductsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopSellingProductsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopSellingProductsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopSellingProductsResponse value)  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopSellingProductsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopSellingProductsData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopSellingProductsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopSellingProductsData data)  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  TopSellingProductsData data)?  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductsResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopSellingProductsResponse implements TopSellingProductsResponse {
  const _TopSellingProductsResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') required this.data});
  factory _TopSellingProductsResponse.fromJson(Map<String, dynamic> json) => _$TopSellingProductsResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'data') final  TopSellingProductsData data;

/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopSellingProductsResponseCopyWith<_TopSellingProductsResponse> get copyWith => __$TopSellingProductsResponseCopyWithImpl<_TopSellingProductsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopSellingProductsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopSellingProductsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'TopSellingProductsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TopSellingProductsResponseCopyWith<$Res> implements $TopSellingProductsResponseCopyWith<$Res> {
  factory _$TopSellingProductsResponseCopyWith(_TopSellingProductsResponse value, $Res Function(_TopSellingProductsResponse) _then) = __$TopSellingProductsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') TopSellingProductsData data
});


@override $TopSellingProductsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$TopSellingProductsResponseCopyWithImpl<$Res>
    implements _$TopSellingProductsResponseCopyWith<$Res> {
  __$TopSellingProductsResponseCopyWithImpl(this._self, this._then);

  final _TopSellingProductsResponse _self;
  final $Res Function(_TopSellingProductsResponse) _then;

/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_TopSellingProductsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TopSellingProductsData,
  ));
}

/// Create a copy of TopSellingProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopSellingProductsDataCopyWith<$Res> get data {
  
  return $TopSellingProductsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$TopSellingProductsData {

@JsonKey(name: 'maxY') num get maxY;@JsonKey(name: 'labels') List<String> get labels;@JsonKey(name: 'points') List<TopSellingProductChartPointData> get points;
/// Create a copy of TopSellingProductsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopSellingProductsDataCopyWith<TopSellingProductsData> get copyWith => _$TopSellingProductsDataCopyWithImpl<TopSellingProductsData>(this as TopSellingProductsData, _$identity);

  /// Serializes this TopSellingProductsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopSellingProductsData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other.labels, labels)&&const DeepCollectionEquality().equals(other.points, points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(labels),const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'TopSellingProductsData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class $TopSellingProductsDataCopyWith<$Res>  {
  factory $TopSellingProductsDataCopyWith(TopSellingProductsData value, $Res Function(TopSellingProductsData) _then) = _$TopSellingProductsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'maxY') num maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<TopSellingProductChartPointData> points
});




}
/// @nodoc
class _$TopSellingProductsDataCopyWithImpl<$Res>
    implements $TopSellingProductsDataCopyWith<$Res> {
  _$TopSellingProductsDataCopyWithImpl(this._self, this._then);

  final TopSellingProductsData _self;
  final $Res Function(TopSellingProductsData) _then;

/// Create a copy of TopSellingProductsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_self.copyWith(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as num,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<TopSellingProductChartPointData>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopSellingProductsData].
extension TopSellingProductsDataPatterns on TopSellingProductsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopSellingProductsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopSellingProductsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopSellingProductsData value)  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopSellingProductsData value)?  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopSellingProductChartPointData> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopSellingProductsData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopSellingProductChartPointData> points)  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductsData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<TopSellingProductChartPointData> points)?  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductsData() when $default != null:
return $default(_that.maxY,_that.labels,_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopSellingProductsData implements TopSellingProductsData {
  const _TopSellingProductsData({@JsonKey(name: 'maxY') required this.maxY, @JsonKey(name: 'labels') required final  List<String> labels, @JsonKey(name: 'points') required final  List<TopSellingProductChartPointData> points}): _labels = labels,_points = points;
  factory _TopSellingProductsData.fromJson(Map<String, dynamic> json) => _$TopSellingProductsDataFromJson(json);

@override@JsonKey(name: 'maxY') final  num maxY;
 final  List<String> _labels;
@override@JsonKey(name: 'labels') List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

 final  List<TopSellingProductChartPointData> _points;
@override@JsonKey(name: 'points') List<TopSellingProductChartPointData> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of TopSellingProductsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopSellingProductsDataCopyWith<_TopSellingProductsData> get copyWith => __$TopSellingProductsDataCopyWithImpl<_TopSellingProductsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopSellingProductsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopSellingProductsData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other._labels, _labels)&&const DeepCollectionEquality().equals(other._points, _points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(_labels),const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'TopSellingProductsData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class _$TopSellingProductsDataCopyWith<$Res> implements $TopSellingProductsDataCopyWith<$Res> {
  factory _$TopSellingProductsDataCopyWith(_TopSellingProductsData value, $Res Function(_TopSellingProductsData) _then) = __$TopSellingProductsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'maxY') num maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<TopSellingProductChartPointData> points
});




}
/// @nodoc
class __$TopSellingProductsDataCopyWithImpl<$Res>
    implements _$TopSellingProductsDataCopyWith<$Res> {
  __$TopSellingProductsDataCopyWithImpl(this._self, this._then);

  final _TopSellingProductsData _self;
  final $Res Function(_TopSellingProductsData) _then;

/// Create a copy of TopSellingProductsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_TopSellingProductsData(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as num,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<TopSellingProductChartPointData>,
  ));
}


}


/// @nodoc
mixin _$TopSellingProductChartPointData {

@JsonKey(name: 'x') int get x;@JsonKey(name: 'y') num get y;@JsonKey(name: 'productId') String get productId;@JsonKey(name: 'productName') String get productName;@JsonKey(name: 'totalSalesAmount') num get totalSalesAmount;
/// Create a copy of TopSellingProductChartPointData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopSellingProductChartPointDataCopyWith<TopSellingProductChartPointData> get copyWith => _$TopSellingProductChartPointDataCopyWithImpl<TopSellingProductChartPointData>(this as TopSellingProductChartPointData, _$identity);

  /// Serializes this TopSellingProductChartPointData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopSellingProductChartPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalSalesAmount, totalSalesAmount) || other.totalSalesAmount == totalSalesAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,productId,productName,totalSalesAmount);

@override
String toString() {
  return 'TopSellingProductChartPointData(x: $x, y: $y, productId: $productId, productName: $productName, totalSalesAmount: $totalSalesAmount)';
}


}

/// @nodoc
abstract mixin class $TopSellingProductChartPointDataCopyWith<$Res>  {
  factory $TopSellingProductChartPointDataCopyWith(TopSellingProductChartPointData value, $Res Function(TopSellingProductChartPointData) _then) = _$TopSellingProductChartPointDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') num y,@JsonKey(name: 'productId') String productId,@JsonKey(name: 'productName') String productName,@JsonKey(name: 'totalSalesAmount') num totalSalesAmount
});




}
/// @nodoc
class _$TopSellingProductChartPointDataCopyWithImpl<$Res>
    implements $TopSellingProductChartPointDataCopyWith<$Res> {
  _$TopSellingProductChartPointDataCopyWithImpl(this._self, this._then);

  final TopSellingProductChartPointData _self;
  final $Res Function(TopSellingProductChartPointData) _then;

/// Create a copy of TopSellingProductChartPointData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? productId = null,Object? productName = null,Object? totalSalesAmount = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as num,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalSalesAmount: null == totalSalesAmount ? _self.totalSalesAmount : totalSalesAmount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [TopSellingProductChartPointData].
extension TopSellingProductChartPointDataPatterns on TopSellingProductChartPointData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopSellingProductChartPointData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopSellingProductChartPointData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopSellingProductChartPointData value)  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductChartPointData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopSellingProductChartPointData value)?  $default,){
final _that = this;
switch (_that) {
case _TopSellingProductChartPointData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'productId')  String productId, @JsonKey(name: 'productName')  String productName, @JsonKey(name: 'totalSalesAmount')  num totalSalesAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopSellingProductChartPointData() when $default != null:
return $default(_that.x,_that.y,_that.productId,_that.productName,_that.totalSalesAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'productId')  String productId, @JsonKey(name: 'productName')  String productName, @JsonKey(name: 'totalSalesAmount')  num totalSalesAmount)  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductChartPointData():
return $default(_that.x,_that.y,_that.productId,_that.productName,_that.totalSalesAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'productId')  String productId, @JsonKey(name: 'productName')  String productName, @JsonKey(name: 'totalSalesAmount')  num totalSalesAmount)?  $default,) {final _that = this;
switch (_that) {
case _TopSellingProductChartPointData() when $default != null:
return $default(_that.x,_that.y,_that.productId,_that.productName,_that.totalSalesAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopSellingProductChartPointData implements TopSellingProductChartPointData {
  const _TopSellingProductChartPointData({@JsonKey(name: 'x') required this.x, @JsonKey(name: 'y') required this.y, @JsonKey(name: 'productId') required this.productId, @JsonKey(name: 'productName') required this.productName, @JsonKey(name: 'totalSalesAmount') required this.totalSalesAmount});
  factory _TopSellingProductChartPointData.fromJson(Map<String, dynamic> json) => _$TopSellingProductChartPointDataFromJson(json);

@override@JsonKey(name: 'x') final  int x;
@override@JsonKey(name: 'y') final  num y;
@override@JsonKey(name: 'productId') final  String productId;
@override@JsonKey(name: 'productName') final  String productName;
@override@JsonKey(name: 'totalSalesAmount') final  num totalSalesAmount;

/// Create a copy of TopSellingProductChartPointData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopSellingProductChartPointDataCopyWith<_TopSellingProductChartPointData> get copyWith => __$TopSellingProductChartPointDataCopyWithImpl<_TopSellingProductChartPointData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopSellingProductChartPointDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopSellingProductChartPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.totalSalesAmount, totalSalesAmount) || other.totalSalesAmount == totalSalesAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,productId,productName,totalSalesAmount);

@override
String toString() {
  return 'TopSellingProductChartPointData(x: $x, y: $y, productId: $productId, productName: $productName, totalSalesAmount: $totalSalesAmount)';
}


}

/// @nodoc
abstract mixin class _$TopSellingProductChartPointDataCopyWith<$Res> implements $TopSellingProductChartPointDataCopyWith<$Res> {
  factory _$TopSellingProductChartPointDataCopyWith(_TopSellingProductChartPointData value, $Res Function(_TopSellingProductChartPointData) _then) = __$TopSellingProductChartPointDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') num y,@JsonKey(name: 'productId') String productId,@JsonKey(name: 'productName') String productName,@JsonKey(name: 'totalSalesAmount') num totalSalesAmount
});




}
/// @nodoc
class __$TopSellingProductChartPointDataCopyWithImpl<$Res>
    implements _$TopSellingProductChartPointDataCopyWith<$Res> {
  __$TopSellingProductChartPointDataCopyWithImpl(this._self, this._then);

  final _TopSellingProductChartPointData _self;
  final $Res Function(_TopSellingProductChartPointData) _then;

/// Create a copy of TopSellingProductChartPointData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? productId = null,Object? productName = null,Object? totalSalesAmount = null,}) {
  return _then(_TopSellingProductChartPointData(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as num,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,totalSalesAmount: null == totalSalesAmount ? _self.totalSalesAmount : totalSalesAmount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
