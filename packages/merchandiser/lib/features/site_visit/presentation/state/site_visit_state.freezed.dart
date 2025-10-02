// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'site_visit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SiteVisitState {

 bool get isLoading; bool get isCreated; bool get isUpdated; LatLng? get currentPosition; SiteVisitData? get createSiteVisitResponse; SiteVisitData? get updateSiteVisitResponse; String? get currentAddress; String? get timeNow; Map<String, String> get settings; String? get error;
/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SiteVisitStateCopyWith<SiteVisitState> get copyWith => _$SiteVisitStateCopyWithImpl<SiteVisitState>(this as SiteVisitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SiteVisitState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreated, isCreated) || other.isCreated == isCreated)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.createSiteVisitResponse, createSiteVisitResponse) || other.createSiteVisitResponse == createSiteVisitResponse)&&(identical(other.updateSiteVisitResponse, updateSiteVisitResponse) || other.updateSiteVisitResponse == updateSiteVisitResponse)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.timeNow, timeNow) || other.timeNow == timeNow)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCreated,isUpdated,currentPosition,createSiteVisitResponse,updateSiteVisitResponse,currentAddress,timeNow,const DeepCollectionEquality().hash(settings),error);

@override
String toString() {
  return 'SiteVisitState(isLoading: $isLoading, isCreated: $isCreated, isUpdated: $isUpdated, currentPosition: $currentPosition, createSiteVisitResponse: $createSiteVisitResponse, updateSiteVisitResponse: $updateSiteVisitResponse, currentAddress: $currentAddress, timeNow: $timeNow, settings: $settings, error: $error)';
}


}

/// @nodoc
abstract mixin class $SiteVisitStateCopyWith<$Res>  {
  factory $SiteVisitStateCopyWith(SiteVisitState value, $Res Function(SiteVisitState) _then) = _$SiteVisitStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isCreated, bool isUpdated, LatLng? currentPosition, SiteVisitData? createSiteVisitResponse, SiteVisitData? updateSiteVisitResponse, String? currentAddress, String? timeNow, Map<String, String> settings, String? error
});


