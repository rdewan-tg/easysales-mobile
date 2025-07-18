// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddressState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddressImported => throw _privateConstructorUsedError;
  int get totalCustomerAddressCount => throw _privateConstructorUsedError;
  List<CustomerAddressEntityData> get addresses =>
      throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
    AddressState value,
    $Res Function(AddressState) then,
  ) = _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isAddressImported,
    int totalCustomerAddressCount,
    List<CustomerAddressEntityData> addresses,
    String? errorMsg,
  });
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddressImported = null,
    Object? totalCustomerAddressCount = null,
    Object? addresses = null,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isAddressImported: null == isAddressImported
                ? _value.isAddressImported
                : isAddressImported // ignore: cast_nullable_to_non_nullable
                      as bool,
            totalCustomerAddressCount: null == totalCustomerAddressCount
                ? _value.totalCustomerAddressCount
                : totalCustomerAddressCount // ignore: cast_nullable_to_non_nullable
                      as int,
            addresses: null == addresses
                ? _value.addresses
                : addresses // ignore: cast_nullable_to_non_nullable
                      as List<CustomerAddressEntityData>,
            errorMsg: freezed == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddressStateImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$AddressStateImplCopyWith(
    _$AddressStateImpl value,
    $Res Function(_$AddressStateImpl) then,
  ) = __$$AddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isAddressImported,
    int totalCustomerAddressCount,
    List<CustomerAddressEntityData> addresses,
    String? errorMsg,
  });
}

/// @nodoc
class __$$AddressStateImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressStateImpl>
    implements _$$AddressStateImplCopyWith<$Res> {
  __$$AddressStateImplCopyWithImpl(
    _$AddressStateImpl _value,
    $Res Function(_$AddressStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAddressImported = null,
    Object? totalCustomerAddressCount = null,
    Object? addresses = null,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _$AddressStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isAddressImported: null == isAddressImported
            ? _value.isAddressImported
            : isAddressImported // ignore: cast_nullable_to_non_nullable
                  as bool,
        totalCustomerAddressCount: null == totalCustomerAddressCount
            ? _value.totalCustomerAddressCount
            : totalCustomerAddressCount // ignore: cast_nullable_to_non_nullable
                  as int,
        addresses: null == addresses
            ? _value._addresses
            : addresses // ignore: cast_nullable_to_non_nullable
                  as List<CustomerAddressEntityData>,
        errorMsg: freezed == errorMsg
            ? _value.errorMsg
            : errorMsg // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AddressStateImpl implements _AddressState {
  _$AddressStateImpl({
    this.isLoading = false,
    this.isAddressImported = false,
    this.totalCustomerAddressCount = 0,
    final List<CustomerAddressEntityData> addresses = const [],
    this.errorMsg,
  }) : _addresses = addresses;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAddressImported;
  @override
  @JsonKey()
  final int totalCustomerAddressCount;
  final List<CustomerAddressEntityData> _addresses;
  @override
  @JsonKey()
  List<CustomerAddressEntityData> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'AddressState(isLoading: $isLoading, isAddressImported: $isAddressImported, totalCustomerAddressCount: $totalCustomerAddressCount, addresses: $addresses, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddressImported, isAddressImported) ||
                other.isAddressImported == isAddressImported) &&
            (identical(
                  other.totalCustomerAddressCount,
                  totalCustomerAddressCount,
                ) ||
                other.totalCustomerAddressCount == totalCustomerAddressCount) &&
            const DeepCollectionEquality().equals(
              other._addresses,
              _addresses,
            ) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isAddressImported,
    totalCustomerAddressCount,
    const DeepCollectionEquality().hash(_addresses),
    errorMsg,
  );

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      __$$AddressStateImplCopyWithImpl<_$AddressStateImpl>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  factory _AddressState({
    final bool isLoading,
    final bool isAddressImported,
    final int totalCustomerAddressCount,
    final List<CustomerAddressEntityData> addresses,
    final String? errorMsg,
  }) = _$AddressStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isAddressImported;
  @override
  int get totalCustomerAddressCount;
  @override
  List<CustomerAddressEntityData> get addresses;
  @override
  String? get errorMsg;

  /// Create a copy of AddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
