// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalesCustomerState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SalesCustomerEntityData> get customers =>
      throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of SalesCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesCustomerStateCopyWith<SalesCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesCustomerStateCopyWith<$Res> {
  factory $SalesCustomerStateCopyWith(
          SalesCustomerState value, $Res Function(SalesCustomerState) then) =
      _$SalesCustomerStateCopyWithImpl<$Res, SalesCustomerState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<SalesCustomerEntityData> customers,
      String? errorMsg});
}

/// @nodoc
class _$SalesCustomerStateCopyWithImpl<$Res, $Val extends SalesCustomerState>
    implements $SalesCustomerStateCopyWith<$Res> {
  _$SalesCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? customers = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<SalesCustomerEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesCustomerStateImplCopyWith<$Res>
    implements $SalesCustomerStateCopyWith<$Res> {
  factory _$$SalesCustomerStateImplCopyWith(_$SalesCustomerStateImpl value,
          $Res Function(_$SalesCustomerStateImpl) then) =
      __$$SalesCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<SalesCustomerEntityData> customers,
      String? errorMsg});
}

/// @nodoc
class __$$SalesCustomerStateImplCopyWithImpl<$Res>
    extends _$SalesCustomerStateCopyWithImpl<$Res, _$SalesCustomerStateImpl>
    implements _$$SalesCustomerStateImplCopyWith<$Res> {
  __$$SalesCustomerStateImplCopyWithImpl(_$SalesCustomerStateImpl _value,
      $Res Function(_$SalesCustomerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? customers = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$SalesCustomerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<SalesCustomerEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SalesCustomerStateImpl implements _SalesCustomerState {
  _$SalesCustomerStateImpl(
      {this.isLoading = false,
      final List<SalesCustomerEntityData> customers = const [],
      this.errorMsg})
      : _customers = customers;

  @override
  @JsonKey()
  final bool isLoading;
  final List<SalesCustomerEntityData> _customers;
  @override
  @JsonKey()
  List<SalesCustomerEntityData> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'SalesCustomerState(isLoading: $isLoading, customers: $customers, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesCustomerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_customers), errorMsg);

  /// Create a copy of SalesCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesCustomerStateImplCopyWith<_$SalesCustomerStateImpl> get copyWith =>
      __$$SalesCustomerStateImplCopyWithImpl<_$SalesCustomerStateImpl>(
          this, _$identity);
}

abstract class _SalesCustomerState implements SalesCustomerState {
  factory _SalesCustomerState(
      {final bool isLoading,
      final List<SalesCustomerEntityData> customers,
      final String? errorMsg}) = _$SalesCustomerStateImpl;

  @override
  bool get isLoading;
  @override
  List<SalesCustomerEntityData> get customers;
  @override
  String? get errorMsg;

  /// Create a copy of SalesCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesCustomerStateImplCopyWith<_$SalesCustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
