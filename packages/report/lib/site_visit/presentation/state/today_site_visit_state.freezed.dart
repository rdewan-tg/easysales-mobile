// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_site_visit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodaySiteVisitState {

 int get total; bool get isLoadingTodayVisit; bool get isLoadingThisMonthVisit; List<ToDaySiteVisitDetail> get todayVisitDetails; List<ThisMonthSiteVisitDetail> get thisMonthVisitDetails; int get todayTotalVisits; int get thisMonthTotalVisits; String? get errorMsg;
/// Create a copy of TodaySiteVisitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodaySiteVisitStateCopyWith<TodaySiteVisitState> get copyWith => _$TodaySiteVisitStateCopyWithImpl<TodaySiteVisitState>(this as TodaySiteVisitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodaySiteVisitState&&(identical(other.total, total) || other.total == total)&&(identical(other.isLoadingTodayVisit, isLoadingTodayVisit) || other.isLoadingTodayVisit == isLoadingTodayVisit)&&(identical(other.isLoadingThisMonthVisit, isLoadingThisMonthVisit) || other.isLoadingThisMonthVisit == isLoadingThisMonthVisit)&&const DeepCollectionEquality().equals(other.todayVisitDetails, todayVisitDetails)&&const DeepCollectionEquality().equals(other.thisMonthVisitDetails, thisMonthVisitDetails)&&(identical(other.todayTotalVisits, todayTotalVisits) || other.todayTotalVisits == todayTotalVisits)&&(identical(other.thisMonthTotalVisits, thisMonthTotalVisits) || other.thisMonthTotalVisits == thisMonthTotalVisits)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,total,isLoadingTodayVisit,isLoadingThisMonthVisit,const DeepCollectionEquality().hash(todayVisitDetails),const DeepCollectionEquality().hash(thisMonthVisitDetails),todayTotalVisits,thisMonthTotalVisits,errorMsg);

