// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'capture_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaptureImageState {

 bool get isLoading; bool get isUploading; bool get isImageUploaded; Map<String, String> get settings; int get androidSdkInt; String? get errorMsg;
/// Create a copy of CaptureImageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaptureImageStateCopyWith<CaptureImageState> get copyWith => _$CaptureImageStateCopyWithImpl<CaptureImageState>(this as CaptureImageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptureImageState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.isImageUploaded, isImageUploaded) || other.isImageUploaded == isImageUploaded)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.androidSdkInt, androidSdkInt) || other.androidSdkInt == androidSdkInt)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUploading,isImageUploaded,const DeepCollectionEquality().hash(settings),androidSdkInt,errorMsg);

@override
String toString() {
  return 'CaptureImageState(isLoading: $isLoading, isUploading: $isUploading, isImageUploaded: $isImageUploaded, settings: $settings, androidSdkInt: $androidSdkInt, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $CaptureImageStateCopyWith<$Res>  {
  factory $CaptureImageStateCopyWith(CaptureImageState value, $Res Function(CaptureImageState) _then) = _$CaptureImageStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isUploading, bool isImageUploaded, Map<String, String> settings, int androidSdkInt, String? errorMsg
});




}
/// @nodoc
class _$CaptureImageStateCopyWithImpl<$Res>
    implements $CaptureImageStateCopyWith<$Res> {
  _$CaptureImageStateCopyWithImpl(this._self, this._then);

  final CaptureImageState _self;
  final $Res Function(CaptureImageState) _then;

/// Create a copy of CaptureImageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isUploading = null,Object? isImageUploaded = null,Object? settings = null,Object? androidSdkInt = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,isImageUploaded: null == isImageUploaded ? _self.isImageUploaded : isImageUploaded // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,androidSdkInt: null == androidSdkInt ? _self.androidSdkInt : androidSdkInt // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaptureImageState].
extension CaptureImageStatePatterns on CaptureImageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaptureImageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaptureImageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaptureImageState value)  $default,){
final _that = this;
switch (_that) {
case _CaptureImageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaptureImageState value)?  $default,){
final _that = this;
switch (_that) {
case _CaptureImageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isUploading,  bool isImageUploaded,  Map<String, String> settings,  int androidSdkInt,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaptureImageState() when $default != null:
return $default(_that.isLoading,_that.isUploading,_that.isImageUploaded,_that.settings,_that.androidSdkInt,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isUploading,  bool isImageUploaded,  Map<String, String> settings,  int androidSdkInt,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _CaptureImageState():
return $default(_that.isLoading,_that.isUploading,_that.isImageUploaded,_that.settings,_that.androidSdkInt,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isUploading,  bool isImageUploaded,  Map<String, String> settings,  int androidSdkInt,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _CaptureImageState() when $default != null:
return $default(_that.isLoading,_that.isUploading,_that.isImageUploaded,_that.settings,_that.androidSdkInt,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _CaptureImageState implements CaptureImageState {
   _CaptureImageState({this.isLoading = false, this.isUploading = false, this.isImageUploaded = false, final  Map<String, String> settings = const {}, this.androidSdkInt = 1, this.errorMsg}): _settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isUploading;
@override@JsonKey() final  bool isImageUploaded;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}

@override@JsonKey() final  int androidSdkInt;
@override final  String? errorMsg;

/// Create a copy of CaptureImageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaptureImageStateCopyWith<_CaptureImageState> get copyWith => __$CaptureImageStateCopyWithImpl<_CaptureImageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaptureImageState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUploading, isUploading) || other.isUploading == isUploading)&&(identical(other.isImageUploaded, isImageUploaded) || other.isImageUploaded == isImageUploaded)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.androidSdkInt, androidSdkInt) || other.androidSdkInt == androidSdkInt)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUploading,isImageUploaded,const DeepCollectionEquality().hash(_settings),androidSdkInt,errorMsg);

@override
String toString() {
  return 'CaptureImageState(isLoading: $isLoading, isUploading: $isUploading, isImageUploaded: $isImageUploaded, settings: $settings, androidSdkInt: $androidSdkInt, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$CaptureImageStateCopyWith<$Res> implements $CaptureImageStateCopyWith<$Res> {
  factory _$CaptureImageStateCopyWith(_CaptureImageState value, $Res Function(_CaptureImageState) _then) = __$CaptureImageStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isUploading, bool isImageUploaded, Map<String, String> settings, int androidSdkInt, String? errorMsg
});




}
/// @nodoc
class __$CaptureImageStateCopyWithImpl<$Res>
    implements _$CaptureImageStateCopyWith<$Res> {
  __$CaptureImageStateCopyWithImpl(this._self, this._then);

  final _CaptureImageState _self;
  final $Res Function(_CaptureImageState) _then;

/// Create a copy of CaptureImageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isUploading = null,Object? isImageUploaded = null,Object? settings = null,Object? androidSdkInt = null,Object? errorMsg = freezed,}) {
  return _then(_CaptureImageState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUploading: null == isUploading ? _self.isUploading : isUploading // ignore: cast_nullable_to_non_nullable
as bool,isImageUploaded: null == isImageUploaded ? _self.isImageUploaded : isImageUploaded // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,androidSdkInt: null == androidSdkInt ? _self.androidSdkInt : androidSdkInt // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
