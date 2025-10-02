// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderHistoryState {

 bool get isLoading; bool get isOrderSynced; bool get isOrderCancelled; bool get isItemEdited; bool get isItemRemoved; bool get isDeleteOrder; List<SalesHeaderEntityData> get salesHeaders; List<SalesLineEntityData> get salesLines; double get totalAmount; String? get selectedSalesId; String? get errorMsg;
/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderHistoryStateCopyWith<OrderHistoryState> get copyWith => _$OrderHistoryStateCopyWithImpl<OrderHistoryState>(this as OrderHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.isOrderCancelled, isOrderCancelled) || other.isOrderCancelled == isOrderCancelled)&&(identical(other.isItemEdited, isItemEdited) || other.isItemEdited == isItemEdited)&&(identical(other.isItemRemoved, isItemRemoved) || other.isItemRemoved == isItemRemoved)&&(identical(other.isDeleteOrder, isDeleteOrder) || other.isDeleteOrder == isDeleteOrder)&&const DeepCollectionEquality().equals(other.salesHeaders, salesHeaders)&&const DeepCollectionEquality().equals(other.salesLines, salesLines)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.selectedSalesId, selectedSalesId) || other.selectedSalesId == selectedSalesId)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOrderSynced,isOrderCancelled,isItemEdited,isItemRemoved,isDeleteOrder,const DeepCollectionEquality().hash(salesHeaders),const DeepCollectionEquality().hash(salesLines),totalAmount,selectedSalesId,errorMsg);

@override
String toString() {
  return 'OrderHistoryState(isLoading: $isLoading, isOrderSynced: $isOrderSynced, isOrderCancelled: $isOrderCancelled, isItemEdited: $isItemEdited, isItemRemoved: $isItemRemoved, isDeleteOrder: $isDeleteOrder, salesHeaders: $salesHeaders, salesLines: $salesLines, totalAmount: $totalAmount, selectedSalesId: $selectedSalesId, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $OrderHistoryStateCopyWith<$Res>  {
  factory $OrderHistoryStateCopyWith(OrderHistoryState value, $Res Function(OrderHistoryState) _then) = _$OrderHistoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isOrderSynced, bool isOrderCancelled, bool isItemEdited, bool isItemRemoved, bool isDeleteOrder, List<SalesHeaderEntityData> salesHeaders, List<SalesLineEntityData> salesLines, double totalAmount, String? selectedSalesId, String? errorMsg
});




}
/// @nodoc
class _$OrderHistoryStateCopyWithImpl<$Res>
    implements $OrderHistoryStateCopyWith<$Res> {
  _$OrderHistoryStateCopyWithImpl(this._self, this._then);

  final OrderHistoryState _self;
  final $Res Function(OrderHistoryState) _then;

/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isOrderSynced = null,Object? isOrderCancelled = null,Object? isItemEdited = null,Object? isItemRemoved = null,Object? isDeleteOrder = null,Object? salesHeaders = null,Object? salesLines = null,Object? totalAmount = null,Object? selectedSalesId = freezed,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,isOrderCancelled: null == isOrderCancelled ? _self.isOrderCancelled : isOrderCancelled // ignore: cast_nullable_to_non_nullable
as bool,isItemEdited: null == isItemEdited ? _self.isItemEdited : isItemEdited // ignore: cast_nullable_to_non_nullable
as bool,isItemRemoved: null == isItemRemoved ? _self.isItemRemoved : isItemRemoved // ignore: cast_nullable_to_non_nullable
as bool,isDeleteOrder: null == isDeleteOrder ? _self.isDeleteOrder : isDeleteOrder // ignore: cast_nullable_to_non_nullable
as bool,salesHeaders: null == salesHeaders ? _self.salesHeaders : salesHeaders // ignore: cast_nullable_to_non_nullable
as List<SalesHeaderEntityData>,salesLines: null == salesLines ? _self.salesLines : salesLines // ignore: cast_nullable_to_non_nullable
as List<SalesLineEntityData>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,selectedSalesId: freezed == selectedSalesId ? _self.selectedSalesId : selectedSalesId // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderHistoryState].
extension OrderHistoryStatePatterns on OrderHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isOrderSynced,  bool isOrderCancelled,  bool isItemEdited,  bool isItemRemoved,  bool isDeleteOrder,  List<SalesHeaderEntityData> salesHeaders,  List<SalesLineEntityData> salesLines,  double totalAmount,  String? selectedSalesId,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
return $default(_that.isLoading,_that.isOrderSynced,_that.isOrderCancelled,_that.isItemEdited,_that.isItemRemoved,_that.isDeleteOrder,_that.salesHeaders,_that.salesLines,_that.totalAmount,_that.selectedSalesId,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isOrderSynced,  bool isOrderCancelled,  bool isItemEdited,  bool isItemRemoved,  bool isDeleteOrder,  List<SalesHeaderEntityData> salesHeaders,  List<SalesLineEntityData> salesLines,  double totalAmount,  String? selectedSalesId,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryState():
return $default(_that.isLoading,_that.isOrderSynced,_that.isOrderCancelled,_that.isItemEdited,_that.isItemRemoved,_that.isDeleteOrder,_that.salesHeaders,_that.salesLines,_that.totalAmount,_that.selectedSalesId,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isOrderSynced,  bool isOrderCancelled,  bool isItemEdited,  bool isItemRemoved,  bool isDeleteOrder,  List<SalesHeaderEntityData> salesHeaders,  List<SalesLineEntityData> salesLines,  double totalAmount,  String? selectedSalesId,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _OrderHistoryState() when $default != null:
return $default(_that.isLoading,_that.isOrderSynced,_that.isOrderCancelled,_that.isItemEdited,_that.isItemRemoved,_that.isDeleteOrder,_that.salesHeaders,_that.salesLines,_that.totalAmount,_that.selectedSalesId,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _OrderHistoryState implements OrderHistoryState {
   _OrderHistoryState({this.isLoading = false, this.isOrderSynced = false, this.isOrderCancelled = false, this.isItemEdited = false, this.isItemRemoved = false, this.isDeleteOrder = false, final  List<SalesHeaderEntityData> salesHeaders = const [], final  List<SalesLineEntityData> salesLines = const [], this.totalAmount = 0.0, this.selectedSalesId, this.errorMsg}): _salesHeaders = salesHeaders,_salesLines = salesLines;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isOrderSynced;
@override@JsonKey() final  bool isOrderCancelled;
@override@JsonKey() final  bool isItemEdited;
@override@JsonKey() final  bool isItemRemoved;
@override@JsonKey() final  bool isDeleteOrder;
 final  List<SalesHeaderEntityData> _salesHeaders;
@override@JsonKey() List<SalesHeaderEntityData> get salesHeaders {
  if (_salesHeaders is EqualUnmodifiableListView) return _salesHeaders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesHeaders);
}

 final  List<SalesLineEntityData> _salesLines;
@override@JsonKey() List<SalesLineEntityData> get salesLines {
  if (_salesLines is EqualUnmodifiableListView) return _salesLines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_salesLines);
}

@override@JsonKey() final  double totalAmount;
@override final  String? selectedSalesId;
@override final  String? errorMsg;

/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderHistoryStateCopyWith<_OrderHistoryState> get copyWith => __$OrderHistoryStateCopyWithImpl<_OrderHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isOrderSynced, isOrderSynced) || other.isOrderSynced == isOrderSynced)&&(identical(other.isOrderCancelled, isOrderCancelled) || other.isOrderCancelled == isOrderCancelled)&&(identical(other.isItemEdited, isItemEdited) || other.isItemEdited == isItemEdited)&&(identical(other.isItemRemoved, isItemRemoved) || other.isItemRemoved == isItemRemoved)&&(identical(other.isDeleteOrder, isDeleteOrder) || other.isDeleteOrder == isDeleteOrder)&&const DeepCollectionEquality().equals(other._salesHeaders, _salesHeaders)&&const DeepCollectionEquality().equals(other._salesLines, _salesLines)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.selectedSalesId, selectedSalesId) || other.selectedSalesId == selectedSalesId)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isOrderSynced,isOrderCancelled,isItemEdited,isItemRemoved,isDeleteOrder,const DeepCollectionEquality().hash(_salesHeaders),const DeepCollectionEquality().hash(_salesLines),totalAmount,selectedSalesId,errorMsg);

