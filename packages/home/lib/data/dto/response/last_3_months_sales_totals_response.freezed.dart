// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_3_months_sales_totals_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Last3MonthsSalesTotalsResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') Last3MonthsSalesTotalsData get data;
/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Last3MonthsSalesTotalsResponseCopyWith<Last3MonthsSalesTotalsResponse> get copyWith => _$Last3MonthsSalesTotalsResponseCopyWithImpl<Last3MonthsSalesTotalsResponse>(this as Last3MonthsSalesTotalsResponse, _$identity);

  /// Serializes this Last3MonthsSalesTotalsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Last3MonthsSalesTotalsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'Last3MonthsSalesTotalsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $Last3MonthsSalesTotalsResponseCopyWith<$Res>  {
  factory $Last3MonthsSalesTotalsResponseCopyWith(Last3MonthsSalesTotalsResponse value, $Res Function(Last3MonthsSalesTotalsResponse) _then) = _$Last3MonthsSalesTotalsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') Last3MonthsSalesTotalsData data
});


$Last3MonthsSalesTotalsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$Last3MonthsSalesTotalsResponseCopyWithImpl<$Res>
    implements $Last3MonthsSalesTotalsResponseCopyWith<$Res> {
  _$Last3MonthsSalesTotalsResponseCopyWithImpl(this._self, this._then);

  final Last3MonthsSalesTotalsResponse _self;
  final $Res Function(Last3MonthsSalesTotalsResponse) _then;

/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Last3MonthsSalesTotalsData,
  ));
}
/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Last3MonthsSalesTotalsDataCopyWith<$Res> get data {
  
  return $Last3MonthsSalesTotalsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [Last3MonthsSalesTotalsResponse].
extension Last3MonthsSalesTotalsResponsePatterns on Last3MonthsSalesTotalsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Last3MonthsSalesTotalsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Last3MonthsSalesTotalsResponse value)  $default,){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Last3MonthsSalesTotalsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  Last3MonthsSalesTotalsData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  Last3MonthsSalesTotalsData data)  $default,) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  Last3MonthsSalesTotalsData data)?  $default,) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Last3MonthsSalesTotalsResponse implements Last3MonthsSalesTotalsResponse {
  const _Last3MonthsSalesTotalsResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') required this.data});
  factory _Last3MonthsSalesTotalsResponse.fromJson(Map<String, dynamic> json) => _$Last3MonthsSalesTotalsResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'data') final  Last3MonthsSalesTotalsData data;

/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Last3MonthsSalesTotalsResponseCopyWith<_Last3MonthsSalesTotalsResponse> get copyWith => __$Last3MonthsSalesTotalsResponseCopyWithImpl<_Last3MonthsSalesTotalsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Last3MonthsSalesTotalsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Last3MonthsSalesTotalsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'Last3MonthsSalesTotalsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$Last3MonthsSalesTotalsResponseCopyWith<$Res> implements $Last3MonthsSalesTotalsResponseCopyWith<$Res> {
  factory _$Last3MonthsSalesTotalsResponseCopyWith(_Last3MonthsSalesTotalsResponse value, $Res Function(_Last3MonthsSalesTotalsResponse) _then) = __$Last3MonthsSalesTotalsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') Last3MonthsSalesTotalsData data
});


@override $Last3MonthsSalesTotalsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$Last3MonthsSalesTotalsResponseCopyWithImpl<$Res>
    implements _$Last3MonthsSalesTotalsResponseCopyWith<$Res> {
  __$Last3MonthsSalesTotalsResponseCopyWithImpl(this._self, this._then);

  final _Last3MonthsSalesTotalsResponse _self;
  final $Res Function(_Last3MonthsSalesTotalsResponse) _then;

/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_Last3MonthsSalesTotalsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Last3MonthsSalesTotalsData,
  ));
}

/// Create a copy of Last3MonthsSalesTotalsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$Last3MonthsSalesTotalsDataCopyWith<$Res> get data {
  
  return $Last3MonthsSalesTotalsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Last3MonthsSalesTotalsData {

@JsonKey(name: 'maxY') num get maxY;@JsonKey(name: 'labels') List<String> get labels;@JsonKey(name: 'points') List<MonthlySalesTotalPointData> get points;
/// Create a copy of Last3MonthsSalesTotalsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Last3MonthsSalesTotalsDataCopyWith<Last3MonthsSalesTotalsData> get copyWith => _$Last3MonthsSalesTotalsDataCopyWithImpl<Last3MonthsSalesTotalsData>(this as Last3MonthsSalesTotalsData, _$identity);

  /// Serializes this Last3MonthsSalesTotalsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Last3MonthsSalesTotalsData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other.labels, labels)&&const DeepCollectionEquality().equals(other.points, points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(labels),const DeepCollectionEquality().hash(points));

@override
String toString() {
  return 'Last3MonthsSalesTotalsData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class $Last3MonthsSalesTotalsDataCopyWith<$Res>  {
  factory $Last3MonthsSalesTotalsDataCopyWith(Last3MonthsSalesTotalsData value, $Res Function(Last3MonthsSalesTotalsData) _then) = _$Last3MonthsSalesTotalsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'maxY') num maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<MonthlySalesTotalPointData> points
});




}
/// @nodoc
class _$Last3MonthsSalesTotalsDataCopyWithImpl<$Res>
    implements $Last3MonthsSalesTotalsDataCopyWith<$Res> {
  _$Last3MonthsSalesTotalsDataCopyWithImpl(this._self, this._then);

  final Last3MonthsSalesTotalsData _self;
  final $Res Function(Last3MonthsSalesTotalsData) _then;

/// Create a copy of Last3MonthsSalesTotalsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_self.copyWith(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as num,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<MonthlySalesTotalPointData>,
  ));
}

}