@override
String toString() {
  return 'TodaySiteVisitState(total: $total, isLoadingTodayVisit: $isLoadingTodayVisit, isLoadingThisMonthVisit: $isLoadingThisMonthVisit, todayVisitDetails: $todayVisitDetails, thisMonthVisitDetails: $thisMonthVisitDetails, todayTotalVisits: $todayTotalVisits, thisMonthTotalVisits: $thisMonthTotalVisits, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $TodaySiteVisitStateCopyWith<$Res>  {
  factory $TodaySiteVisitStateCopyWith(TodaySiteVisitState value, $Res Function(TodaySiteVisitState) _then) = _$TodaySiteVisitStateCopyWithImpl;
@useResult
$Res call({
 int total, bool isLoadingTodayVisit, bool isLoadingThisMonthVisit, List<ToDaySiteVisitDetail> todayVisitDetails, List<ThisMonthSiteVisitDetail> thisMonthVisitDetails, int todayTotalVisits, int thisMonthTotalVisits, String? errorMsg
});




}
/// @nodoc
class _$TodaySiteVisitStateCopyWithImpl<$Res>
    implements $TodaySiteVisitStateCopyWith<$Res> {
  _$TodaySiteVisitStateCopyWithImpl(this._self, this._then);

  final TodaySiteVisitState _self;
  final $Res Function(TodaySiteVisitState) _then;

/// Create a copy of TodaySiteVisitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? isLoadingTodayVisit = null,Object? isLoadingThisMonthVisit = null,Object? todayVisitDetails = null,Object? thisMonthVisitDetails = null,Object? todayTotalVisits = null,Object? thisMonthTotalVisits = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,isLoadingTodayVisit: null == isLoadingTodayVisit ? _self.isLoadingTodayVisit : isLoadingTodayVisit // ignore: cast_nullable_to_non_nullable
as bool,isLoadingThisMonthVisit: null == isLoadingThisMonthVisit ? _self.isLoadingThisMonthVisit : isLoadingThisMonthVisit // ignore: cast_nullable_to_non_nullable
as bool,todayVisitDetails: null == todayVisitDetails ? _self.todayVisitDetails : todayVisitDetails // ignore: cast_nullable_to_non_nullable
as List<ToDaySiteVisitDetail>,thisMonthVisitDetails: null == thisMonthVisitDetails ? _self.thisMonthVisitDetails : thisMonthVisitDetails // ignore: cast_nullable_to_non_nullable
as List<ThisMonthSiteVisitDetail>,todayTotalVisits: null == todayTotalVisits ? _self.todayTotalVisits : todayTotalVisits // ignore: cast_nullable_to_non_nullable
as int,thisMonthTotalVisits: null == thisMonthTotalVisits ? _self.thisMonthTotalVisits : thisMonthTotalVisits // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TodaySiteVisitState].
extension TodaySiteVisitStatePatterns on TodaySiteVisitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodaySiteVisitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodaySiteVisitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodaySiteVisitState value)  $default,){
final _that = this;
switch (_that) {
case _TodaySiteVisitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodaySiteVisitState value)?  $default,){
final _that = this;
switch (_that) {
case _TodaySiteVisitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  bool isLoadingTodayVisit,  bool isLoadingThisMonthVisit,  List<ToDaySiteVisitDetail> todayVisitDetails,  List<ThisMonthSiteVisitDetail> thisMonthVisitDetails,  int todayTotalVisits,  int thisMonthTotalVisits,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodaySiteVisitState() when $default != null:
return $default(_that.total,_that.isLoadingTodayVisit,_that.isLoadingThisMonthVisit,_that.todayVisitDetails,_that.thisMonthVisitDetails,_that.todayTotalVisits,_that.thisMonthTotalVisits,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  bool isLoadingTodayVisit,  bool isLoadingThisMonthVisit,  List<ToDaySiteVisitDetail> todayVisitDetails,  List<ThisMonthSiteVisitDetail> thisMonthVisitDetails,  int todayTotalVisits,  int thisMonthTotalVisits,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _TodaySiteVisitState():
return $default(_that.total,_that.isLoadingTodayVisit,_that.isLoadingThisMonthVisit,_that.todayVisitDetails,_that.thisMonthVisitDetails,_that.todayTotalVisits,_that.thisMonthTotalVisits,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  bool isLoadingTodayVisit,  bool isLoadingThisMonthVisit,  List<ToDaySiteVisitDetail> todayVisitDetails,  List<ThisMonthSiteVisitDetail> thisMonthVisitDetails,  int todayTotalVisits,  int thisMonthTotalVisits,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _TodaySiteVisitState() when $default != null:
return $default(_that.total,_that.isLoadingTodayVisit,_that.isLoadingThisMonthVisit,_that.todayVisitDetails,_that.thisMonthVisitDetails,_that.todayTotalVisits,_that.thisMonthTotalVisits,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _TodaySiteVisitState implements TodaySiteVisitState {
   _TodaySiteVisitState({this.total = 0, this.isLoadingTodayVisit = false, this.isLoadingThisMonthVisit = false, final  List<ToDaySiteVisitDetail> todayVisitDetails = const [], final  List<ThisMonthSiteVisitDetail> thisMonthVisitDetails = const [], this.todayTotalVisits = 0, this.thisMonthTotalVisits = 0, this.errorMsg}): _todayVisitDetails = todayVisitDetails,_thisMonthVisitDetails = thisMonthVisitDetails;
  

@override@JsonKey() final  int total;
@override@JsonKey() final  bool isLoadingTodayVisit;
@override@JsonKey() final  bool isLoadingThisMonthVisit;
 final  List<ToDaySiteVisitDetail> _todayVisitDetails;
@override@JsonKey() List<ToDaySiteVisitDetail> get todayVisitDetails {
  if (_todayVisitDetails is EqualUnmodifiableListView) return _todayVisitDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todayVisitDetails);
}

 final  List<ThisMonthSiteVisitDetail> _thisMonthVisitDetails;
@override@JsonKey() List<ThisMonthSiteVisitDetail> get thisMonthVisitDetails {
  if (_thisMonthVisitDetails is EqualUnmodifiableListView) return _thisMonthVisitDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_thisMonthVisitDetails);
}

@override@JsonKey() final  int todayTotalVisits;
@override@JsonKey() final  int thisMonthTotalVisits;
@override final  String? errorMsg;

/// Create a copy of TodaySiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodaySiteVisitStateCopyWith<_TodaySiteVisitState> get copyWith => __$TodaySiteVisitStateCopyWithImpl<_TodaySiteVisitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodaySiteVisitState&&(identical(other.total, total) || other.total == total)&&(identical(other.isLoadingTodayVisit, isLoadingTodayVisit) || other.isLoadingTodayVisit == isLoadingTodayVisit)&&(identical(other.isLoadingThisMonthVisit, isLoadingThisMonthVisit) || other.isLoadingThisMonthVisit == isLoadingThisMonthVisit)&&const DeepCollectionEquality().equals(other._todayVisitDetails, _todayVisitDetails)&&const DeepCollectionEquality().equals(other._thisMonthVisitDetails, _thisMonthVisitDetails)&&(identical(other.todayTotalVisits, todayTotalVisits) || other.todayTotalVisits == todayTotalVisits)&&(identical(other.thisMonthTotalVisits, thisMonthTotalVisits) || other.thisMonthTotalVisits == thisMonthTotalVisits)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,total,isLoadingTodayVisit,isLoadingThisMonthVisit,const DeepCollectionEquality().hash(_todayVisitDetails),const DeepCollectionEquality().hash(_thisMonthVisitDetails),todayTotalVisits,thisMonthTotalVisits,errorMsg);

@override
String toString() {
  return 'TodaySiteVisitState(total: $total, isLoadingTodayVisit: $isLoadingTodayVisit, isLoadingThisMonthVisit: $isLoadingThisMonthVisit, todayVisitDetails: $todayVisitDetails, thisMonthVisitDetails: $thisMonthVisitDetails, todayTotalVisits: $todayTotalVisits, thisMonthTotalVisits: $thisMonthTotalVisits, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$TodaySiteVisitStateCopyWith<$Res> implements $TodaySiteVisitStateCopyWith<$Res> {
  factory _$TodaySiteVisitStateCopyWith(_TodaySiteVisitState value, $Res Function(_TodaySiteVisitState) _then) = __$TodaySiteVisitStateCopyWithImpl;
@override @useResult
$Res call({
 int total, bool isLoadingTodayVisit, bool isLoadingThisMonthVisit, List<ToDaySiteVisitDetail> todayVisitDetails, List<ThisMonthSiteVisitDetail> thisMonthVisitDetails, int todayTotalVisits, int thisMonthTotalVisits, String? errorMsg
});




}
/// @nodoc
class __$TodaySiteVisitStateCopyWithImpl<$Res>
    implements _$TodaySiteVisitStateCopyWith<$Res> {
  __$TodaySiteVisitStateCopyWithImpl(this._self, this._then);

  final _TodaySiteVisitState _self;
  final $Res Function(_TodaySiteVisitState) _then;

/// Create a copy of TodaySiteVisitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? isLoadingTodayVisit = null,Object? isLoadingThisMonthVisit = null,Object? todayVisitDetails = null,Object? thisMonthVisitDetails = null,Object? todayTotalVisits = null,Object? thisMonthTotalVisits = null,Object? errorMsg = freezed,}) {
  return _then(_TodaySiteVisitState(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,isLoadingTodayVisit: null == isLoadingTodayVisit ? _self.isLoadingTodayVisit : isLoadingTodayVisit // ignore: cast_nullable_to_non_nullable
as bool,isLoadingThisMonthVisit: null == isLoadingThisMonthVisit ? _self.isLoadingThisMonthVisit : isLoadingThisMonthVisit // ignore: cast_nullable_to_non_nullable
as bool,todayVisitDetails: null == todayVisitDetails ? _self._todayVisitDetails : todayVisitDetails // ignore: cast_nullable_to_non_nullable
as List<ToDaySiteVisitDetail>,thisMonthVisitDetails: null == thisMonthVisitDetails ? _self._thisMonthVisitDetails : thisMonthVisitDetails // ignore: cast_nullable_to_non_nullable
as List<ThisMonthSiteVisitDetail>,todayTotalVisits: null == todayTotalVisits ? _self.todayTotalVisits : todayTotalVisits // ignore: cast_nullable_to_non_nullable
as int,thisMonthTotalVisits: null == thisMonthTotalVisits ? _self.thisMonthTotalVisits : thisMonthTotalVisits // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
