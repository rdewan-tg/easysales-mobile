// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 SignUpModel? get signUpModel; bool? get isSignUpSuccess; bool get isLoading; String? get error; Map<String, dynamic> get signUpform;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.signUpModel, signUpModel) || other.signUpModel == signUpModel)&&(identical(other.isSignUpSuccess, isSignUpSuccess) || other.isSignUpSuccess == isSignUpSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.signUpform, signUpform));
}


@override
int get hashCode => Object.hash(runtimeType,signUpModel,isSignUpSuccess,isLoading,error,const DeepCollectionEquality().hash(signUpform));

@override
String toString() {
  return 'SignUpState(signUpModel: $signUpModel, isSignUpSuccess: $isSignUpSuccess, isLoading: $isLoading, error: $error, signUpform: $signUpform)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 SignUpModel? signUpModel, bool? isSignUpSuccess, bool isLoading, String? error, Map<String, dynamic> signUpform
});


$SignUpModelCopyWith<$Res>? get signUpModel;

}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signUpModel = freezed,Object? isSignUpSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? signUpform = null,}) {
  return _then(_self.copyWith(
signUpModel: freezed == signUpModel ? _self.signUpModel : signUpModel // ignore: cast_nullable_to_non_nullable
as SignUpModel?,isSignUpSuccess: freezed == isSignUpSuccess ? _self.isSignUpSuccess : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,signUpform: null == signUpform ? _self.signUpform : signUpform // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpModelCopyWith<$Res>? get signUpModel {
    if (_self.signUpModel == null) {
    return null;
  }

  return $SignUpModelCopyWith<$Res>(_self.signUpModel!, (value) {
    return _then(_self.copyWith(signUpModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns on SignUpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpState value)  $default,){
final _that = this;
switch (_that) {
case _SignUpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpState value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SignUpModel? signUpModel,  bool? isSignUpSuccess,  bool isLoading,  String? error,  Map<String, dynamic> signUpform)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.signUpModel,_that.isSignUpSuccess,_that.isLoading,_that.error,_that.signUpform);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SignUpModel? signUpModel,  bool? isSignUpSuccess,  bool isLoading,  String? error,  Map<String, dynamic> signUpform)  $default,) {final _that = this;
switch (_that) {
case _SignUpState():
return $default(_that.signUpModel,_that.isSignUpSuccess,_that.isLoading,_that.error,_that.signUpform);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SignUpModel? signUpModel,  bool? isSignUpSuccess,  bool isLoading,  String? error,  Map<String, dynamic> signUpform)?  $default,) {final _that = this;
switch (_that) {
case _SignUpState() when $default != null:
return $default(_that.signUpModel,_that.isSignUpSuccess,_that.isLoading,_that.error,_that.signUpform);case _:
  return null;

}
}

}

/// @nodoc


class _SignUpState implements SignUpState {
   _SignUpState({this.signUpModel, this.isSignUpSuccess, this.isLoading = false, this.error, final  Map<String, dynamic> signUpform = const {}}): _signUpform = signUpform;
  

@override final  SignUpModel? signUpModel;
@override final  bool? isSignUpSuccess;
@override@JsonKey() final  bool isLoading;
@override final  String? error;
 final  Map<String, dynamic> _signUpform;
@override@JsonKey() Map<String, dynamic> get signUpform {
  if (_signUpform is EqualUnmodifiableMapView) return _signUpform;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_signUpform);
}


/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.signUpModel, signUpModel) || other.signUpModel == signUpModel)&&(identical(other.isSignUpSuccess, isSignUpSuccess) || other.isSignUpSuccess == isSignUpSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._signUpform, _signUpform));
}


@override
int get hashCode => Object.hash(runtimeType,signUpModel,isSignUpSuccess,isLoading,error,const DeepCollectionEquality().hash(_signUpform));

@override
String toString() {
  return 'SignUpState(signUpModel: $signUpModel, isSignUpSuccess: $isSignUpSuccess, isLoading: $isLoading, error: $error, signUpform: $signUpform)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 SignUpModel? signUpModel, bool? isSignUpSuccess, bool isLoading, String? error, Map<String, dynamic> signUpform
});


@override $SignUpModelCopyWith<$Res>? get signUpModel;

}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signUpModel = freezed,Object? isSignUpSuccess = freezed,Object? isLoading = null,Object? error = freezed,Object? signUpform = null,}) {
  return _then(_SignUpState(
signUpModel: freezed == signUpModel ? _self.signUpModel : signUpModel // ignore: cast_nullable_to_non_nullable
as SignUpModel?,isSignUpSuccess: freezed == isSignUpSuccess ? _self.isSignUpSuccess : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,signUpform: null == signUpform ? _self._signUpform : signUpform // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SignUpModelCopyWith<$Res>? get signUpModel {
    if (_self.signUpModel == null) {
    return null;
  }

  return $SignUpModelCopyWith<$Res>(_self.signUpModel!, (value) {
    return _then(_self.copyWith(signUpModel: value));
  });
}
}

// dart format on