/// Adds pattern-matching-related methods to [Last3MonthsSalesTotalsData].
extension Last3MonthsSalesTotalsDataPatterns on Last3MonthsSalesTotalsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Last3MonthsSalesTotalsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Last3MonthsSalesTotalsData value)  $default,){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Last3MonthsSalesTotalsData value)?  $default,){
final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<MonthlySalesTotalPointData> points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<MonthlySalesTotalPointData> points)  $default,) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'maxY')  num maxY, @JsonKey(name: 'labels')  List<String> labels, @JsonKey(name: 'points')  List<MonthlySalesTotalPointData> points)?  $default,) {final _that = this;
switch (_that) {
case _Last3MonthsSalesTotalsData() when $default != null:
return $default(_that.maxY,_that.labels,_that.points);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Last3MonthsSalesTotalsData implements Last3MonthsSalesTotalsData {
  const _Last3MonthsSalesTotalsData({@JsonKey(name: 'maxY') required this.maxY, @JsonKey(name: 'labels') required final  List<String> labels, @JsonKey(name: 'points') required final  List<MonthlySalesTotalPointData> points}): _labels = labels,_points = points;
  factory _Last3MonthsSalesTotalsData.fromJson(Map<String, dynamic> json) => _$Last3MonthsSalesTotalsDataFromJson(json);

@override@JsonKey(name: 'maxY') final  num maxY;
 final  List<String> _labels;
@override@JsonKey(name: 'labels') List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

 final  List<MonthlySalesTotalPointData> _points;
@override@JsonKey(name: 'points') List<MonthlySalesTotalPointData> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}


/// Create a copy of Last3MonthsSalesTotalsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Last3MonthsSalesTotalsDataCopyWith<_Last3MonthsSalesTotalsData> get copyWith => __$Last3MonthsSalesTotalsDataCopyWithImpl<_Last3MonthsSalesTotalsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Last3MonthsSalesTotalsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Last3MonthsSalesTotalsData&&(identical(other.maxY, maxY) || other.maxY == maxY)&&const DeepCollectionEquality().equals(other._labels, _labels)&&const DeepCollectionEquality().equals(other._points, _points));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxY,const DeepCollectionEquality().hash(_labels),const DeepCollectionEquality().hash(_points));

@override
String toString() {
  return 'Last3MonthsSalesTotalsData(maxY: $maxY, labels: $labels, points: $points)';
}


}

/// @nodoc
abstract mixin class _$Last3MonthsSalesTotalsDataCopyWith<$Res> implements $Last3MonthsSalesTotalsDataCopyWith<$Res> {
  factory _$Last3MonthsSalesTotalsDataCopyWith(_Last3MonthsSalesTotalsData value, $Res Function(_Last3MonthsSalesTotalsData) _then) = __$Last3MonthsSalesTotalsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'maxY') num maxY,@JsonKey(name: 'labels') List<String> labels,@JsonKey(name: 'points') List<MonthlySalesTotalPointData> points
});




}
/// @nodoc
class __$Last3MonthsSalesTotalsDataCopyWithImpl<$Res>
    implements _$Last3MonthsSalesTotalsDataCopyWith<$Res> {
  __$Last3MonthsSalesTotalsDataCopyWithImpl(this._self, this._then);

  final _Last3MonthsSalesTotalsData _self;
  final $Res Function(_Last3MonthsSalesTotalsData) _then;

/// Create a copy of Last3MonthsSalesTotalsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxY = null,Object? labels = null,Object? points = null,}) {
  return _then(_Last3MonthsSalesTotalsData(
maxY: null == maxY ? _self.maxY : maxY // ignore: cast_nullable_to_non_nullable
as num,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<MonthlySalesTotalPointData>,
  ));
}


}


