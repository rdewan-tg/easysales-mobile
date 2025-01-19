// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SettingEntityTable extends SettingEntity
    with TableInfo<$SettingEntityTable, SettingEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting_entity';
  @override
  VerificationContext validateIntegrity(Insertable<SettingEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntityData(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value']),
    );
  }

  @override
  $SettingEntityTable createAlias(String alias) {
    return $SettingEntityTable(attachedDatabase, alias);
  }
}

class SettingEntityData extends DataClass
    implements Insertable<SettingEntityData> {
  final String key;
  final String? value;
  const SettingEntityData({required this.key, this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String>(value);
    }
    return map;
  }

  SettingEntityCompanion toCompanion(bool nullToAbsent) {
    return SettingEntityCompanion(
      key: Value(key),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory SettingEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntityData(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  SettingEntityData copyWith(
          {String? key, Value<String?> value = const Value.absent()}) =>
      SettingEntityData(
        key: key ?? this.key,
        value: value.present ? value.value : this.value,
      );
  SettingEntityData copyWithCompanion(SettingEntityCompanion data) {
    return SettingEntityData(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntityData(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntityData &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingEntityCompanion extends UpdateCompanion<SettingEntityData> {
  final Value<String> key;
  final Value<String?> value;
  final Value<int> rowid;
  const SettingEntityCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingEntityCompanion.insert({
    required String key,
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<SettingEntityData> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingEntityCompanion copyWith(
      {Value<String>? key, Value<String?>? value, Value<int>? rowid}) {
    return SettingEntityCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntityCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MerchandiserCustomerEntityTable extends MerchandiserCustomerEntity
    with
        TableInfo<$MerchandiserCustomerEntityTable,
            MerchandiserCustomerEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MerchandiserCustomerEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salesPersonIdMeta =
      const VerificationMeta('salesPersonId');
  @override
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
      'sales_person_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salesPersonMeta =
      const VerificationMeta('salesPerson');
  @override
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
      'sales_person', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _merchandiserMeta =
      const VerificationMeta('merchandiser');
  @override
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
      'merchandiser', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryIdMeta =
      const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'country_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _creditLimitMeta =
      const VerificationMeta('creditLimit');
  @override
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
      'credit_limit', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentTermMeta =
      const VerificationMeta('paymentTerm');
  @override
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
      'payment_term', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceGroupMeta =
      const VerificationMeta('priceGroup');
  @override
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
      'price_group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customreDimensionMeta =
      const VerificationMeta('customreDimension');
  @override
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>('customre_dimension', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _companyCodeMeta =
      const VerificationMeta('companyCode');
  @override
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
      'company_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        customerName,
        address,
        salesPersonId,
        salesPerson,
        merchandiser,
        countryId,
        phoneNumber,
        latitude,
        longitude,
        creditLimit,
        currencyCode,
        paymentTerm,
        priceGroup,
        customreDimension,
        status,
        companyId,
        companyCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'merchandiser_customer_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<MerchandiserCustomerEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    } else if (isInserting) {
      context.missing(_customerNameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('sales_person_id')) {
      context.handle(
          _salesPersonIdMeta,
          salesPersonId.isAcceptableOrUnknown(
              data['sales_person_id']!, _salesPersonIdMeta));
    } else if (isInserting) {
      context.missing(_salesPersonIdMeta);
    }
    if (data.containsKey('sales_person')) {
      context.handle(
          _salesPersonMeta,
          salesPerson.isAcceptableOrUnknown(
              data['sales_person']!, _salesPersonMeta));
    }
    if (data.containsKey('merchandiser')) {
      context.handle(
          _merchandiserMeta,
          merchandiser.isAcceptableOrUnknown(
              data['merchandiser']!, _merchandiserMeta));
    }
    if (data.containsKey('country_id')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['country_id']!, _countryIdMeta));
    } else if (isInserting) {
      context.missing(_countryIdMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('credit_limit')) {
      context.handle(
          _creditLimitMeta,
          creditLimit.isAcceptableOrUnknown(
              data['credit_limit']!, _creditLimitMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    if (data.containsKey('payment_term')) {
      context.handle(
          _paymentTermMeta,
          paymentTerm.isAcceptableOrUnknown(
              data['payment_term']!, _paymentTermMeta));
    }
    if (data.containsKey('price_group')) {
      context.handle(
          _priceGroupMeta,
          priceGroup.isAcceptableOrUnknown(
              data['price_group']!, _priceGroupMeta));
    }
    if (data.containsKey('customre_dimension')) {
      context.handle(
          _customreDimensionMeta,
          customreDimension.isAcceptableOrUnknown(
              data['customre_dimension']!, _customreDimensionMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('company_code')) {
      context.handle(
          _companyCodeMeta,
          companyCode.isAcceptableOrUnknown(
              data['company_code']!, _companyCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId};
  @override
  MerchandiserCustomerEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MerchandiserCustomerEntityData(
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_id'])!,
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      salesPersonId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sales_person_id'])!,
      salesPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sales_person']),
      merchandiser: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}merchandiser']),
      countryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country_id'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      creditLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}credit_limit']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
      paymentTerm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_term']),
      priceGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_group']),
      customreDimension: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customre_dimension']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      companyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_code']),
    );
  }

  @override
  $MerchandiserCustomerEntityTable createAlias(String alias) {
    return $MerchandiserCustomerEntityTable(attachedDatabase, alias);
  }
}

class MerchandiserCustomerEntityData extends DataClass
    implements Insertable<MerchandiserCustomerEntityData> {
  final String customerId;
  final String customerName;
  final String? address;
  final String salesPersonId;
  final String? salesPerson;
  final String? merchandiser;
  final String countryId;
  final String? phoneNumber;
  final double latitude;
  final double longitude;
  final double? creditLimit;
  final String? currencyCode;
  final String? paymentTerm;
  final String? priceGroup;
  final String? customreDimension;
  final int status;
  final int companyId;
  final String? companyCode;
  const MerchandiserCustomerEntityData(
      {required this.customerId,
      required this.customerName,
      this.address,
      required this.salesPersonId,
      this.salesPerson,
      this.merchandiser,
      required this.countryId,
      this.phoneNumber,
      required this.latitude,
      required this.longitude,
      this.creditLimit,
      this.currencyCode,
      this.paymentTerm,
      this.priceGroup,
      this.customreDimension,
      required this.status,
      required this.companyId,
      this.companyCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['customer_id'] = Variable<String>(customerId);
    map['customer_name'] = Variable<String>(customerName);
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['sales_person_id'] = Variable<String>(salesPersonId);
    if (!nullToAbsent || salesPerson != null) {
      map['sales_person'] = Variable<String>(salesPerson);
    }
    if (!nullToAbsent || merchandiser != null) {
      map['merchandiser'] = Variable<String>(merchandiser);
    }
    map['country_id'] = Variable<String>(countryId);
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    if (!nullToAbsent || creditLimit != null) {
      map['credit_limit'] = Variable<double>(creditLimit);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    if (!nullToAbsent || paymentTerm != null) {
      map['payment_term'] = Variable<String>(paymentTerm);
    }
    if (!nullToAbsent || priceGroup != null) {
      map['price_group'] = Variable<String>(priceGroup);
    }
    if (!nullToAbsent || customreDimension != null) {
      map['customre_dimension'] = Variable<String>(customreDimension);
    }
    map['status'] = Variable<int>(status);
    map['company_id'] = Variable<int>(companyId);
    if (!nullToAbsent || companyCode != null) {
      map['company_code'] = Variable<String>(companyCode);
    }
    return map;
  }

  MerchandiserCustomerEntityCompanion toCompanion(bool nullToAbsent) {
    return MerchandiserCustomerEntityCompanion(
      customerId: Value(customerId),
      customerName: Value(customerName),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      salesPersonId: Value(salesPersonId),
      salesPerson: salesPerson == null && nullToAbsent
          ? const Value.absent()
          : Value(salesPerson),
      merchandiser: merchandiser == null && nullToAbsent
          ? const Value.absent()
          : Value(merchandiser),
      countryId: Value(countryId),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      latitude: Value(latitude),
      longitude: Value(longitude),
      creditLimit: creditLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(creditLimit),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
      paymentTerm: paymentTerm == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTerm),
      priceGroup: priceGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(priceGroup),
      customreDimension: customreDimension == null && nullToAbsent
          ? const Value.absent()
          : Value(customreDimension),
      status: Value(status),
      companyId: Value(companyId),
      companyCode: companyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(companyCode),
    );
  }

  factory MerchandiserCustomerEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MerchandiserCustomerEntityData(
      customerId: serializer.fromJson<String>(json['customerId']),
      customerName: serializer.fromJson<String>(json['customerName']),
      address: serializer.fromJson<String?>(json['address']),
      salesPersonId: serializer.fromJson<String>(json['salesPersonId']),
      salesPerson: serializer.fromJson<String?>(json['salesPerson']),
      merchandiser: serializer.fromJson<String?>(json['merchandiser']),
      countryId: serializer.fromJson<String>(json['countryId']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      creditLimit: serializer.fromJson<double?>(json['creditLimit']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
      paymentTerm: serializer.fromJson<String?>(json['paymentTerm']),
      priceGroup: serializer.fromJson<String?>(json['priceGroup']),
      customreDimension:
          serializer.fromJson<String?>(json['customreDimension']),
      status: serializer.fromJson<int>(json['status']),
      companyId: serializer.fromJson<int>(json['companyId']),
      companyCode: serializer.fromJson<String?>(json['companyCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'customerId': serializer.toJson<String>(customerId),
      'customerName': serializer.toJson<String>(customerName),
      'address': serializer.toJson<String?>(address),
      'salesPersonId': serializer.toJson<String>(salesPersonId),
      'salesPerson': serializer.toJson<String?>(salesPerson),
      'merchandiser': serializer.toJson<String?>(merchandiser),
      'countryId': serializer.toJson<String>(countryId),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'creditLimit': serializer.toJson<double?>(creditLimit),
      'currencyCode': serializer.toJson<String?>(currencyCode),
      'paymentTerm': serializer.toJson<String?>(paymentTerm),
      'priceGroup': serializer.toJson<String?>(priceGroup),
      'customreDimension': serializer.toJson<String?>(customreDimension),
      'status': serializer.toJson<int>(status),
      'companyId': serializer.toJson<int>(companyId),
      'companyCode': serializer.toJson<String?>(companyCode),
    };
  }

  MerchandiserCustomerEntityData copyWith(
          {String? customerId,
          String? customerName,
          Value<String?> address = const Value.absent(),
          String? salesPersonId,
          Value<String?> salesPerson = const Value.absent(),
          Value<String?> merchandiser = const Value.absent(),
          String? countryId,
          Value<String?> phoneNumber = const Value.absent(),
          double? latitude,
          double? longitude,
          Value<double?> creditLimit = const Value.absent(),
          Value<String?> currencyCode = const Value.absent(),
          Value<String?> paymentTerm = const Value.absent(),
          Value<String?> priceGroup = const Value.absent(),
          Value<String?> customreDimension = const Value.absent(),
          int? status,
          int? companyId,
          Value<String?> companyCode = const Value.absent()}) =>
      MerchandiserCustomerEntityData(
        customerId: customerId ?? this.customerId,
        customerName: customerName ?? this.customerName,
        address: address.present ? address.value : this.address,
        salesPersonId: salesPersonId ?? this.salesPersonId,
        salesPerson: salesPerson.present ? salesPerson.value : this.salesPerson,
        merchandiser:
            merchandiser.present ? merchandiser.value : this.merchandiser,
        countryId: countryId ?? this.countryId,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        creditLimit: creditLimit.present ? creditLimit.value : this.creditLimit,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
        paymentTerm: paymentTerm.present ? paymentTerm.value : this.paymentTerm,
        priceGroup: priceGroup.present ? priceGroup.value : this.priceGroup,
        customreDimension: customreDimension.present
            ? customreDimension.value
            : this.customreDimension,
        status: status ?? this.status,
        companyId: companyId ?? this.companyId,
        companyCode: companyCode.present ? companyCode.value : this.companyCode,
      );
  MerchandiserCustomerEntityData copyWithCompanion(
      MerchandiserCustomerEntityCompanion data) {
    return MerchandiserCustomerEntityData(
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      address: data.address.present ? data.address.value : this.address,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      salesPerson:
          data.salesPerson.present ? data.salesPerson.value : this.salesPerson,
      merchandiser: data.merchandiser.present
          ? data.merchandiser.value
          : this.merchandiser,
      countryId: data.countryId.present ? data.countryId.value : this.countryId,
      phoneNumber:
          data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      creditLimit:
          data.creditLimit.present ? data.creditLimit.value : this.creditLimit,
      currencyCode: data.currencyCode.present
          ? data.currencyCode.value
          : this.currencyCode,
      paymentTerm:
          data.paymentTerm.present ? data.paymentTerm.value : this.paymentTerm,
      priceGroup:
          data.priceGroup.present ? data.priceGroup.value : this.priceGroup,
      customreDimension: data.customreDimension.present
          ? data.customreDimension.value
          : this.customreDimension,
      status: data.status.present ? data.status.value : this.status,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode:
          data.companyCode.present ? data.companyCode.value : this.companyCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MerchandiserCustomerEntityData(')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('salesPerson: $salesPerson, ')
          ..write('merchandiser: $merchandiser, ')
          ..write('countryId: $countryId, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('paymentTerm: $paymentTerm, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('customreDimension: $customreDimension, ')
          ..write('status: $status, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      customerId,
      customerName,
      address,
      salesPersonId,
      salesPerson,
      merchandiser,
      countryId,
      phoneNumber,
      latitude,
      longitude,
      creditLimit,
      currencyCode,
      paymentTerm,
      priceGroup,
      customreDimension,
      status,
      companyId,
      companyCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MerchandiserCustomerEntityData &&
          other.customerId == this.customerId &&
          other.customerName == this.customerName &&
          other.address == this.address &&
          other.salesPersonId == this.salesPersonId &&
          other.salesPerson == this.salesPerson &&
          other.merchandiser == this.merchandiser &&
          other.countryId == this.countryId &&
          other.phoneNumber == this.phoneNumber &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.creditLimit == this.creditLimit &&
          other.currencyCode == this.currencyCode &&
          other.paymentTerm == this.paymentTerm &&
          other.priceGroup == this.priceGroup &&
          other.customreDimension == this.customreDimension &&
          other.status == this.status &&
          other.companyId == this.companyId &&
          other.companyCode == this.companyCode);
}

class MerchandiserCustomerEntityCompanion
    extends UpdateCompanion<MerchandiserCustomerEntityData> {
  final Value<String> customerId;
  final Value<String> customerName;
  final Value<String?> address;
  final Value<String> salesPersonId;
  final Value<String?> salesPerson;
  final Value<String?> merchandiser;
  final Value<String> countryId;
  final Value<String?> phoneNumber;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<double?> creditLimit;
  final Value<String?> currencyCode;
  final Value<String?> paymentTerm;
  final Value<String?> priceGroup;
  final Value<String?> customreDimension;
  final Value<int> status;
  final Value<int> companyId;
  final Value<String?> companyCode;
  final Value<int> rowid;
  const MerchandiserCustomerEntityCompanion({
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.address = const Value.absent(),
    this.salesPersonId = const Value.absent(),
    this.salesPerson = const Value.absent(),
    this.merchandiser = const Value.absent(),
    this.countryId = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.paymentTerm = const Value.absent(),
    this.priceGroup = const Value.absent(),
    this.customreDimension = const Value.absent(),
    this.status = const Value.absent(),
    this.companyId = const Value.absent(),
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MerchandiserCustomerEntityCompanion.insert({
    required String customerId,
    required String customerName,
    this.address = const Value.absent(),
    required String salesPersonId,
    this.salesPerson = const Value.absent(),
    this.merchandiser = const Value.absent(),
    required String countryId,
    this.phoneNumber = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.paymentTerm = const Value.absent(),
    this.priceGroup = const Value.absent(),
    this.customreDimension = const Value.absent(),
    required int status,
    required int companyId,
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : customerId = Value(customerId),
        customerName = Value(customerName),
        salesPersonId = Value(salesPersonId),
        countryId = Value(countryId),
        status = Value(status),
        companyId = Value(companyId);
  static Insertable<MerchandiserCustomerEntityData> custom({
    Expression<String>? customerId,
    Expression<String>? customerName,
    Expression<String>? address,
    Expression<String>? salesPersonId,
    Expression<String>? salesPerson,
    Expression<String>? merchandiser,
    Expression<String>? countryId,
    Expression<String>? phoneNumber,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? creditLimit,
    Expression<String>? currencyCode,
    Expression<String>? paymentTerm,
    Expression<String>? priceGroup,
    Expression<String>? customreDimension,
    Expression<int>? status,
    Expression<int>? companyId,
    Expression<String>? companyCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'customer_id': customerId,
      if (customerName != null) 'customer_name': customerName,
      if (address != null) 'address': address,
      if (salesPersonId != null) 'sales_person_id': salesPersonId,
      if (salesPerson != null) 'sales_person': salesPerson,
      if (merchandiser != null) 'merchandiser': merchandiser,
      if (countryId != null) 'country_id': countryId,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (paymentTerm != null) 'payment_term': paymentTerm,
      if (priceGroup != null) 'price_group': priceGroup,
      if (customreDimension != null) 'customre_dimension': customreDimension,
      if (status != null) 'status': status,
      if (companyId != null) 'company_id': companyId,
      if (companyCode != null) 'company_code': companyCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MerchandiserCustomerEntityCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? customerName,
      Value<String?>? address,
      Value<String>? salesPersonId,
      Value<String?>? salesPerson,
      Value<String?>? merchandiser,
      Value<String>? countryId,
      Value<String?>? phoneNumber,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<double?>? creditLimit,
      Value<String?>? currencyCode,
      Value<String?>? paymentTerm,
      Value<String?>? priceGroup,
      Value<String?>? customreDimension,
      Value<int>? status,
      Value<int>? companyId,
      Value<String?>? companyCode,
      Value<int>? rowid}) {
    return MerchandiserCustomerEntityCompanion(
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      address: address ?? this.address,
      salesPersonId: salesPersonId ?? this.salesPersonId,
      salesPerson: salesPerson ?? this.salesPerson,
      merchandiser: merchandiser ?? this.merchandiser,
      countryId: countryId ?? this.countryId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      creditLimit: creditLimit ?? this.creditLimit,
      currencyCode: currencyCode ?? this.currencyCode,
      paymentTerm: paymentTerm ?? this.paymentTerm,
      priceGroup: priceGroup ?? this.priceGroup,
      customreDimension: customreDimension ?? this.customreDimension,
      status: status ?? this.status,
      companyId: companyId ?? this.companyId,
      companyCode: companyCode ?? this.companyCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (salesPersonId.present) {
      map['sales_person_id'] = Variable<String>(salesPersonId.value);
    }
    if (salesPerson.present) {
      map['sales_person'] = Variable<String>(salesPerson.value);
    }
    if (merchandiser.present) {
      map['merchandiser'] = Variable<String>(merchandiser.value);
    }
    if (countryId.present) {
      map['country_id'] = Variable<String>(countryId.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (creditLimit.present) {
      map['credit_limit'] = Variable<double>(creditLimit.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (paymentTerm.present) {
      map['payment_term'] = Variable<String>(paymentTerm.value);
    }
    if (priceGroup.present) {
      map['price_group'] = Variable<String>(priceGroup.value);
    }
    if (customreDimension.present) {
      map['customre_dimension'] = Variable<String>(customreDimension.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (companyCode.present) {
      map['company_code'] = Variable<String>(companyCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MerchandiserCustomerEntityCompanion(')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('salesPerson: $salesPerson, ')
          ..write('merchandiser: $merchandiser, ')
          ..write('countryId: $countryId, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('paymentTerm: $paymentTerm, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('customreDimension: $customreDimension, ')
          ..write('status: $status, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SalesCustomerEntityTable extends SalesCustomerEntity
    with TableInfo<$SalesCustomerEntityTable, SalesCustomerEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesCustomerEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salesPersonIdMeta =
      const VerificationMeta('salesPersonId');
  @override
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
      'sales_person_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salesPersonMeta =
      const VerificationMeta('salesPerson');
  @override
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
      'sales_person', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _merchandiserMeta =
      const VerificationMeta('merchandiser');
  @override
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
      'merchandiser', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryIdMeta =
      const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'country_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _creditLimitMeta =
      const VerificationMeta('creditLimit');
  @override
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
      'credit_limit', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentTermMeta =
      const VerificationMeta('paymentTerm');
  @override
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
      'payment_term', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceGroupMeta =
      const VerificationMeta('priceGroup');
  @override
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
      'price_group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customreDimensionMeta =
      const VerificationMeta('customreDimension');
  @override
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>('customre_dimension', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _companyCodeMeta =
      const VerificationMeta('companyCode');
  @override
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
      'company_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        customerName,
        address,
        salesPersonId,
        salesPerson,
        merchandiser,
        countryId,
        phoneNumber,
        latitude,
        longitude,
        creditLimit,
        currencyCode,
        paymentTerm,
        priceGroup,
        customreDimension,
        status,
        companyId,
        companyCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_customer_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<SalesCustomerEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    } else if (isInserting) {
      context.missing(_customerNameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('sales_person_id')) {
      context.handle(
          _salesPersonIdMeta,
          salesPersonId.isAcceptableOrUnknown(
              data['sales_person_id']!, _salesPersonIdMeta));
    } else if (isInserting) {
      context.missing(_salesPersonIdMeta);
    }
    if (data.containsKey('sales_person')) {
      context.handle(
          _salesPersonMeta,
          salesPerson.isAcceptableOrUnknown(
              data['sales_person']!, _salesPersonMeta));
    }
    if (data.containsKey('merchandiser')) {
      context.handle(
          _merchandiserMeta,
          merchandiser.isAcceptableOrUnknown(
              data['merchandiser']!, _merchandiserMeta));
    }
    if (data.containsKey('country_id')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['country_id']!, _countryIdMeta));
    } else if (isInserting) {
      context.missing(_countryIdMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('credit_limit')) {
      context.handle(
          _creditLimitMeta,
          creditLimit.isAcceptableOrUnknown(
              data['credit_limit']!, _creditLimitMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    }
    if (data.containsKey('payment_term')) {
      context.handle(
          _paymentTermMeta,
          paymentTerm.isAcceptableOrUnknown(
              data['payment_term']!, _paymentTermMeta));
    }
    if (data.containsKey('price_group')) {
      context.handle(
          _priceGroupMeta,
          priceGroup.isAcceptableOrUnknown(
              data['price_group']!, _priceGroupMeta));
    }
    if (data.containsKey('customre_dimension')) {
      context.handle(
          _customreDimensionMeta,
          customreDimension.isAcceptableOrUnknown(
              data['customre_dimension']!, _customreDimensionMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('company_code')) {
      context.handle(
          _companyCodeMeta,
          companyCode.isAcceptableOrUnknown(
              data['company_code']!, _companyCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId};
  @override
  SalesCustomerEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesCustomerEntityData(
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_id'])!,
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      salesPersonId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sales_person_id'])!,
      salesPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sales_person']),
      merchandiser: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}merchandiser']),
      countryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country_id'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      creditLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}credit_limit']),
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code']),
      paymentTerm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_term']),
      priceGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_group']),
      customreDimension: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}customre_dimension']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}status'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      companyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_code']),
    );
  }

  @override
  $SalesCustomerEntityTable createAlias(String alias) {
    return $SalesCustomerEntityTable(attachedDatabase, alias);
  }
}

class SalesCustomerEntityData extends DataClass
    implements Insertable<SalesCustomerEntityData> {
  final String customerId;
  final String customerName;
  final String? address;
  final String salesPersonId;
  final String? salesPerson;
  final String? merchandiser;
  final String countryId;
  final String? phoneNumber;
  final double latitude;
  final double longitude;
  final double? creditLimit;
  final String? currencyCode;
  final String? paymentTerm;
  final String? priceGroup;
  final String? customreDimension;
  final int status;
  final int companyId;
  final String? companyCode;
  const SalesCustomerEntityData(
      {required this.customerId,
      required this.customerName,
      this.address,
      required this.salesPersonId,
      this.salesPerson,
      this.merchandiser,
      required this.countryId,
      this.phoneNumber,
      required this.latitude,
      required this.longitude,
      this.creditLimit,
      this.currencyCode,
      this.paymentTerm,
      this.priceGroup,
      this.customreDimension,
      required this.status,
      required this.companyId,
      this.companyCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['customer_id'] = Variable<String>(customerId);
    map['customer_name'] = Variable<String>(customerName);
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['sales_person_id'] = Variable<String>(salesPersonId);
    if (!nullToAbsent || salesPerson != null) {
      map['sales_person'] = Variable<String>(salesPerson);
    }
    if (!nullToAbsent || merchandiser != null) {
      map['merchandiser'] = Variable<String>(merchandiser);
    }
    map['country_id'] = Variable<String>(countryId);
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    if (!nullToAbsent || creditLimit != null) {
      map['credit_limit'] = Variable<double>(creditLimit);
    }
    if (!nullToAbsent || currencyCode != null) {
      map['currency_code'] = Variable<String>(currencyCode);
    }
    if (!nullToAbsent || paymentTerm != null) {
      map['payment_term'] = Variable<String>(paymentTerm);
    }
    if (!nullToAbsent || priceGroup != null) {
      map['price_group'] = Variable<String>(priceGroup);
    }
    if (!nullToAbsent || customreDimension != null) {
      map['customre_dimension'] = Variable<String>(customreDimension);
    }
    map['status'] = Variable<int>(status);
    map['company_id'] = Variable<int>(companyId);
    if (!nullToAbsent || companyCode != null) {
      map['company_code'] = Variable<String>(companyCode);
    }
    return map;
  }

  SalesCustomerEntityCompanion toCompanion(bool nullToAbsent) {
    return SalesCustomerEntityCompanion(
      customerId: Value(customerId),
      customerName: Value(customerName),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      salesPersonId: Value(salesPersonId),
      salesPerson: salesPerson == null && nullToAbsent
          ? const Value.absent()
          : Value(salesPerson),
      merchandiser: merchandiser == null && nullToAbsent
          ? const Value.absent()
          : Value(merchandiser),
      countryId: Value(countryId),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
      latitude: Value(latitude),
      longitude: Value(longitude),
      creditLimit: creditLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(creditLimit),
      currencyCode: currencyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(currencyCode),
      paymentTerm: paymentTerm == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTerm),
      priceGroup: priceGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(priceGroup),
      customreDimension: customreDimension == null && nullToAbsent
          ? const Value.absent()
          : Value(customreDimension),
      status: Value(status),
      companyId: Value(companyId),
      companyCode: companyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(companyCode),
    );
  }

  factory SalesCustomerEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesCustomerEntityData(
      customerId: serializer.fromJson<String>(json['customerId']),
      customerName: serializer.fromJson<String>(json['customerName']),
      address: serializer.fromJson<String?>(json['address']),
      salesPersonId: serializer.fromJson<String>(json['salesPersonId']),
      salesPerson: serializer.fromJson<String?>(json['salesPerson']),
      merchandiser: serializer.fromJson<String?>(json['merchandiser']),
      countryId: serializer.fromJson<String>(json['countryId']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      creditLimit: serializer.fromJson<double?>(json['creditLimit']),
      currencyCode: serializer.fromJson<String?>(json['currencyCode']),
      paymentTerm: serializer.fromJson<String?>(json['paymentTerm']),
      priceGroup: serializer.fromJson<String?>(json['priceGroup']),
      customreDimension:
          serializer.fromJson<String?>(json['customreDimension']),
      status: serializer.fromJson<int>(json['status']),
      companyId: serializer.fromJson<int>(json['companyId']),
      companyCode: serializer.fromJson<String?>(json['companyCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'customerId': serializer.toJson<String>(customerId),
      'customerName': serializer.toJson<String>(customerName),
      'address': serializer.toJson<String?>(address),
      'salesPersonId': serializer.toJson<String>(salesPersonId),
      'salesPerson': serializer.toJson<String?>(salesPerson),
      'merchandiser': serializer.toJson<String?>(merchandiser),
      'countryId': serializer.toJson<String>(countryId),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'creditLimit': serializer.toJson<double?>(creditLimit),
      'currencyCode': serializer.toJson<String?>(currencyCode),
      'paymentTerm': serializer.toJson<String?>(paymentTerm),
      'priceGroup': serializer.toJson<String?>(priceGroup),
      'customreDimension': serializer.toJson<String?>(customreDimension),
      'status': serializer.toJson<int>(status),
      'companyId': serializer.toJson<int>(companyId),
      'companyCode': serializer.toJson<String?>(companyCode),
    };
  }

  SalesCustomerEntityData copyWith(
          {String? customerId,
          String? customerName,
          Value<String?> address = const Value.absent(),
          String? salesPersonId,
          Value<String?> salesPerson = const Value.absent(),
          Value<String?> merchandiser = const Value.absent(),
          String? countryId,
          Value<String?> phoneNumber = const Value.absent(),
          double? latitude,
          double? longitude,
          Value<double?> creditLimit = const Value.absent(),
          Value<String?> currencyCode = const Value.absent(),
          Value<String?> paymentTerm = const Value.absent(),
          Value<String?> priceGroup = const Value.absent(),
          Value<String?> customreDimension = const Value.absent(),
          int? status,
          int? companyId,
          Value<String?> companyCode = const Value.absent()}) =>
      SalesCustomerEntityData(
        customerId: customerId ?? this.customerId,
        customerName: customerName ?? this.customerName,
        address: address.present ? address.value : this.address,
        salesPersonId: salesPersonId ?? this.salesPersonId,
        salesPerson: salesPerson.present ? salesPerson.value : this.salesPerson,
        merchandiser:
            merchandiser.present ? merchandiser.value : this.merchandiser,
        countryId: countryId ?? this.countryId,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        creditLimit: creditLimit.present ? creditLimit.value : this.creditLimit,
        currencyCode:
            currencyCode.present ? currencyCode.value : this.currencyCode,
        paymentTerm: paymentTerm.present ? paymentTerm.value : this.paymentTerm,
        priceGroup: priceGroup.present ? priceGroup.value : this.priceGroup,
        customreDimension: customreDimension.present
            ? customreDimension.value
            : this.customreDimension,
        status: status ?? this.status,
        companyId: companyId ?? this.companyId,
        companyCode: companyCode.present ? companyCode.value : this.companyCode,
      );
  SalesCustomerEntityData copyWithCompanion(SalesCustomerEntityCompanion data) {
    return SalesCustomerEntityData(
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      address: data.address.present ? data.address.value : this.address,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      salesPerson:
          data.salesPerson.present ? data.salesPerson.value : this.salesPerson,
      merchandiser: data.merchandiser.present
          ? data.merchandiser.value
          : this.merchandiser,
      countryId: data.countryId.present ? data.countryId.value : this.countryId,
      phoneNumber:
          data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      creditLimit:
          data.creditLimit.present ? data.creditLimit.value : this.creditLimit,
      currencyCode: data.currencyCode.present
          ? data.currencyCode.value
          : this.currencyCode,
      paymentTerm:
          data.paymentTerm.present ? data.paymentTerm.value : this.paymentTerm,
      priceGroup:
          data.priceGroup.present ? data.priceGroup.value : this.priceGroup,
      customreDimension: data.customreDimension.present
          ? data.customreDimension.value
          : this.customreDimension,
      status: data.status.present ? data.status.value : this.status,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode:
          data.companyCode.present ? data.companyCode.value : this.companyCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SalesCustomerEntityData(')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('salesPerson: $salesPerson, ')
          ..write('merchandiser: $merchandiser, ')
          ..write('countryId: $countryId, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('paymentTerm: $paymentTerm, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('customreDimension: $customreDimension, ')
          ..write('status: $status, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      customerId,
      customerName,
      address,
      salesPersonId,
      salesPerson,
      merchandiser,
      countryId,
      phoneNumber,
      latitude,
      longitude,
      creditLimit,
      currencyCode,
      paymentTerm,
      priceGroup,
      customreDimension,
      status,
      companyId,
      companyCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesCustomerEntityData &&
          other.customerId == this.customerId &&
          other.customerName == this.customerName &&
          other.address == this.address &&
          other.salesPersonId == this.salesPersonId &&
          other.salesPerson == this.salesPerson &&
          other.merchandiser == this.merchandiser &&
          other.countryId == this.countryId &&
          other.phoneNumber == this.phoneNumber &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.creditLimit == this.creditLimit &&
          other.currencyCode == this.currencyCode &&
          other.paymentTerm == this.paymentTerm &&
          other.priceGroup == this.priceGroup &&
          other.customreDimension == this.customreDimension &&
          other.status == this.status &&
          other.companyId == this.companyId &&
          other.companyCode == this.companyCode);
}

class SalesCustomerEntityCompanion
    extends UpdateCompanion<SalesCustomerEntityData> {
  final Value<String> customerId;
  final Value<String> customerName;
  final Value<String?> address;
  final Value<String> salesPersonId;
  final Value<String?> salesPerson;
  final Value<String?> merchandiser;
  final Value<String> countryId;
  final Value<String?> phoneNumber;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<double?> creditLimit;
  final Value<String?> currencyCode;
  final Value<String?> paymentTerm;
  final Value<String?> priceGroup;
  final Value<String?> customreDimension;
  final Value<int> status;
  final Value<int> companyId;
  final Value<String?> companyCode;
  final Value<int> rowid;
  const SalesCustomerEntityCompanion({
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.address = const Value.absent(),
    this.salesPersonId = const Value.absent(),
    this.salesPerson = const Value.absent(),
    this.merchandiser = const Value.absent(),
    this.countryId = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.paymentTerm = const Value.absent(),
    this.priceGroup = const Value.absent(),
    this.customreDimension = const Value.absent(),
    this.status = const Value.absent(),
    this.companyId = const Value.absent(),
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SalesCustomerEntityCompanion.insert({
    required String customerId,
    required String customerName,
    this.address = const Value.absent(),
    required String salesPersonId,
    this.salesPerson = const Value.absent(),
    this.merchandiser = const Value.absent(),
    required String countryId,
    this.phoneNumber = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.paymentTerm = const Value.absent(),
    this.priceGroup = const Value.absent(),
    this.customreDimension = const Value.absent(),
    required int status,
    required int companyId,
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : customerId = Value(customerId),
        customerName = Value(customerName),
        salesPersonId = Value(salesPersonId),
        countryId = Value(countryId),
        status = Value(status),
        companyId = Value(companyId);
  static Insertable<SalesCustomerEntityData> custom({
    Expression<String>? customerId,
    Expression<String>? customerName,
    Expression<String>? address,
    Expression<String>? salesPersonId,
    Expression<String>? salesPerson,
    Expression<String>? merchandiser,
    Expression<String>? countryId,
    Expression<String>? phoneNumber,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? creditLimit,
    Expression<String>? currencyCode,
    Expression<String>? paymentTerm,
    Expression<String>? priceGroup,
    Expression<String>? customreDimension,
    Expression<int>? status,
    Expression<int>? companyId,
    Expression<String>? companyCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'customer_id': customerId,
      if (customerName != null) 'customer_name': customerName,
      if (address != null) 'address': address,
      if (salesPersonId != null) 'sales_person_id': salesPersonId,
      if (salesPerson != null) 'sales_person': salesPerson,
      if (merchandiser != null) 'merchandiser': merchandiser,
      if (countryId != null) 'country_id': countryId,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (paymentTerm != null) 'payment_term': paymentTerm,
      if (priceGroup != null) 'price_group': priceGroup,
      if (customreDimension != null) 'customre_dimension': customreDimension,
      if (status != null) 'status': status,
      if (companyId != null) 'company_id': companyId,
      if (companyCode != null) 'company_code': companyCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SalesCustomerEntityCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? customerName,
      Value<String?>? address,
      Value<String>? salesPersonId,
      Value<String?>? salesPerson,
      Value<String?>? merchandiser,
      Value<String>? countryId,
      Value<String?>? phoneNumber,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<double?>? creditLimit,
      Value<String?>? currencyCode,
      Value<String?>? paymentTerm,
      Value<String?>? priceGroup,
      Value<String?>? customreDimension,
      Value<int>? status,
      Value<int>? companyId,
      Value<String?>? companyCode,
      Value<int>? rowid}) {
    return SalesCustomerEntityCompanion(
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      address: address ?? this.address,
      salesPersonId: salesPersonId ?? this.salesPersonId,
      salesPerson: salesPerson ?? this.salesPerson,
      merchandiser: merchandiser ?? this.merchandiser,
      countryId: countryId ?? this.countryId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      creditLimit: creditLimit ?? this.creditLimit,
      currencyCode: currencyCode ?? this.currencyCode,
      paymentTerm: paymentTerm ?? this.paymentTerm,
      priceGroup: priceGroup ?? this.priceGroup,
      customreDimension: customreDimension ?? this.customreDimension,
      status: status ?? this.status,
      companyId: companyId ?? this.companyId,
      companyCode: companyCode ?? this.companyCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (salesPersonId.present) {
      map['sales_person_id'] = Variable<String>(salesPersonId.value);
    }
    if (salesPerson.present) {
      map['sales_person'] = Variable<String>(salesPerson.value);
    }
    if (merchandiser.present) {
      map['merchandiser'] = Variable<String>(merchandiser.value);
    }
    if (countryId.present) {
      map['country_id'] = Variable<String>(countryId.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (creditLimit.present) {
      map['credit_limit'] = Variable<double>(creditLimit.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (paymentTerm.present) {
      map['payment_term'] = Variable<String>(paymentTerm.value);
    }
    if (priceGroup.present) {
      map['price_group'] = Variable<String>(priceGroup.value);
    }
    if (customreDimension.present) {
      map['customre_dimension'] = Variable<String>(customreDimension.value);
    }
    if (status.present) {
      map['status'] = Variable<int>(status.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (companyCode.present) {
      map['company_code'] = Variable<String>(companyCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesCustomerEntityCompanion(')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('salesPerson: $salesPerson, ')
          ..write('merchandiser: $merchandiser, ')
          ..write('countryId: $countryId, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('paymentTerm: $paymentTerm, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('customreDimension: $customreDimension, ')
          ..write('status: $status, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SearchMerchandiserCustomerHistoryEntityTable
    extends SearchMerchandiserCustomerHistoryEntity
    with
        TableInfo<$SearchMerchandiserCustomerHistoryEntityTable,
            SearchMerchandiserCustomerHistoryEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchMerchandiserCustomerHistoryEntityTable(this.attachedDatabase,
      [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_merchandiser_customer_history_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<SearchMerchandiserCustomerHistoryEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SearchMerchandiserCustomerHistoryEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchMerchandiserCustomerHistoryEntityData(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
    );
  }

  @override
  $SearchMerchandiserCustomerHistoryEntityTable createAlias(String alias) {
    return $SearchMerchandiserCustomerHistoryEntityTable(
        attachedDatabase, alias);
  }
}

class SearchMerchandiserCustomerHistoryEntityData extends DataClass
    implements Insertable<SearchMerchandiserCustomerHistoryEntityData> {
  final String key;
  const SearchMerchandiserCustomerHistoryEntityData({required this.key});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    return map;
  }

  SearchMerchandiserCustomerHistoryEntityCompanion toCompanion(
      bool nullToAbsent) {
    return SearchMerchandiserCustomerHistoryEntityCompanion(
      key: Value(key),
    );
  }

  factory SearchMerchandiserCustomerHistoryEntityData.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchMerchandiserCustomerHistoryEntityData(
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
    };
  }

  SearchMerchandiserCustomerHistoryEntityData copyWith({String? key}) =>
      SearchMerchandiserCustomerHistoryEntityData(
        key: key ?? this.key,
      );
  SearchMerchandiserCustomerHistoryEntityData copyWithCompanion(
      SearchMerchandiserCustomerHistoryEntityCompanion data) {
    return SearchMerchandiserCustomerHistoryEntityData(
      key: data.key.present ? data.key.value : this.key,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SearchMerchandiserCustomerHistoryEntityData(')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => key.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchMerchandiserCustomerHistoryEntityData &&
          other.key == this.key);
}

class SearchMerchandiserCustomerHistoryEntityCompanion
    extends UpdateCompanion<SearchMerchandiserCustomerHistoryEntityData> {
  final Value<String> key;
  final Value<int> rowid;
  const SearchMerchandiserCustomerHistoryEntityCompanion({
    this.key = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SearchMerchandiserCustomerHistoryEntityCompanion.insert({
    required String key,
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<SearchMerchandiserCustomerHistoryEntityData> custom({
    Expression<String>? key,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SearchMerchandiserCustomerHistoryEntityCompanion copyWith(
      {Value<String>? key, Value<int>? rowid}) {
    return SearchMerchandiserCustomerHistoryEntityCompanion(
      key: key ?? this.key,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchMerchandiserCustomerHistoryEntityCompanion(')
          ..write('key: $key, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SearchSalesCustomerHistoryEntityTable
    extends SearchSalesCustomerHistoryEntity
    with
        TableInfo<$SearchSalesCustomerHistoryEntityTable,
            SearchSalesCustomerHistoryEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchSalesCustomerHistoryEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_sales_customer_history_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<SearchSalesCustomerHistoryEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SearchSalesCustomerHistoryEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchSalesCustomerHistoryEntityData(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
    );
  }

  @override
  $SearchSalesCustomerHistoryEntityTable createAlias(String alias) {
    return $SearchSalesCustomerHistoryEntityTable(attachedDatabase, alias);
  }
}

class SearchSalesCustomerHistoryEntityData extends DataClass
    implements Insertable<SearchSalesCustomerHistoryEntityData> {
  final String key;
  const SearchSalesCustomerHistoryEntityData({required this.key});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    return map;
  }

  SearchSalesCustomerHistoryEntityCompanion toCompanion(bool nullToAbsent) {
    return SearchSalesCustomerHistoryEntityCompanion(
      key: Value(key),
    );
  }

  factory SearchSalesCustomerHistoryEntityData.fromJson(
      Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchSalesCustomerHistoryEntityData(
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
    };
  }

  SearchSalesCustomerHistoryEntityData copyWith({String? key}) =>
      SearchSalesCustomerHistoryEntityData(
        key: key ?? this.key,
      );
  SearchSalesCustomerHistoryEntityData copyWithCompanion(
      SearchSalesCustomerHistoryEntityCompanion data) {
    return SearchSalesCustomerHistoryEntityData(
      key: data.key.present ? data.key.value : this.key,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SearchSalesCustomerHistoryEntityData(')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => key.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchSalesCustomerHistoryEntityData && other.key == this.key);
}

class SearchSalesCustomerHistoryEntityCompanion
    extends UpdateCompanion<SearchSalesCustomerHistoryEntityData> {
  final Value<String> key;
  final Value<int> rowid;
  const SearchSalesCustomerHistoryEntityCompanion({
    this.key = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SearchSalesCustomerHistoryEntityCompanion.insert({
    required String key,
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<SearchSalesCustomerHistoryEntityData> custom({
    Expression<String>? key,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SearchSalesCustomerHistoryEntityCompanion copyWith(
      {Value<String>? key, Value<int>? rowid}) {
    return SearchSalesCustomerHistoryEntityCompanion(
      key: key ?? this.key,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchSalesCustomerHistoryEntityCompanion(')
          ..write('key: $key, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SettingEntityTable settingEntity = $SettingEntityTable(this);
  late final $MerchandiserCustomerEntityTable merchandiserCustomerEntity =
      $MerchandiserCustomerEntityTable(this);
  late final $SalesCustomerEntityTable salesCustomerEntity =
      $SalesCustomerEntityTable(this);
  late final $SearchMerchandiserCustomerHistoryEntityTable
      searchMerchandiserCustomerHistoryEntity =
      $SearchMerchandiserCustomerHistoryEntityTable(this);
  late final $SearchSalesCustomerHistoryEntityTable
      searchSalesCustomerHistoryEntity =
      $SearchSalesCustomerHistoryEntityTable(this);
  late final SettingDao settingDao = SettingDao(this as AppDatabase);
  late final MerchandiserCustomerDao merchandiserCustomerDao =
      MerchandiserCustomerDao(this as AppDatabase);
  late final SalesCustomerDao salesCustomerDao =
      SalesCustomerDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        settingEntity,
        merchandiserCustomerEntity,
        salesCustomerEntity,
        searchMerchandiserCustomerHistoryEntity,
        searchSalesCustomerHistoryEntity
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$SettingEntityTableCreateCompanionBuilder = SettingEntityCompanion
    Function({
  required String key,
  Value<String?> value,
  Value<int> rowid,
});
typedef $$SettingEntityTableUpdateCompanionBuilder = SettingEntityCompanion
    Function({
  Value<String> key,
  Value<String?> value,
  Value<int> rowid,
});

class $$SettingEntityTableFilterComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $$SettingEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $$SettingEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingEntityTable> {
  $$SettingEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SettingEntityTable,
    SettingEntityData,
    $$SettingEntityTableFilterComposer,
    $$SettingEntityTableOrderingComposer,
    $$SettingEntityTableAnnotationComposer,
    $$SettingEntityTableCreateCompanionBuilder,
    $$SettingEntityTableUpdateCompanionBuilder,
    (
      SettingEntityData,
      BaseReferences<_$AppDatabase, $SettingEntityTable, SettingEntityData>
    ),
    SettingEntityData,
    PrefetchHooks Function()> {
  $$SettingEntityTableTableManager(_$AppDatabase db, $SettingEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingEntityCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            Value<String?> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingEntityCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingEntityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SettingEntityTable,
    SettingEntityData,
    $$SettingEntityTableFilterComposer,
    $$SettingEntityTableOrderingComposer,
    $$SettingEntityTableAnnotationComposer,
    $$SettingEntityTableCreateCompanionBuilder,
    $$SettingEntityTableUpdateCompanionBuilder,
    (
      SettingEntityData,
      BaseReferences<_$AppDatabase, $SettingEntityTable, SettingEntityData>
    ),
    SettingEntityData,
    PrefetchHooks Function()>;
typedef $$MerchandiserCustomerEntityTableCreateCompanionBuilder
    = MerchandiserCustomerEntityCompanion Function({
  required String customerId,
  required String customerName,
  Value<String?> address,
  required String salesPersonId,
  Value<String?> salesPerson,
  Value<String?> merchandiser,
  required String countryId,
  Value<String?> phoneNumber,
  Value<double> latitude,
  Value<double> longitude,
  Value<double?> creditLimit,
  Value<String?> currencyCode,
  Value<String?> paymentTerm,
  Value<String?> priceGroup,
  Value<String?> customreDimension,
  required int status,
  required int companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});
typedef $$MerchandiserCustomerEntityTableUpdateCompanionBuilder
    = MerchandiserCustomerEntityCompanion Function({
  Value<String> customerId,
  Value<String> customerName,
  Value<String?> address,
  Value<String> salesPersonId,
  Value<String?> salesPerson,
  Value<String?> merchandiser,
  Value<String> countryId,
  Value<String?> phoneNumber,
  Value<double> latitude,
  Value<double> longitude,
  Value<double?> creditLimit,
  Value<String?> currencyCode,
  Value<String?> paymentTerm,
  Value<String?> priceGroup,
  Value<String?> customreDimension,
  Value<int> status,
  Value<int> companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});

class $$MerchandiserCustomerEntityTableFilterComposer
    extends Composer<_$AppDatabase, $MerchandiserCustomerEntityTable> {
  $$MerchandiserCustomerEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get countryId => $composableBuilder(
      column: $table.countryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnFilters(column));
}

class $$MerchandiserCustomerEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $MerchandiserCustomerEntityTable> {
  $$MerchandiserCustomerEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerName => $composableBuilder(
      column: $table.customerName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get countryId => $composableBuilder(
      column: $table.countryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnOrderings(column));
}

class $$MerchandiserCustomerEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $MerchandiserCustomerEntityTable> {
  $$MerchandiserCustomerEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => column);

  GeneratedColumn<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => column);

  GeneratedColumn<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => column);

  GeneratedColumn<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser, builder: (column) => column);

  GeneratedColumn<String> get countryId =>
      $composableBuilder(column: $table.countryId, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => column);

  GeneratedColumn<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => column);

  GeneratedColumn<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => column);

  GeneratedColumn<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => column);

  GeneratedColumn<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => column);
}

class $$MerchandiserCustomerEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MerchandiserCustomerEntityTable,
    MerchandiserCustomerEntityData,
    $$MerchandiserCustomerEntityTableFilterComposer,
    $$MerchandiserCustomerEntityTableOrderingComposer,
    $$MerchandiserCustomerEntityTableAnnotationComposer,
    $$MerchandiserCustomerEntityTableCreateCompanionBuilder,
    $$MerchandiserCustomerEntityTableUpdateCompanionBuilder,
    (
      MerchandiserCustomerEntityData,
      BaseReferences<_$AppDatabase, $MerchandiserCustomerEntityTable,
          MerchandiserCustomerEntityData>
    ),
    MerchandiserCustomerEntityData,
    PrefetchHooks Function()> {
  $$MerchandiserCustomerEntityTableTableManager(
      _$AppDatabase db, $MerchandiserCustomerEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MerchandiserCustomerEntityTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$MerchandiserCustomerEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MerchandiserCustomerEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> customerId = const Value.absent(),
            Value<String> customerName = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String> salesPersonId = const Value.absent(),
            Value<String?> salesPerson = const Value.absent(),
            Value<String?> merchandiser = const Value.absent(),
            Value<String> countryId = const Value.absent(),
            Value<String?> phoneNumber = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<double?> creditLimit = const Value.absent(),
            Value<String?> currencyCode = const Value.absent(),
            Value<String?> paymentTerm = const Value.absent(),
            Value<String?> priceGroup = const Value.absent(),
            Value<String?> customreDimension = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MerchandiserCustomerEntityCompanion(
            customerId: customerId,
            customerName: customerName,
            address: address,
            salesPersonId: salesPersonId,
            salesPerson: salesPerson,
            merchandiser: merchandiser,
            countryId: countryId,
            phoneNumber: phoneNumber,
            latitude: latitude,
            longitude: longitude,
            creditLimit: creditLimit,
            currencyCode: currencyCode,
            paymentTerm: paymentTerm,
            priceGroup: priceGroup,
            customreDimension: customreDimension,
            status: status,
            companyId: companyId,
            companyCode: companyCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String customerId,
            required String customerName,
            Value<String?> address = const Value.absent(),
            required String salesPersonId,
            Value<String?> salesPerson = const Value.absent(),
            Value<String?> merchandiser = const Value.absent(),
            required String countryId,
            Value<String?> phoneNumber = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<double?> creditLimit = const Value.absent(),
            Value<String?> currencyCode = const Value.absent(),
            Value<String?> paymentTerm = const Value.absent(),
            Value<String?> priceGroup = const Value.absent(),
            Value<String?> customreDimension = const Value.absent(),
            required int status,
            required int companyId,
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MerchandiserCustomerEntityCompanion.insert(
            customerId: customerId,
            customerName: customerName,
            address: address,
            salesPersonId: salesPersonId,
            salesPerson: salesPerson,
            merchandiser: merchandiser,
            countryId: countryId,
            phoneNumber: phoneNumber,
            latitude: latitude,
            longitude: longitude,
            creditLimit: creditLimit,
            currencyCode: currencyCode,
            paymentTerm: paymentTerm,
            priceGroup: priceGroup,
            customreDimension: customreDimension,
            status: status,
            companyId: companyId,
            companyCode: companyCode,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MerchandiserCustomerEntityTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $MerchandiserCustomerEntityTable,
        MerchandiserCustomerEntityData,
        $$MerchandiserCustomerEntityTableFilterComposer,
        $$MerchandiserCustomerEntityTableOrderingComposer,
        $$MerchandiserCustomerEntityTableAnnotationComposer,
        $$MerchandiserCustomerEntityTableCreateCompanionBuilder,
        $$MerchandiserCustomerEntityTableUpdateCompanionBuilder,
        (
          MerchandiserCustomerEntityData,
          BaseReferences<_$AppDatabase, $MerchandiserCustomerEntityTable,
              MerchandiserCustomerEntityData>
        ),
        MerchandiserCustomerEntityData,
        PrefetchHooks Function()>;
typedef $$SalesCustomerEntityTableCreateCompanionBuilder
    = SalesCustomerEntityCompanion Function({
  required String customerId,
  required String customerName,
  Value<String?> address,
  required String salesPersonId,
  Value<String?> salesPerson,
  Value<String?> merchandiser,
  required String countryId,
  Value<String?> phoneNumber,
  Value<double> latitude,
  Value<double> longitude,
  Value<double?> creditLimit,
  Value<String?> currencyCode,
  Value<String?> paymentTerm,
  Value<String?> priceGroup,
  Value<String?> customreDimension,
  required int status,
  required int companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});
typedef $$SalesCustomerEntityTableUpdateCompanionBuilder
    = SalesCustomerEntityCompanion Function({
  Value<String> customerId,
  Value<String> customerName,
  Value<String?> address,
  Value<String> salesPersonId,
  Value<String?> salesPerson,
  Value<String?> merchandiser,
  Value<String> countryId,
  Value<String?> phoneNumber,
  Value<double> latitude,
  Value<double> longitude,
  Value<double?> creditLimit,
  Value<String?> currencyCode,
  Value<String?> paymentTerm,
  Value<String?> priceGroup,
  Value<String?> customreDimension,
  Value<int> status,
  Value<int> companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});

class $$SalesCustomerEntityTableFilterComposer
    extends Composer<_$AppDatabase, $SalesCustomerEntityTable> {
  $$SalesCustomerEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get countryId => $composableBuilder(
      column: $table.countryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnFilters(column));
}

class $$SalesCustomerEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $SalesCustomerEntityTable> {
  $$SalesCustomerEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerName => $composableBuilder(
      column: $table.customerName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get countryId => $composableBuilder(
      column: $table.countryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnOrderings(column));
}

class $$SalesCustomerEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $SalesCustomerEntityTable> {
  $$SalesCustomerEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => column);

  GeneratedColumn<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => column);

  GeneratedColumn<String> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => column);

  GeneratedColumn<String> get merchandiser => $composableBuilder(
      column: $table.merchandiser, builder: (column) => column);

  GeneratedColumn<String> get countryId =>
      $composableBuilder(column: $table.countryId, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
      column: $table.phoneNumber, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => column);

  GeneratedColumn<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => column);

  GeneratedColumn<String> get paymentTerm => $composableBuilder(
      column: $table.paymentTerm, builder: (column) => column);

  GeneratedColumn<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => column);

  GeneratedColumn<String> get customreDimension => $composableBuilder(
      column: $table.customreDimension, builder: (column) => column);

  GeneratedColumn<int> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => column);
}

class $$SalesCustomerEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SalesCustomerEntityTable,
    SalesCustomerEntityData,
    $$SalesCustomerEntityTableFilterComposer,
    $$SalesCustomerEntityTableOrderingComposer,
    $$SalesCustomerEntityTableAnnotationComposer,
    $$SalesCustomerEntityTableCreateCompanionBuilder,
    $$SalesCustomerEntityTableUpdateCompanionBuilder,
    (
      SalesCustomerEntityData,
      BaseReferences<_$AppDatabase, $SalesCustomerEntityTable,
          SalesCustomerEntityData>
    ),
    SalesCustomerEntityData,
    PrefetchHooks Function()> {
  $$SalesCustomerEntityTableTableManager(
      _$AppDatabase db, $SalesCustomerEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SalesCustomerEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SalesCustomerEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SalesCustomerEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> customerId = const Value.absent(),
            Value<String> customerName = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String> salesPersonId = const Value.absent(),
            Value<String?> salesPerson = const Value.absent(),
            Value<String?> merchandiser = const Value.absent(),
            Value<String> countryId = const Value.absent(),
            Value<String?> phoneNumber = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<double?> creditLimit = const Value.absent(),
            Value<String?> currencyCode = const Value.absent(),
            Value<String?> paymentTerm = const Value.absent(),
            Value<String?> priceGroup = const Value.absent(),
            Value<String?> customreDimension = const Value.absent(),
            Value<int> status = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SalesCustomerEntityCompanion(
            customerId: customerId,
            customerName: customerName,
            address: address,
            salesPersonId: salesPersonId,
            salesPerson: salesPerson,
            merchandiser: merchandiser,
            countryId: countryId,
            phoneNumber: phoneNumber,
            latitude: latitude,
            longitude: longitude,
            creditLimit: creditLimit,
            currencyCode: currencyCode,
            paymentTerm: paymentTerm,
            priceGroup: priceGroup,
            customreDimension: customreDimension,
            status: status,
            companyId: companyId,
            companyCode: companyCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String customerId,
            required String customerName,
            Value<String?> address = const Value.absent(),
            required String salesPersonId,
            Value<String?> salesPerson = const Value.absent(),
            Value<String?> merchandiser = const Value.absent(),
            required String countryId,
            Value<String?> phoneNumber = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<double?> creditLimit = const Value.absent(),
            Value<String?> currencyCode = const Value.absent(),
            Value<String?> paymentTerm = const Value.absent(),
            Value<String?> priceGroup = const Value.absent(),
            Value<String?> customreDimension = const Value.absent(),
            required int status,
            required int companyId,
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SalesCustomerEntityCompanion.insert(
            customerId: customerId,
            customerName: customerName,
            address: address,
            salesPersonId: salesPersonId,
            salesPerson: salesPerson,
            merchandiser: merchandiser,
            countryId: countryId,
            phoneNumber: phoneNumber,
            latitude: latitude,
            longitude: longitude,
            creditLimit: creditLimit,
            currencyCode: currencyCode,
            paymentTerm: paymentTerm,
            priceGroup: priceGroup,
            customreDimension: customreDimension,
            status: status,
            companyId: companyId,
            companyCode: companyCode,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SalesCustomerEntityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SalesCustomerEntityTable,
    SalesCustomerEntityData,
    $$SalesCustomerEntityTableFilterComposer,
    $$SalesCustomerEntityTableOrderingComposer,
    $$SalesCustomerEntityTableAnnotationComposer,
    $$SalesCustomerEntityTableCreateCompanionBuilder,
    $$SalesCustomerEntityTableUpdateCompanionBuilder,
    (
      SalesCustomerEntityData,
      BaseReferences<_$AppDatabase, $SalesCustomerEntityTable,
          SalesCustomerEntityData>
    ),
    SalesCustomerEntityData,
    PrefetchHooks Function()>;
typedef $$SearchMerchandiserCustomerHistoryEntityTableCreateCompanionBuilder
    = SearchMerchandiserCustomerHistoryEntityCompanion Function({
  required String key,
  Value<int> rowid,
});
typedef $$SearchMerchandiserCustomerHistoryEntityTableUpdateCompanionBuilder
    = SearchMerchandiserCustomerHistoryEntityCompanion Function({
  Value<String> key,
  Value<int> rowid,
});

class $$SearchMerchandiserCustomerHistoryEntityTableFilterComposer
    extends Composer<_$AppDatabase,
        $SearchMerchandiserCustomerHistoryEntityTable> {
  $$SearchMerchandiserCustomerHistoryEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));
}

class $$SearchMerchandiserCustomerHistoryEntityTableOrderingComposer
    extends Composer<_$AppDatabase,
        $SearchMerchandiserCustomerHistoryEntityTable> {
  $$SearchMerchandiserCustomerHistoryEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));
}

class $$SearchMerchandiserCustomerHistoryEntityTableAnnotationComposer
    extends Composer<_$AppDatabase,
        $SearchMerchandiserCustomerHistoryEntityTable> {
  $$SearchMerchandiserCustomerHistoryEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);
}

class $$SearchMerchandiserCustomerHistoryEntityTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $SearchMerchandiserCustomerHistoryEntityTable,
        SearchMerchandiserCustomerHistoryEntityData,
        $$SearchMerchandiserCustomerHistoryEntityTableFilterComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableOrderingComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableAnnotationComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableCreateCompanionBuilder,
        $$SearchMerchandiserCustomerHistoryEntityTableUpdateCompanionBuilder,
        (
          SearchMerchandiserCustomerHistoryEntityData,
          BaseReferences<
              _$AppDatabase,
              $SearchMerchandiserCustomerHistoryEntityTable,
              SearchMerchandiserCustomerHistoryEntityData>
        ),
        SearchMerchandiserCustomerHistoryEntityData,
        PrefetchHooks Function()> {
  $$SearchMerchandiserCustomerHistoryEntityTableTableManager(
      _$AppDatabase db, $SearchMerchandiserCustomerHistoryEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SearchMerchandiserCustomerHistoryEntityTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$SearchMerchandiserCustomerHistoryEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SearchMerchandiserCustomerHistoryEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchMerchandiserCustomerHistoryEntityCompanion(
            key: key,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchMerchandiserCustomerHistoryEntityCompanion.insert(
            key: key,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SearchMerchandiserCustomerHistoryEntityTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $SearchMerchandiserCustomerHistoryEntityTable,
        SearchMerchandiserCustomerHistoryEntityData,
        $$SearchMerchandiserCustomerHistoryEntityTableFilterComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableOrderingComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableAnnotationComposer,
        $$SearchMerchandiserCustomerHistoryEntityTableCreateCompanionBuilder,
        $$SearchMerchandiserCustomerHistoryEntityTableUpdateCompanionBuilder,
        (
          SearchMerchandiserCustomerHistoryEntityData,
          BaseReferences<
              _$AppDatabase,
              $SearchMerchandiserCustomerHistoryEntityTable,
              SearchMerchandiserCustomerHistoryEntityData>
        ),
        SearchMerchandiserCustomerHistoryEntityData,
        PrefetchHooks Function()>;
typedef $$SearchSalesCustomerHistoryEntityTableCreateCompanionBuilder
    = SearchSalesCustomerHistoryEntityCompanion Function({
  required String key,
  Value<int> rowid,
});
typedef $$SearchSalesCustomerHistoryEntityTableUpdateCompanionBuilder
    = SearchSalesCustomerHistoryEntityCompanion Function({
  Value<String> key,
  Value<int> rowid,
});

class $$SearchSalesCustomerHistoryEntityTableFilterComposer
    extends Composer<_$AppDatabase, $SearchSalesCustomerHistoryEntityTable> {
  $$SearchSalesCustomerHistoryEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));
}

class $$SearchSalesCustomerHistoryEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $SearchSalesCustomerHistoryEntityTable> {
  $$SearchSalesCustomerHistoryEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));
}

class $$SearchSalesCustomerHistoryEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $SearchSalesCustomerHistoryEntityTable> {
  $$SearchSalesCustomerHistoryEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);
}

class $$SearchSalesCustomerHistoryEntityTableTableManager
    extends RootTableManager<
        _$AppDatabase,
        $SearchSalesCustomerHistoryEntityTable,
        SearchSalesCustomerHistoryEntityData,
        $$SearchSalesCustomerHistoryEntityTableFilterComposer,
        $$SearchSalesCustomerHistoryEntityTableOrderingComposer,
        $$SearchSalesCustomerHistoryEntityTableAnnotationComposer,
        $$SearchSalesCustomerHistoryEntityTableCreateCompanionBuilder,
        $$SearchSalesCustomerHistoryEntityTableUpdateCompanionBuilder,
        (
          SearchSalesCustomerHistoryEntityData,
          BaseReferences<_$AppDatabase, $SearchSalesCustomerHistoryEntityTable,
              SearchSalesCustomerHistoryEntityData>
        ),
        SearchSalesCustomerHistoryEntityData,
        PrefetchHooks Function()> {
  $$SearchSalesCustomerHistoryEntityTableTableManager(
      _$AppDatabase db, $SearchSalesCustomerHistoryEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SearchSalesCustomerHistoryEntityTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$SearchSalesCustomerHistoryEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SearchSalesCustomerHistoryEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchSalesCustomerHistoryEntityCompanion(
            key: key,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            Value<int> rowid = const Value.absent(),
          }) =>
              SearchSalesCustomerHistoryEntityCompanion.insert(
            key: key,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SearchSalesCustomerHistoryEntityTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $SearchSalesCustomerHistoryEntityTable,
        SearchSalesCustomerHistoryEntityData,
        $$SearchSalesCustomerHistoryEntityTableFilterComposer,
        $$SearchSalesCustomerHistoryEntityTableOrderingComposer,
        $$SearchSalesCustomerHistoryEntityTableAnnotationComposer,
        $$SearchSalesCustomerHistoryEntityTableCreateCompanionBuilder,
        $$SearchSalesCustomerHistoryEntityTableUpdateCompanionBuilder,
        (
          SearchSalesCustomerHistoryEntityData,
          BaseReferences<_$AppDatabase, $SearchSalesCustomerHistoryEntityTable,
              SearchSalesCustomerHistoryEntityData>
        ),
        SearchSalesCustomerHistoryEntityData,
        PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SettingEntityTableTableManager get settingEntity =>
      $$SettingEntityTableTableManager(_db, _db.settingEntity);
  $$MerchandiserCustomerEntityTableTableManager
      get merchandiserCustomerEntity =>
          $$MerchandiserCustomerEntityTableTableManager(
              _db, _db.merchandiserCustomerEntity);
  $$SalesCustomerEntityTableTableManager get salesCustomerEntity =>
      $$SalesCustomerEntityTableTableManager(_db, _db.salesCustomerEntity);
  $$SearchMerchandiserCustomerHistoryEntityTableTableManager
      get searchMerchandiserCustomerHistoryEntity =>
          $$SearchMerchandiserCustomerHistoryEntityTableTableManager(
              _db, _db.searchMerchandiserCustomerHistoryEntity);
  $$SearchSalesCustomerHistoryEntityTableTableManager
      get searchSalesCustomerHistoryEntity =>
          $$SearchSalesCustomerHistoryEntityTableTableManager(
              _db, _db.searchSalesCustomerHistoryEntity);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'98a09c6cfd43966155dfbdb0787fa18c85438e13';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = Provider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = ProviderRef<AppDatabase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