@override
String toString() {
  return 'OrderHistoryState(isLoading: $isLoading, isOrderSynced: $isOrderSynced, isOrderCancelled: $isOrderCancelled, isItemEdited: $isItemEdited, isItemRemoved: $isItemRemoved, isDeleteOrder: $isDeleteOrder, salesHeaders: $salesHeaders, salesLines: $salesLines, totalAmount: $totalAmount, selectedSalesId: $selectedSalesId, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$OrderHistoryStateCopyWith<$Res> implements $OrderHistoryStateCopyWith<$Res> {
  factory _$OrderHistoryStateCopyWith(_OrderHistoryState value, $Res Function(_OrderHistoryState) _then) = __$OrderHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isOrderSynced, bool isOrderCancelled, bool isItemEdited, bool isItemRemoved, bool isDeleteOrder, List<SalesHeaderEntityData> salesHeaders, List<SalesLineEntityData> salesLines, double totalAmount, String? selectedSalesId, String? errorMsg
});




}
/// @nodoc
class __$OrderHistoryStateCopyWithImpl<$Res>
    implements _$OrderHistoryStateCopyWith<$Res> {
  __$OrderHistoryStateCopyWithImpl(this._self, this._then);

  final _OrderHistoryState _self;
  final $Res Function(_OrderHistoryState) _then;

/// Create a copy of OrderHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isOrderSynced = null,Object? isOrderCancelled = null,Object? isItemEdited = null,Object? isItemRemoved = null,Object? isDeleteOrder = null,Object? salesHeaders = null,Object? salesLines = null,Object? totalAmount = null,Object? selectedSalesId = freezed,Object? errorMsg = freezed,}) {
  return _then(_OrderHistoryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isOrderSynced: null == isOrderSynced ? _self.isOrderSynced : isOrderSynced // ignore: cast_nullable_to_non_nullable
as bool,isOrderCancelled: null == isOrderCancelled ? _self.isOrderCancelled : isOrderCancelled // ignore: cast_nullable_to_non_nullable
as bool,isItemEdited: null == isItemEdited ? _self.isItemEdited : isItemEdited // ignore: cast_nullable_to_non_nullable
as bool,isItemRemoved: null == isItemRemoved ? _self.isItemRemoved : isItemRemoved // ignore: cast_nullable_to_non_nullable
as bool,isDeleteOrder: null == isDeleteOrder ? _self.isDeleteOrder : isDeleteOrder // ignore: cast_nullable_to_non_nullable
as bool,salesHeaders: null == salesHeaders ? _self._salesHeaders : salesHeaders // ignore: cast_nullable_to_non_nullable
as List<SalesHeaderEntityData>,salesLines: null == salesLines ? _self._salesLines : salesLines // ignore: cast_nullable_to_non_nullable
as List<SalesLineEntityData>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,selectedSalesId: freezed == selectedSalesId ? _self.selectedSalesId : selectedSalesId // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