$LatLngCopyWith<$Res>? get currentPosition;$SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse;$SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse;

}
/// @nodoc
class _$SiteVisitStateCopyWithImpl<$Res>
    implements $SiteVisitStateCopyWith<$Res> {
  _$SiteVisitStateCopyWithImpl(this._self, this._then);

  final SiteVisitState _self;
  final $Res Function(SiteVisitState) _then;

/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isCreated = null,Object? isUpdated = null,Object? currentPosition = freezed,Object? createSiteVisitResponse = freezed,Object? updateSiteVisitResponse = freezed,Object? currentAddress = freezed,Object? timeNow = freezed,Object? settings = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreated: null == isCreated ? _self.isCreated : isCreated // ignore: cast_nullable_to_non_nullable
as bool,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as LatLng?,createSiteVisitResponse: freezed == createSiteVisitResponse ? _self.createSiteVisitResponse : createSiteVisitResponse // ignore: cast_nullable_to_non_nullable
as SiteVisitData?,updateSiteVisitResponse: freezed == updateSiteVisitResponse ? _self.updateSiteVisitResponse : updateSiteVisitResponse // ignore: cast_nullable_to_non_nullable
as SiteVisitData?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,timeNow: freezed == timeNow ? _self.timeNow : timeNow // ignore: cast_nullable_to_non_nullable
as String?,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get currentPosition {
    if (_self.currentPosition == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.currentPosition!, (value) {
    return _then(_self.copyWith(currentPosition: value));
  });
}/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse {
    if (_self.createSiteVisitResponse == null) {
    return null;
  }

  return $SiteVisitDataCopyWith<$Res>(_self.createSiteVisitResponse!, (value) {
    return _then(_self.copyWith(createSiteVisitResponse: value));
  });
}/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse {
    if (_self.updateSiteVisitResponse == null) {
    return null;
  }

  return $SiteVisitDataCopyWith<$Res>(_self.updateSiteVisitResponse!, (value) {
    return _then(_self.copyWith(updateSiteVisitResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [SiteVisitState].
extension SiteVisitStatePatterns on SiteVisitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SiteVisitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SiteVisitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SiteVisitState value)  $default,){
final _that = this;
switch (_that) {
case _SiteVisitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SiteVisitState value)?  $default,){
final _that = this;
switch (_that) {
case _SiteVisitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isCreated,  bool isUpdated,  LatLng? currentPosition,  SiteVisitData? createSiteVisitResponse,  SiteVisitData? updateSiteVisitResponse,  String? currentAddress,  String? timeNow,  Map<String, String> settings,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SiteVisitState() when $default != null:
return $default(_that.isLoading,_that.isCreated,_that.isUpdated,_that.currentPosition,_that.createSiteVisitResponse,_that.updateSiteVisitResponse,_that.currentAddress,_that.timeNow,_that.settings,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isCreated,  bool isUpdated,  LatLng? currentPosition,  SiteVisitData? createSiteVisitResponse,  SiteVisitData? updateSiteVisitResponse,  String? currentAddress,  String? timeNow,  Map<String, String> settings,  String? error)  $default,) {final _that = this;
switch (_that) {
case _SiteVisitState():
return $default(_that.isLoading,_that.isCreated,_that.isUpdated,_that.currentPosition,_that.createSiteVisitResponse,_that.updateSiteVisitResponse,_that.currentAddress,_that.timeNow,_that.settings,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isCreated,  bool isUpdated,  LatLng? currentPosition,  SiteVisitData? createSiteVisitResponse,  SiteVisitData? updateSiteVisitResponse,  String? currentAddress,  String? timeNow,  Map<String, String> settings,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SiteVisitState() when $default != null:
return $default(_that.isLoading,_that.isCreated,_that.isUpdated,_that.currentPosition,_that.createSiteVisitResponse,_that.updateSiteVisitResponse,_that.currentAddress,_that.timeNow,_that.settings,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SiteVisitState implements SiteVisitState {
  const _SiteVisitState({this.isLoading = false, this.isCreated = false, this.isUpdated = false, this.currentPosition, this.createSiteVisitResponse, this.updateSiteVisitResponse, this.currentAddress, this.timeNow, final  Map<String, String> settings = const {}, this.error}): _settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCreated;
@override@JsonKey() final  bool isUpdated;
@override final  LatLng? currentPosition;
@override final  SiteVisitData? createSiteVisitResponse;
@override final  SiteVisitData? updateSiteVisitResponse;
@override final  String? currentAddress;
@override final  String? timeNow;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}

@override final  String? error;

/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SiteVisitStateCopyWith<_SiteVisitState> get copyWith => __$SiteVisitStateCopyWithImpl<_SiteVisitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SiteVisitState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreated, isCreated) || other.isCreated == isCreated)&&(identical(other.isUpdated, isUpdated) || other.isUpdated == isUpdated)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.createSiteVisitResponse, createSiteVisitResponse) || other.createSiteVisitResponse == createSiteVisitResponse)&&(identical(other.updateSiteVisitResponse, updateSiteVisitResponse) || other.updateSiteVisitResponse == updateSiteVisitResponse)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.timeNow, timeNow) || other.timeNow == timeNow)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isCreated,isUpdated,currentPosition,createSiteVisitResponse,updateSiteVisitResponse,currentAddress,timeNow,const DeepCollectionEquality().hash(_settings),error);

@override
String toString() {
  return 'SiteVisitState(isLoading: $isLoading, isCreated: $isCreated, isUpdated: $isUpdated, currentPosition: $currentPosition, createSiteVisitResponse: $createSiteVisitResponse, updateSiteVisitResponse: $updateSiteVisitResponse, currentAddress: $currentAddress, timeNow: $timeNow, settings: $settings, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SiteVisitStateCopyWith<$Res> implements $SiteVisitStateCopyWith<$Res> {
  factory _$SiteVisitStateCopyWith(_SiteVisitState value, $Res Function(_SiteVisitState) _then) = __$SiteVisitStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isCreated, bool isUpdated, LatLng? currentPosition, SiteVisitData? createSiteVisitResponse, SiteVisitData? updateSiteVisitResponse, String? currentAddress, String? timeNow, Map<String, String> settings, String? error
});


@override $LatLngCopyWith<$Res>? get currentPosition;@override $SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse;@override $SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse;

}
/// @nodoc
class __$SiteVisitStateCopyWithImpl<$Res>
    implements _$SiteVisitStateCopyWith<$Res> {
  __$SiteVisitStateCopyWithImpl(this._self, this._then);

  final _SiteVisitState _self;
  final $Res Function(_SiteVisitState) _then;

/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isCreated = null,Object? isUpdated = null,Object? currentPosition = freezed,Object? createSiteVisitResponse = freezed,Object? updateSiteVisitResponse = freezed,Object? currentAddress = freezed,Object? timeNow = freezed,Object? settings = null,Object? error = freezed,}) {
  return _then(_SiteVisitState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreated: null == isCreated ? _self.isCreated : isCreated // ignore: cast_nullable_to_non_nullable
as bool,isUpdated: null == isUpdated ? _self.isUpdated : isUpdated // ignore: cast_nullable_to_non_nullable
as bool,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as LatLng?,createSiteVisitResponse: freezed == createSiteVisitResponse ? _self.createSiteVisitResponse : createSiteVisitResponse // ignore: cast_nullable_to_non_nullable
as SiteVisitData?,updateSiteVisitResponse: freezed == updateSiteVisitResponse ? _self.updateSiteVisitResponse : updateSiteVisitResponse // ignore: cast_nullable_to_non_nullable
as SiteVisitData?,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,timeNow: freezed == timeNow ? _self.timeNow : timeNow // ignore: cast_nullable_to_non_nullable
as String?,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get currentPosition {
    if (_self.currentPosition == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.currentPosition!, (value) {
    return _then(_self.copyWith(currentPosition: value));
  });
}/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteVisitDataCopyWith<$Res>? get createSiteVisitResponse {
    if (_self.createSiteVisitResponse == null) {
    return null;
  }

  return $SiteVisitDataCopyWith<$Res>(_self.createSiteVisitResponse!, (value) {
    return _then(_self.copyWith(createSiteVisitResponse: value));
  });
}/// Create a copy of SiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SiteVisitDataCopyWith<$Res>? get updateSiteVisitResponse {
    if (_self.updateSiteVisitResponse == null) {
    return null;
  }

  return $SiteVisitDataCopyWith<$Res>(_self.updateSiteVisitResponse!, (value) {
    return _then(_self.copyWith(updateSiteVisitResponse: value));
  });
}
}

/// @nodoc
mixin _$LatLng {

 double get latitude; double get longitude;
/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatLngCopyWith<LatLng> get copyWith => _$LatLngCopyWithImpl<LatLng>(this as LatLng, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatLng&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLng(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $LatLngCopyWith<$Res>  {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) _then) = _$LatLngCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class _$LatLngCopyWithImpl<$Res>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._self, this._then);

  final LatLng _self;
  final $Res Function(LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LatLng].
extension LatLngPatterns on LatLng {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatLng value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatLng value)  $default,){
final _that = this;
switch (_that) {
case _LatLng():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatLng value)?  $default,){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _LatLng():
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _LatLng implements LatLng {
  const _LatLng({required this.latitude, required this.longitude});
  

@override final  double latitude;
@override final  double longitude;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatLngCopyWith<_LatLng> get copyWith => __$LatLngCopyWithImpl<_LatLng>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatLng&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLng(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$LatLngCopyWith(_LatLng value, $Res Function(_LatLng) _then) = __$LatLngCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class __$LatLngCopyWithImpl<$Res>
    implements _$LatLngCopyWith<$Res> {
  __$LatLngCopyWithImpl(this._self, this._then);

  final _LatLng _self;
  final $Res Function(_LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_LatLng(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