/// @nodoc
mixin _$MonthlySalesTotalPointData {

@JsonKey(name: 'x') int get x;@JsonKey(name: 'y') num get y;@JsonKey(name: 'label') String get label;@JsonKey(name: 'totalQuantitySold') num get totalQuantitySold;
/// Create a copy of MonthlySalesTotalPointData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlySalesTotalPointDataCopyWith<MonthlySalesTotalPointData> get copyWith => _$MonthlySalesTotalPointDataCopyWithImpl<MonthlySalesTotalPointData>(this as MonthlySalesTotalPointData, _$identity);

  /// Serializes this MonthlySalesTotalPointData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlySalesTotalPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.label, label) || other.label == label)&&(identical(other.totalQuantitySold, totalQuantitySold) || other.totalQuantitySold == totalQuantitySold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,label,totalQuantitySold);

@override
String toString() {
  return 'MonthlySalesTotalPointData(x: $x, y: $y, label: $label, totalQuantitySold: $totalQuantitySold)';
}


}

/// @nodoc
abstract mixin class $MonthlySalesTotalPointDataCopyWith<$Res>  {
  factory $MonthlySalesTotalPointDataCopyWith(MonthlySalesTotalPointData value, $Res Function(MonthlySalesTotalPointData) _then) = _$MonthlySalesTotalPointDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') num y,@JsonKey(name: 'label') String label,@JsonKey(name: 'totalQuantitySold') num totalQuantitySold
});




}
/// @nodoc
class _$MonthlySalesTotalPointDataCopyWithImpl<$Res>
    implements $MonthlySalesTotalPointDataCopyWith<$Res> {
  _$MonthlySalesTotalPointDataCopyWithImpl(this._self, this._then);

  final MonthlySalesTotalPointData _self;
  final $Res Function(MonthlySalesTotalPointData) _then;

/// Create a copy of MonthlySalesTotalPointData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,Object? label = null,Object? totalQuantitySold = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as num,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,totalQuantitySold: null == totalQuantitySold ? _self.totalQuantitySold : totalQuantitySold // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlySalesTotalPointData].
extension MonthlySalesTotalPointDataPatterns on MonthlySalesTotalPointData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlySalesTotalPointData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlySalesTotalPointData value)  $default,){
final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlySalesTotalPointData value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'label')  String label, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData() when $default != null:
return $default(_that.x,_that.y,_that.label,_that.totalQuantitySold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'label')  String label, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)  $default,) {final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData():
return $default(_that.x,_that.y,_that.label,_that.totalQuantitySold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'x')  int x, @JsonKey(name: 'y')  num y, @JsonKey(name: 'label')  String label, @JsonKey(name: 'totalQuantitySold')  num totalQuantitySold)?  $default,) {final _that = this;
switch (_that) {
case _MonthlySalesTotalPointData() when $default != null:
return $default(_that.x,_that.y,_that.label,_that.totalQuantitySold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlySalesTotalPointData implements MonthlySalesTotalPointData {
  const _MonthlySalesTotalPointData({@JsonKey(name: 'x') required this.x, @JsonKey(name: 'y') required this.y, @JsonKey(name: 'label') required this.label, @JsonKey(name: 'totalQuantitySold') required this.totalQuantitySold});
  factory _MonthlySalesTotalPointData.fromJson(Map<String, dynamic> json) => _$MonthlySalesTotalPointDataFromJson(json);

@override@JsonKey(name: 'x') final  int x;
@override@JsonKey(name: 'y') final  num y;
@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'totalQuantitySold') final  num totalQuantitySold;

/// Create a copy of MonthlySalesTotalPointData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlySalesTotalPointDataCopyWith<_MonthlySalesTotalPointData> get copyWith => __$MonthlySalesTotalPointDataCopyWithImpl<_MonthlySalesTotalPointData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlySalesTotalPointDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlySalesTotalPointData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.label, label) || other.label == label)&&(identical(other.totalQuantitySold, totalQuantitySold) || other.totalQuantitySold == totalQuantitySold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y,label,totalQuantitySold);

@override
String toString() {
  return 'MonthlySalesTotalPointData(x: $x, y: $y, label: $label, totalQuantitySold: $totalQuantitySold)';
}


}

/// @nodoc
abstract mixin class _$MonthlySalesTotalPointDataCopyWith<$Res> implements $MonthlySalesTotalPointDataCopyWith<$Res> {
  factory _$MonthlySalesTotalPointDataCopyWith(_MonthlySalesTotalPointData value, $Res Function(_MonthlySalesTotalPointData) _then) = __$MonthlySalesTotalPointDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'x') int x,@JsonKey(name: 'y') num y,@JsonKey(name: 'label') String label,@JsonKey(name: 'totalQuantitySold') num totalQuantitySold
});




}
/// @nodoc
class __$MonthlySalesTotalPointDataCopyWithImpl<$Res>
    implements _$MonthlySalesTotalPointDataCopyWith<$Res> {
  __$MonthlySalesTotalPointDataCopyWithImpl(this._self, this._then);

  final _MonthlySalesTotalPointData _self;
  final $Res Function(_MonthlySalesTotalPointData) _then;

/// Create a copy of MonthlySalesTotalPointData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,Object? label = null,Object? totalQuantitySold = null,}) {
  return _then(_MonthlySalesTotalPointData(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as num,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,totalQuantitySold: null == totalQuantitySold ? _self.totalQuantitySold : totalQuantitySold // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
