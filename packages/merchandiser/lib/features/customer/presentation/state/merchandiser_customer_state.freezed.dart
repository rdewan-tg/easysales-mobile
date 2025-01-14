// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandiser_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchandiserCustomerState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<MerchandiserCustomerEntityData> get customers =>
      throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of MerchandiserCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchandiserCustomerStateCopyWith<MerchandiserCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandiserCustomerStateCopyWith<$Res> {
  factory $MerchandiserCustomerStateCopyWith(MerchandiserCustomerState value,
          $Res Function(MerchandiserCustomerState) then) =
      _$MerchandiserCustomerStateCopyWithImpl<$Res, MerchandiserCustomerState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<MerchandiserCustomerEntityData> customers,
      String? errorMsg});
}

/// @nodoc
class _$MerchandiserCustomerStateCopyWithImpl<$Res,
        $Val extends MerchandiserCustomerState>
    implements $MerchandiserCustomerStateCopyWith<$Res> {
  _$MerchandiserCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchandiserCustomerState
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
              as List<MerchandiserCustomerEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchandiserCustomerStateImplCopyWith<$Res>
    implements $MerchandiserCustomerStateCopyWith<$Res> {
  factory _$$MerchandiserCustomerStateImplCopyWith(
          _$MerchandiserCustomerStateImpl value,
          $Res Function(_$MerchandiserCustomerStateImpl) then) =
      __$$MerchandiserCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<MerchandiserCustomerEntityData> customers,
      String? errorMsg});
}

/// @nodoc
class __$$MerchandiserCustomerStateImplCopyWithImpl<$Res>
    extends _$MerchandiserCustomerStateCopyWithImpl<$Res,
        _$MerchandiserCustomerStateImpl>
    implements _$$MerchandiserCustomerStateImplCopyWith<$Res> {
  __$$MerchandiserCustomerStateImplCopyWithImpl(
      _$MerchandiserCustomerStateImpl _value,
      $Res Function(_$MerchandiserCustomerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandiserCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? customers = null,
    Object? errorMsg = freezed,
  }) {
    return _then(_$MerchandiserCustomerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<MerchandiserCustomerEntityData>,
      errorMsg: freezed == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MerchandiserCustomerStateImpl implements _MerchandiserCustomerState {
  _$MerchandiserCustomerStateImpl(
      {this.isLoading = false,
      final List<MerchandiserCustomerEntityData> customers = const [],
      this.errorMsg})
      : _customers = customers;

  @override
  @JsonKey()
  final bool isLoading;
  final List<MerchandiserCustomerEntityData> _customers;
  @override
  @JsonKey()
  List<MerchandiserCustomerEntityData> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'MerchandiserCustomerState(isLoading: $isLoading, customers: $customers, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchandiserCustomerStateImpl &&
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

  /// Create a copy of MerchandiserCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchandiserCustomerStateImplCopyWith<_$MerchandiserCustomerStateImpl>
      get copyWith => __$$MerchandiserCustomerStateImplCopyWithImpl<
          _$MerchandiserCustomerStateImpl>(this, _$identity);
}

abstract class _MerchandiserCustomerState implements MerchandiserCustomerState {
  factory _MerchandiserCustomerState(
      {final bool isLoading,
      final List<MerchandiserCustomerEntityData> customers,
      final String? errorMsg}) = _$MerchandiserCustomerStateImpl;

  @override
  bool get isLoading;
  @override
  List<MerchandiserCustomerEntityData> get customers;
  @override
  String? get errorMsg;

  /// Create a copy of MerchandiserCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchandiserCustomerStateImplCopyWith<_$MerchandiserCustomerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
