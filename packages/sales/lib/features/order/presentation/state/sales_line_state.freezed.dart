// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_line_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesLineState {

 bool get isLoading; bool get isItemAdded; bool get isItemEdited; bool get isItemRemoved; bool get isOrderSynced; List<SalesLineEntityData> get salesLines; Map<String, String>? get settings; String? get salesId; String? get errorMsg;
/// Create a copy of SalesLineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesLineStateCopyWith<SalesLineState> get copyWith => _$SalesLineStateCopyWithImpl<SalesLineState>(this as SalesLineState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesLineState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isItemAdded, isItemAdded) || other.isItemAdded == isItemAdded)&&(identical(other.isItemEdited, isItemEdited) || other.isItemEdited == isItemEdited)&&(identical(other.isItemRemoved, isItemRemoved) || other.isItemRemoved == isItemRemoved)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&const DeepCollectionEquality().equals(other.salesLines, salesLines)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isItemAdded,isItemEdited,isItemRemoved,isOrderSynced,const DeepCollectionEquality().hash(salesLines),const DeepCollectionEquality().hash(settings),salesId,errorMsg);

@override
String toString() {
  return 'SalesLineState(isLoading: $isLoading, isItemAdded: $isItemAdded, isItemEdited: $isItemEdited, isItemRemoved: $isItemRemoved, isOrderSynced: $isOrderSynced, salesLines: $salesLines, settings: $settings, salesId: $salesId, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $SalesLineStateCopyWith<$Res>  {
  factory $SalesLineStateCopyWith(SalesLineState value, $Res Function(SalesLineState) _then) = _$SalesLineStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isItemAdded, bool isItemEdited, bool isItemRemoved, bool isOrderSynced, List<SalesLineEntityData> salesLines, Map<String, String>? settings, String? salesId, String? errorMsg
});




}
/// @nodoc
class _$SalesLineStateCopyWithImpl<$Res>
    implements $SalesLineStateCopyWith<$Res> {
  _$SalesLineStateCopyWithImpl(this._self, this._then);

  final SalesLineState _self;
  final $Res Function(SalesLineState) _then;

/// Create a copy of SalesLineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isItemAdded = null,Object? isItemEdited = null,Object? isItemRemoved = null,Object? isOrderSynced = null,Object? salesLines = null,Object? settings = freezed,Object? salesId = freezed,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isItemAdded: null == isItemAdded ? _self.isItemAdded : isItemAdded // ignore: cast_nullable_to_non_nullable
as bool,isItemEdited: null == isItemEdited ? _self.isItemEdited : isItemEdited // ignore: cast_nullable_to_non_nullable
as bool,isItemRemoved: null == isItemRemoved ? _self.isItemRemoved : isItemRemoved // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,salesLines: null == salesLines ? _self.salesLines : salesLines // ignore: cast_nullable_to_non_nullable
as List<SalesLineEntityData>,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,salesId: freezed == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesLineState].
extension SalesLineStatePatterns on SalesLineState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesLineState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesLineState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesLineState value)  $default,){
final _that = this;
switch (_that) {
case _SalesLineState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesLineState value)?  $default,){
final _that = this;
switch (_that) {
case _SalesLineState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isItemAdded,  bool isItemEdited,  bool isItemRemoved,  bool isOrderSynced,  List<SalesLineEntityData> salesLines,  Map<String, String>? settings,  String? salesId,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesLineState() when $default != null:
return $default(_that.isLoading,_that.isItemAdded,_that.isItemEdited,_that.isItemRemoved,_that.isOrderSynced,_that.salesLines,_that.settings,_that.salesId,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isItemAdded,  bool isItemEdited,  bool isItemRemoved,  bool isOrderSynced,  List<SalesLineEntityData> salesLines,  Map<String, String>? settings,  String? salesId,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _SalesLineState():
return $default(_that.isLoading,_that.isItemAdded,_that.isItemEdited,_that.isItemRemoved,_that.isOrderSynced,_that.salesLines,_that.settings,_that.salesId,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isItemAdded,  bool isItemEdited,  bool isItemRemoved,  bool isOrderSynced,  List<SalesLineEntityData> salesLines,  Map<String, String>? settings,  String? salesId,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _SalesLineState() when $default != null:
return $default(_that.isLoading,_that.isItemAdded,_that.isItemEdited,_that.isItemRemoved,_that.isOrderSynced,_that.salesLines,_that.settings,_that.salesId,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _SalesLineState implements SalesLineState {
   _SalesLineState({this.isLoading = false, this.isItemAdded = false, this.isItemEdited = false, this.isItemRemoved = false, this.isOrderSynced = false, final  List<SalesLineEntityData> salesLines = const [], final  Map<String, String>? settings, this.salesId, this.errorMsg}): _salesLines = salesLines,_settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isItemAdded;
@override@JsonKey() final  bool isItemEdited;
@override@JsonKey() final  bool isItemRemoved;
@override@JsonKey() final  bool isOrderSynced;
 final  List<SalesLineEntityData> _salesLines;
@override@JsonKey() List<SalesLineEntityData> get salesLines {
  if (_salesLines is EqualUnmodifiableListView) return _salesLines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesLines);
}

 final  Map<String, String>? _settings;
@override Map<String, String>? get settings {
  final value = _settings;
  if (value == null) return null;
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? salesId;
@override final  String? errorMsg;

/// Create a copy of SalesLineState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesLineStateCopyWith<_SalesLineState> get copyWith => __$SalesLineStateCopyWithImpl<_SalesLineState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesLineState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isItemAdded, isItemAdded) || other.isItemAdded == isItemAdded)&&(identical(other.isItemEdited, isItemEdited) || other.isItemEdited == isItemEdited)&&(identical(other.isItemRemoved, isItemRemoved) || other.isItemRemoved == isItemRemoved)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&const DeepCollectionEquality().equals(other._salesLines, _salesLines)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.salesId, salesId) || other.salesId == salesId)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isItemAdded,isItemEdited,isItemRemoved,isOrderSynced,const DeepCollectionEquality().hash(_salesLines),const DeepCollectionEquality().hash(_settings),salesId,errorMsg);

@override
String toString() {
  return 'SalesLineState(isLoading: $isLoading, isItemAdded: $isItemAdded, isItemEdited: $isItemEdited, isItemRemoved: $isItemRemoved, isOrderSynced: $isOrderSynced, salesLines: $salesLines, settings: $settings, salesId: $salesId, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$SalesLineStateCopyWith<$Res> implements $SalesLineStateCopyWith<$Res> {
  factory _$SalesLineStateCopyWith(_SalesLineState value, $Res Function(_SalesLineState) _then) = __$SalesLineStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isItemAdded, bool isItemEdited, bool isItemRemoved, bool isOrderSynced, List<SalesLineEntityData> salesLines, Map<String, String>? settings, String? salesId, String? errorMsg
});




}
/// @nodoc
class __$SalesLineStateCopyWithImpl<$Res>
    implements _$SalesLineStateCopyWith<$Res> {
  __$SalesLineStateCopyWithImpl(this._self, this._then);

  final _SalesLineState _self;
  final $Res Function(_SalesLineState) _then;

/// Create a copy of SalesLineState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isItemAdded = null,Object? isItemEdited = null,Object? isItemRemoved = null,Object? isOrderSynced = null,Object? salesLines = null,Object? settings = freezed,Object? salesId = freezed,Object? errorMsg = freezed,}) {
  return _then(_SalesLineState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isItemAdded: null == isItemAdded ? _self.isItemAdded : isItemAdded // ignore: cast_nullable_to_non_nullable
as bool,isItemEdited: null == isItemEdited ? _self.isItemEdited : isItemEdited // ignore: cast_nullable_to_non_nullable
as bool,isItemRemoved: null == isItemRemoved ? _self.isItemRemoved : isItemRemoved // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,salesLines: null == salesLines ? _self._salesLines : salesLines // ignore: cast_nullable_to_non_nullable
as List<SalesLineEntityData>,settings: freezed == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,salesId: freezed == salesId ? _self.salesId : salesId // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
