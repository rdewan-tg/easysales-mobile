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

class $CustomerAddressEntityTable extends CustomerAddressEntity
    with TableInfo<$CustomerAddressEntityTable, CustomerAddressEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerAddressEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _deliveryNameMeta =
      const VerificationMeta('deliveryName');
  @override
  late final GeneratedColumn<String> deliveryName = GeneratedColumn<String>(
      'delivery_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salesPersonIdMeta =
      const VerificationMeta('salesPersonId');
  @override
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
      'sales_person_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  static const VerificationMeta _postalAddressMeta =
      const VerificationMeta('postalAddress');
  @override
  late final GeneratedColumn<String> postalAddress = GeneratedColumn<String>(
      'postal_address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isPrimaryMeta =
      const VerificationMeta('isPrimary');
  @override
  late final GeneratedColumn<bool> isPrimary = GeneratedColumn<bool>(
      'is_primary', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_primary" IN (0, 1))'));
  static const VerificationMeta _companyCodeMeta =
      const VerificationMeta('companyCode');
  @override
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
      'company_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        deliveryName,
        address,
        salesPersonId,
        latitude,
        longitude,
        postalAddress,
        location,
        isPrimary,
        companyCode,
        companyId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer_address_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerAddressEntityData> instance,
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
    if (data.containsKey('delivery_name')) {
      context.handle(
          _deliveryNameMeta,
          deliveryName.isAcceptableOrUnknown(
              data['delivery_name']!, _deliveryNameMeta));
    } else if (isInserting) {
      context.missing(_deliveryNameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('sales_person_id')) {
      context.handle(
          _salesPersonIdMeta,
          salesPersonId.isAcceptableOrUnknown(
              data['sales_person_id']!, _salesPersonIdMeta));
    } else if (isInserting) {
      context.missing(_salesPersonIdMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('postal_address')) {
      context.handle(
          _postalAddressMeta,
          postalAddress.isAcceptableOrUnknown(
              data['postal_address']!, _postalAddressMeta));
    } else if (isInserting) {
      context.missing(_postalAddressMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('is_primary')) {
      context.handle(_isPrimaryMeta,
          isPrimary.isAcceptableOrUnknown(data['is_primary']!, _isPrimaryMeta));
    } else if (isInserting) {
      context.missing(_isPrimaryMeta);
    }
    if (data.containsKey('company_code')) {
      context.handle(
          _companyCodeMeta,
          companyCode.isAcceptableOrUnknown(
              data['company_code']!, _companyCodeMeta));
    } else if (isInserting) {
      context.missing(_companyCodeMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {location};
  @override
  CustomerAddressEntityData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerAddressEntityData(
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_id'])!,
      deliveryName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}delivery_name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      salesPersonId: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sales_person_id'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      postalAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}postal_address'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!,
      isPrimary: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_primary'])!,
      companyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_code'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
    );
  }

  @override
  $CustomerAddressEntityTable createAlias(String alias) {
    return $CustomerAddressEntityTable(attachedDatabase, alias);
  }
}

class CustomerAddressEntityData extends DataClass
    implements Insertable<CustomerAddressEntityData> {
  final String customerId;
  final String deliveryName;
  final String address;
  final String salesPersonId;
  final double latitude;
  final double longitude;
  final String postalAddress;
  final String location;
  final bool isPrimary;
  final String companyCode;
  final int companyId;
  const CustomerAddressEntityData(
      {required this.customerId,
      required this.deliveryName,
      required this.address,
      required this.salesPersonId,
      required this.latitude,
      required this.longitude,
      required this.postalAddress,
      required this.location,
      required this.isPrimary,
      required this.companyCode,
      required this.companyId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['customer_id'] = Variable<String>(customerId);
    map['delivery_name'] = Variable<String>(deliveryName);
    map['address'] = Variable<String>(address);
    map['sales_person_id'] = Variable<String>(salesPersonId);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['postal_address'] = Variable<String>(postalAddress);
    map['location'] = Variable<String>(location);
    map['is_primary'] = Variable<bool>(isPrimary);
    map['company_code'] = Variable<String>(companyCode);
    map['company_id'] = Variable<int>(companyId);
    return map;
  }

  CustomerAddressEntityCompanion toCompanion(bool nullToAbsent) {
    return CustomerAddressEntityCompanion(
      customerId: Value(customerId),
      deliveryName: Value(deliveryName),
      address: Value(address),
      salesPersonId: Value(salesPersonId),
      latitude: Value(latitude),
      longitude: Value(longitude),
      postalAddress: Value(postalAddress),
      location: Value(location),
      isPrimary: Value(isPrimary),
      companyCode: Value(companyCode),
      companyId: Value(companyId),
    );
  }

  factory CustomerAddressEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerAddressEntityData(
      customerId: serializer.fromJson<String>(json['customerId']),
      deliveryName: serializer.fromJson<String>(json['deliveryName']),
      address: serializer.fromJson<String>(json['address']),
      salesPersonId: serializer.fromJson<String>(json['salesPersonId']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      postalAddress: serializer.fromJson<String>(json['postalAddress']),
      location: serializer.fromJson<String>(json['location']),
      isPrimary: serializer.fromJson<bool>(json['isPrimary']),
      companyCode: serializer.fromJson<String>(json['companyCode']),
      companyId: serializer.fromJson<int>(json['companyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'customerId': serializer.toJson<String>(customerId),
      'deliveryName': serializer.toJson<String>(deliveryName),
      'address': serializer.toJson<String>(address),
      'salesPersonId': serializer.toJson<String>(salesPersonId),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'postalAddress': serializer.toJson<String>(postalAddress),
      'location': serializer.toJson<String>(location),
      'isPrimary': serializer.toJson<bool>(isPrimary),
      'companyCode': serializer.toJson<String>(companyCode),
      'companyId': serializer.toJson<int>(companyId),
    };
  }

  CustomerAddressEntityData copyWith(
          {String? customerId,
          String? deliveryName,
          String? address,
          String? salesPersonId,
          double? latitude,
          double? longitude,
          String? postalAddress,
          String? location,
          bool? isPrimary,
          String? companyCode,
          int? companyId}) =>
      CustomerAddressEntityData(
        customerId: customerId ?? this.customerId,
        deliveryName: deliveryName ?? this.deliveryName,
        address: address ?? this.address,
        salesPersonId: salesPersonId ?? this.salesPersonId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        postalAddress: postalAddress ?? this.postalAddress,
        location: location ?? this.location,
        isPrimary: isPrimary ?? this.isPrimary,
        companyCode: companyCode ?? this.companyCode,
        companyId: companyId ?? this.companyId,
      );
  CustomerAddressEntityData copyWithCompanion(
      CustomerAddressEntityCompanion data) {
    return CustomerAddressEntityData(
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      deliveryName: data.deliveryName.present
          ? data.deliveryName.value
          : this.deliveryName,
      address: data.address.present ? data.address.value : this.address,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      postalAddress: data.postalAddress.present
          ? data.postalAddress.value
          : this.postalAddress,
      location: data.location.present ? data.location.value : this.location,
      isPrimary: data.isPrimary.present ? data.isPrimary.value : this.isPrimary,
      companyCode:
          data.companyCode.present ? data.companyCode.value : this.companyCode,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAddressEntityData(')
          ..write('customerId: $customerId, ')
          ..write('deliveryName: $deliveryName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('postalAddress: $postalAddress, ')
          ..write('location: $location, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('companyCode: $companyCode, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      customerId,
      deliveryName,
      address,
      salesPersonId,
      latitude,
      longitude,
      postalAddress,
      location,
      isPrimary,
      companyCode,
      companyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerAddressEntityData &&
          other.customerId == this.customerId &&
          other.deliveryName == this.deliveryName &&
          other.address == this.address &&
          other.salesPersonId == this.salesPersonId &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.postalAddress == this.postalAddress &&
          other.location == this.location &&
          other.isPrimary == this.isPrimary &&
          other.companyCode == this.companyCode &&
          other.companyId == this.companyId);
}

class CustomerAddressEntityCompanion
    extends UpdateCompanion<CustomerAddressEntityData> {
  final Value<String> customerId;
  final Value<String> deliveryName;
  final Value<String> address;
  final Value<String> salesPersonId;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<String> postalAddress;
  final Value<String> location;
  final Value<bool> isPrimary;
  final Value<String> companyCode;
  final Value<int> companyId;
  final Value<int> rowid;
  const CustomerAddressEntityCompanion({
    this.customerId = const Value.absent(),
    this.deliveryName = const Value.absent(),
    this.address = const Value.absent(),
    this.salesPersonId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.postalAddress = const Value.absent(),
    this.location = const Value.absent(),
    this.isPrimary = const Value.absent(),
    this.companyCode = const Value.absent(),
    this.companyId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomerAddressEntityCompanion.insert({
    required String customerId,
    required String deliveryName,
    required String address,
    required String salesPersonId,
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    required String postalAddress,
    required String location,
    required bool isPrimary,
    required String companyCode,
    required int companyId,
    this.rowid = const Value.absent(),
  })  : customerId = Value(customerId),
        deliveryName = Value(deliveryName),
        address = Value(address),
        salesPersonId = Value(salesPersonId),
        postalAddress = Value(postalAddress),
        location = Value(location),
        isPrimary = Value(isPrimary),
        companyCode = Value(companyCode),
        companyId = Value(companyId);
  static Insertable<CustomerAddressEntityData> custom({
    Expression<String>? customerId,
    Expression<String>? deliveryName,
    Expression<String>? address,
    Expression<String>? salesPersonId,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? postalAddress,
    Expression<String>? location,
    Expression<bool>? isPrimary,
    Expression<String>? companyCode,
    Expression<int>? companyId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'customer_id': customerId,
      if (deliveryName != null) 'delivery_name': deliveryName,
      if (address != null) 'address': address,
      if (salesPersonId != null) 'sales_person_id': salesPersonId,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (postalAddress != null) 'postal_address': postalAddress,
      if (location != null) 'location': location,
      if (isPrimary != null) 'is_primary': isPrimary,
      if (companyCode != null) 'company_code': companyCode,
      if (companyId != null) 'company_id': companyId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomerAddressEntityCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? deliveryName,
      Value<String>? address,
      Value<String>? salesPersonId,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<String>? postalAddress,
      Value<String>? location,
      Value<bool>? isPrimary,
      Value<String>? companyCode,
      Value<int>? companyId,
      Value<int>? rowid}) {
    return CustomerAddressEntityCompanion(
      customerId: customerId ?? this.customerId,
      deliveryName: deliveryName ?? this.deliveryName,
      address: address ?? this.address,
      salesPersonId: salesPersonId ?? this.salesPersonId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      postalAddress: postalAddress ?? this.postalAddress,
      location: location ?? this.location,
      isPrimary: isPrimary ?? this.isPrimary,
      companyCode: companyCode ?? this.companyCode,
      companyId: companyId ?? this.companyId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (deliveryName.present) {
      map['delivery_name'] = Variable<String>(deliveryName.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (salesPersonId.present) {
      map['sales_person_id'] = Variable<String>(salesPersonId.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (postalAddress.present) {
      map['postal_address'] = Variable<String>(postalAddress.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (isPrimary.present) {
      map['is_primary'] = Variable<bool>(isPrimary.value);
    }
    if (companyCode.present) {
      map['company_code'] = Variable<String>(companyCode.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAddressEntityCompanion(')
          ..write('customerId: $customerId, ')
          ..write('deliveryName: $deliveryName, ')
          ..write('address: $address, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('postalAddress: $postalAddress, ')
          ..write('location: $location, ')
          ..write('isPrimary: $isPrimary, ')
          ..write('companyCode: $companyCode, ')
          ..write('companyId: $companyId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductEntityTable extends ProductEntity
    with TableInfo<$ProductEntityTable, ProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
      'item_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
      'barcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemGroupMeta =
      const VerificationMeta('itemGroup');
  @override
  late final GeneratedColumn<String> itemGroup = GeneratedColumn<String>(
      'item_group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _packSizeMeta =
      const VerificationMeta('packSize');
  @override
  late final GeneratedColumn<String> packSize = GeneratedColumn<String>(
      'pack_size', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salesUnitMeta =
      const VerificationMeta('salesUnit');
  @override
  late final GeneratedColumn<String> salesUnit = GeneratedColumn<String>(
      'sales_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemDiscountGroupMeta =
      const VerificationMeta('itemDiscountGroup');
  @override
  late final GeneratedColumn<String> itemDiscountGroup =
      GeneratedColumn<String>('item_discount_group', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemFOCGroupMeta =
      const VerificationMeta('itemFOCGroup');
  @override
  late final GeneratedColumn<String> itemFOCGroup = GeneratedColumn<String>(
      'item_f_o_c_group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _inventDimIdMeta =
      const VerificationMeta('inventDimId');
  @override
  late final GeneratedColumn<String> inventDimId = GeneratedColumn<String>(
      'invent_dim_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _companyCodeMeta =
      const VerificationMeta('companyCode');
  @override
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
      'company_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productId,
        itemId,
        productName,
        description,
        category,
        barcode,
        itemGroup,
        packSize,
        salesUnit,
        unitPrice,
        image,
        itemDiscountGroup,
        itemFOCGroup,
        inventDimId,
        status,
        companyCode,
        companyId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ProductEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    } else if (isInserting) {
      context.missing(_barcodeMeta);
    }
    if (data.containsKey('item_group')) {
      context.handle(_itemGroupMeta,
          itemGroup.isAcceptableOrUnknown(data['item_group']!, _itemGroupMeta));
    } else if (isInserting) {
      context.missing(_itemGroupMeta);
    }
    if (data.containsKey('pack_size')) {
      context.handle(_packSizeMeta,
          packSize.isAcceptableOrUnknown(data['pack_size']!, _packSizeMeta));
    } else if (isInserting) {
      context.missing(_packSizeMeta);
    }
    if (data.containsKey('sales_unit')) {
      context.handle(_salesUnitMeta,
          salesUnit.isAcceptableOrUnknown(data['sales_unit']!, _salesUnitMeta));
    } else if (isInserting) {
      context.missing(_salesUnitMeta);
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('item_discount_group')) {
      context.handle(
          _itemDiscountGroupMeta,
          itemDiscountGroup.isAcceptableOrUnknown(
              data['item_discount_group']!, _itemDiscountGroupMeta));
    } else if (isInserting) {
      context.missing(_itemDiscountGroupMeta);
    }
    if (data.containsKey('item_f_o_c_group')) {
      context.handle(
          _itemFOCGroupMeta,
          itemFOCGroup.isAcceptableOrUnknown(
              data['item_f_o_c_group']!, _itemFOCGroupMeta));
    } else if (isInserting) {
      context.missing(_itemFOCGroupMeta);
    }
    if (data.containsKey('invent_dim_id')) {
      context.handle(
          _inventDimIdMeta,
          inventDimId.isAcceptableOrUnknown(
              data['invent_dim_id']!, _inventDimIdMeta));
    } else if (isInserting) {
      context.missing(_inventDimIdMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('company_code')) {
      context.handle(
          _companyCodeMeta,
          companyCode.isAcceptableOrUnknown(
              data['company_code']!, _companyCodeMeta));
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  ProductEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_id'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}barcode'])!,
      itemGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_group'])!,
      packSize: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pack_size'])!,
      salesUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sales_unit'])!,
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      itemDiscountGroup: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}item_discount_group'])!,
      itemFOCGroup: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}item_f_o_c_group'])!,
      inventDimId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}invent_dim_id'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      companyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_code']),
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
    );
  }

  @override
  $ProductEntityTable createAlias(String alias) {
    return $ProductEntityTable(attachedDatabase, alias);
  }
}

class ProductEntityData extends DataClass
    implements Insertable<ProductEntityData> {
  final int id;
  final String productId;
  final String itemId;
  final String productName;
  final String description;
  final String category;
  final String barcode;
  final String itemGroup;
  final String packSize;
  final String salesUnit;
  final double unitPrice;
  final String image;
  final String itemDiscountGroup;
  final String itemFOCGroup;
  final String inventDimId;
  final String status;
  final String? companyCode;
  final int companyId;
  const ProductEntityData(
      {required this.id,
      required this.productId,
      required this.itemId,
      required this.productName,
      required this.description,
      required this.category,
      required this.barcode,
      required this.itemGroup,
      required this.packSize,
      required this.salesUnit,
      required this.unitPrice,
      required this.image,
      required this.itemDiscountGroup,
      required this.itemFOCGroup,
      required this.inventDimId,
      required this.status,
      this.companyCode,
      required this.companyId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<String>(productId);
    map['item_id'] = Variable<String>(itemId);
    map['product_name'] = Variable<String>(productName);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    map['barcode'] = Variable<String>(barcode);
    map['item_group'] = Variable<String>(itemGroup);
    map['pack_size'] = Variable<String>(packSize);
    map['sales_unit'] = Variable<String>(salesUnit);
    map['unit_price'] = Variable<double>(unitPrice);
    map['image'] = Variable<String>(image);
    map['item_discount_group'] = Variable<String>(itemDiscountGroup);
    map['item_f_o_c_group'] = Variable<String>(itemFOCGroup);
    map['invent_dim_id'] = Variable<String>(inventDimId);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || companyCode != null) {
      map['company_code'] = Variable<String>(companyCode);
    }
    map['company_id'] = Variable<int>(companyId);
    return map;
  }

  ProductEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductEntityCompanion(
      id: Value(id),
      productId: Value(productId),
      itemId: Value(itemId),
      productName: Value(productName),
      description: Value(description),
      category: Value(category),
      barcode: Value(barcode),
      itemGroup: Value(itemGroup),
      packSize: Value(packSize),
      salesUnit: Value(salesUnit),
      unitPrice: Value(unitPrice),
      image: Value(image),
      itemDiscountGroup: Value(itemDiscountGroup),
      itemFOCGroup: Value(itemFOCGroup),
      inventDimId: Value(inventDimId),
      status: Value(status),
      companyCode: companyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(companyCode),
      companyId: Value(companyId),
    );
  }

  factory ProductEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntityData(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<String>(json['productId']),
      itemId: serializer.fromJson<String>(json['itemId']),
      productName: serializer.fromJson<String>(json['productName']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      barcode: serializer.fromJson<String>(json['barcode']),
      itemGroup: serializer.fromJson<String>(json['itemGroup']),
      packSize: serializer.fromJson<String>(json['packSize']),
      salesUnit: serializer.fromJson<String>(json['salesUnit']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      image: serializer.fromJson<String>(json['image']),
      itemDiscountGroup: serializer.fromJson<String>(json['itemDiscountGroup']),
      itemFOCGroup: serializer.fromJson<String>(json['itemFOCGroup']),
      inventDimId: serializer.fromJson<String>(json['inventDimId']),
      status: serializer.fromJson<String>(json['status']),
      companyCode: serializer.fromJson<String?>(json['companyCode']),
      companyId: serializer.fromJson<int>(json['companyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<String>(productId),
      'itemId': serializer.toJson<String>(itemId),
      'productName': serializer.toJson<String>(productName),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
      'barcode': serializer.toJson<String>(barcode),
      'itemGroup': serializer.toJson<String>(itemGroup),
      'packSize': serializer.toJson<String>(packSize),
      'salesUnit': serializer.toJson<String>(salesUnit),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'image': serializer.toJson<String>(image),
      'itemDiscountGroup': serializer.toJson<String>(itemDiscountGroup),
      'itemFOCGroup': serializer.toJson<String>(itemFOCGroup),
      'inventDimId': serializer.toJson<String>(inventDimId),
      'status': serializer.toJson<String>(status),
      'companyCode': serializer.toJson<String?>(companyCode),
      'companyId': serializer.toJson<int>(companyId),
    };
  }

  ProductEntityData copyWith(
          {int? id,
          String? productId,
          String? itemId,
          String? productName,
          String? description,
          String? category,
          String? barcode,
          String? itemGroup,
          String? packSize,
          String? salesUnit,
          double? unitPrice,
          String? image,
          String? itemDiscountGroup,
          String? itemFOCGroup,
          String? inventDimId,
          String? status,
          Value<String?> companyCode = const Value.absent(),
          int? companyId}) =>
      ProductEntityData(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        itemId: itemId ?? this.itemId,
        productName: productName ?? this.productName,
        description: description ?? this.description,
        category: category ?? this.category,
        barcode: barcode ?? this.barcode,
        itemGroup: itemGroup ?? this.itemGroup,
        packSize: packSize ?? this.packSize,
        salesUnit: salesUnit ?? this.salesUnit,
        unitPrice: unitPrice ?? this.unitPrice,
        image: image ?? this.image,
        itemDiscountGroup: itemDiscountGroup ?? this.itemDiscountGroup,
        itemFOCGroup: itemFOCGroup ?? this.itemFOCGroup,
        inventDimId: inventDimId ?? this.inventDimId,
        status: status ?? this.status,
        companyCode: companyCode.present ? companyCode.value : this.companyCode,
        companyId: companyId ?? this.companyId,
      );
  ProductEntityData copyWithCompanion(ProductEntityCompanion data) {
    return ProductEntityData(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      productName:
          data.productName.present ? data.productName.value : this.productName,
      description:
          data.description.present ? data.description.value : this.description,
      category: data.category.present ? data.category.value : this.category,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      itemGroup: data.itemGroup.present ? data.itemGroup.value : this.itemGroup,
      packSize: data.packSize.present ? data.packSize.value : this.packSize,
      salesUnit: data.salesUnit.present ? data.salesUnit.value : this.salesUnit,
      unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,
      image: data.image.present ? data.image.value : this.image,
      itemDiscountGroup: data.itemDiscountGroup.present
          ? data.itemDiscountGroup.value
          : this.itemDiscountGroup,
      itemFOCGroup: data.itemFOCGroup.present
          ? data.itemFOCGroup.value
          : this.itemFOCGroup,
      inventDimId:
          data.inventDimId.present ? data.inventDimId.value : this.inventDimId,
      status: data.status.present ? data.status.value : this.status,
      companyCode:
          data.companyCode.present ? data.companyCode.value : this.companyCode,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityData(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('itemId: $itemId, ')
          ..write('productName: $productName, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('barcode: $barcode, ')
          ..write('itemGroup: $itemGroup, ')
          ..write('packSize: $packSize, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('image: $image, ')
          ..write('itemDiscountGroup: $itemDiscountGroup, ')
          ..write('itemFOCGroup: $itemFOCGroup, ')
          ..write('inventDimId: $inventDimId, ')
          ..write('status: $status, ')
          ..write('companyCode: $companyCode, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productId,
      itemId,
      productName,
      description,
      category,
      barcode,
      itemGroup,
      packSize,
      salesUnit,
      unitPrice,
      image,
      itemDiscountGroup,
      itemFOCGroup,
      inventDimId,
      status,
      companyCode,
      companyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntityData &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.itemId == this.itemId &&
          other.productName == this.productName &&
          other.description == this.description &&
          other.category == this.category &&
          other.barcode == this.barcode &&
          other.itemGroup == this.itemGroup &&
          other.packSize == this.packSize &&
          other.salesUnit == this.salesUnit &&
          other.unitPrice == this.unitPrice &&
          other.image == this.image &&
          other.itemDiscountGroup == this.itemDiscountGroup &&
          other.itemFOCGroup == this.itemFOCGroup &&
          other.inventDimId == this.inventDimId &&
          other.status == this.status &&
          other.companyCode == this.companyCode &&
          other.companyId == this.companyId);
}

class ProductEntityCompanion extends UpdateCompanion<ProductEntityData> {
  final Value<int> id;
  final Value<String> productId;
  final Value<String> itemId;
  final Value<String> productName;
  final Value<String> description;
  final Value<String> category;
  final Value<String> barcode;
  final Value<String> itemGroup;
  final Value<String> packSize;
  final Value<String> salesUnit;
  final Value<double> unitPrice;
  final Value<String> image;
  final Value<String> itemDiscountGroup;
  final Value<String> itemFOCGroup;
  final Value<String> inventDimId;
  final Value<String> status;
  final Value<String?> companyCode;
  final Value<int> companyId;
  final Value<int> rowid;
  const ProductEntityCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.productName = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.barcode = const Value.absent(),
    this.itemGroup = const Value.absent(),
    this.packSize = const Value.absent(),
    this.salesUnit = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.image = const Value.absent(),
    this.itemDiscountGroup = const Value.absent(),
    this.itemFOCGroup = const Value.absent(),
    this.inventDimId = const Value.absent(),
    this.status = const Value.absent(),
    this.companyCode = const Value.absent(),
    this.companyId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductEntityCompanion.insert({
    required int id,
    required String productId,
    required String itemId,
    required String productName,
    required String description,
    required String category,
    required String barcode,
    required String itemGroup,
    required String packSize,
    required String salesUnit,
    required double unitPrice,
    required String image,
    required String itemDiscountGroup,
    required String itemFOCGroup,
    required String inventDimId,
    required String status,
    this.companyCode = const Value.absent(),
    required int companyId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        productId = Value(productId),
        itemId = Value(itemId),
        productName = Value(productName),
        description = Value(description),
        category = Value(category),
        barcode = Value(barcode),
        itemGroup = Value(itemGroup),
        packSize = Value(packSize),
        salesUnit = Value(salesUnit),
        unitPrice = Value(unitPrice),
        image = Value(image),
        itemDiscountGroup = Value(itemDiscountGroup),
        itemFOCGroup = Value(itemFOCGroup),
        inventDimId = Value(inventDimId),
        status = Value(status),
        companyId = Value(companyId);
  static Insertable<ProductEntityData> custom({
    Expression<int>? id,
    Expression<String>? productId,
    Expression<String>? itemId,
    Expression<String>? productName,
    Expression<String>? description,
    Expression<String>? category,
    Expression<String>? barcode,
    Expression<String>? itemGroup,
    Expression<String>? packSize,
    Expression<String>? salesUnit,
    Expression<double>? unitPrice,
    Expression<String>? image,
    Expression<String>? itemDiscountGroup,
    Expression<String>? itemFOCGroup,
    Expression<String>? inventDimId,
    Expression<String>? status,
    Expression<String>? companyCode,
    Expression<int>? companyId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (itemId != null) 'item_id': itemId,
      if (productName != null) 'product_name': productName,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (barcode != null) 'barcode': barcode,
      if (itemGroup != null) 'item_group': itemGroup,
      if (packSize != null) 'pack_size': packSize,
      if (salesUnit != null) 'sales_unit': salesUnit,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (image != null) 'image': image,
      if (itemDiscountGroup != null) 'item_discount_group': itemDiscountGroup,
      if (itemFOCGroup != null) 'item_f_o_c_group': itemFOCGroup,
      if (inventDimId != null) 'invent_dim_id': inventDimId,
      if (status != null) 'status': status,
      if (companyCode != null) 'company_code': companyCode,
      if (companyId != null) 'company_id': companyId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? productId,
      Value<String>? itemId,
      Value<String>? productName,
      Value<String>? description,
      Value<String>? category,
      Value<String>? barcode,
      Value<String>? itemGroup,
      Value<String>? packSize,
      Value<String>? salesUnit,
      Value<double>? unitPrice,
      Value<String>? image,
      Value<String>? itemDiscountGroup,
      Value<String>? itemFOCGroup,
      Value<String>? inventDimId,
      Value<String>? status,
      Value<String?>? companyCode,
      Value<int>? companyId,
      Value<int>? rowid}) {
    return ProductEntityCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      itemId: itemId ?? this.itemId,
      productName: productName ?? this.productName,
      description: description ?? this.description,
      category: category ?? this.category,
      barcode: barcode ?? this.barcode,
      itemGroup: itemGroup ?? this.itemGroup,
      packSize: packSize ?? this.packSize,
      salesUnit: salesUnit ?? this.salesUnit,
      unitPrice: unitPrice ?? this.unitPrice,
      image: image ?? this.image,
      itemDiscountGroup: itemDiscountGroup ?? this.itemDiscountGroup,
      itemFOCGroup: itemFOCGroup ?? this.itemFOCGroup,
      inventDimId: inventDimId ?? this.inventDimId,
      status: status ?? this.status,
      companyCode: companyCode ?? this.companyCode,
      companyId: companyId ?? this.companyId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (itemGroup.present) {
      map['item_group'] = Variable<String>(itemGroup.value);
    }
    if (packSize.present) {
      map['pack_size'] = Variable<String>(packSize.value);
    }
    if (salesUnit.present) {
      map['sales_unit'] = Variable<String>(salesUnit.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (itemDiscountGroup.present) {
      map['item_discount_group'] = Variable<String>(itemDiscountGroup.value);
    }
    if (itemFOCGroup.present) {
      map['item_f_o_c_group'] = Variable<String>(itemFOCGroup.value);
    }
    if (inventDimId.present) {
      map['invent_dim_id'] = Variable<String>(inventDimId.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (companyCode.present) {
      map['company_code'] = Variable<String>(companyCode.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('itemId: $itemId, ')
          ..write('productName: $productName, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('barcode: $barcode, ')
          ..write('itemGroup: $itemGroup, ')
          ..write('packSize: $packSize, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('image: $image, ')
          ..write('itemDiscountGroup: $itemDiscountGroup, ')
          ..write('itemFOCGroup: $itemFOCGroup, ')
          ..write('inventDimId: $inventDimId, ')
          ..write('status: $status, ')
          ..write('companyCode: $companyCode, ')
          ..write('companyId: $companyId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductPriceEntityTable extends ProductPriceEntity
    with TableInfo<$ProductPriceEntityTable, ProductPriceEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductPriceEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
      'item_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _packSizeMeta =
      const VerificationMeta('packSize');
  @override
  late final GeneratedColumn<String> packSize = GeneratedColumn<String>(
      'pack_size', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fromDateMeta =
      const VerificationMeta('fromDate');
  @override
  late final GeneratedColumn<DateTime> fromDate = GeneratedColumn<DateTime>(
      'from_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _toDateMeta = const VerificationMeta('toDate');
  @override
  late final GeneratedColumn<DateTime> toDate = GeneratedColumn<DateTime>(
      'to_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'unit_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _salesUnitMeta =
      const VerificationMeta('salesUnit');
  @override
  late final GeneratedColumn<String> salesUnit = GeneratedColumn<String>(
      'sales_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceGroupMeta =
      const VerificationMeta('priceGroup');
  @override
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
      'price_group', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _recIdMeta = const VerificationMeta('recId');
  @override
  late final GeneratedColumn<String> recId = GeneratedColumn<String>(
      'rec_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
        id,
        productId,
        itemId,
        packSize,
        fromDate,
        toDate,
        unitPrice,
        salesUnit,
        currencyCode,
        priceGroup,
        recId,
        companyId,
        companyCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_price_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductPriceEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('pack_size')) {
      context.handle(_packSizeMeta,
          packSize.isAcceptableOrUnknown(data['pack_size']!, _packSizeMeta));
    } else if (isInserting) {
      context.missing(_packSizeMeta);
    }
    if (data.containsKey('from_date')) {
      context.handle(_fromDateMeta,
          fromDate.isAcceptableOrUnknown(data['from_date']!, _fromDateMeta));
    } else if (isInserting) {
      context.missing(_fromDateMeta);
    }
    if (data.containsKey('to_date')) {
      context.handle(_toDateMeta,
          toDate.isAcceptableOrUnknown(data['to_date']!, _toDateMeta));
    } else if (isInserting) {
      context.missing(_toDateMeta);
    }
    if (data.containsKey('unit_price')) {
      context.handle(_unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));
    } else if (isInserting) {
      context.missing(_unitPriceMeta);
    }
    if (data.containsKey('sales_unit')) {
      context.handle(_salesUnitMeta,
          salesUnit.isAcceptableOrUnknown(data['sales_unit']!, _salesUnitMeta));
    } else if (isInserting) {
      context.missing(_salesUnitMeta);
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('price_group')) {
      context.handle(
          _priceGroupMeta,
          priceGroup.isAcceptableOrUnknown(
              data['price_group']!, _priceGroupMeta));
    } else if (isInserting) {
      context.missing(_priceGroupMeta);
    }
    if (data.containsKey('rec_id')) {
      context.handle(
          _recIdMeta, recId.isAcceptableOrUnknown(data['rec_id']!, _recIdMeta));
    } else if (isInserting) {
      context.missing(_recIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {recId};
  @override
  ProductPriceEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductPriceEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_id'])!,
      packSize: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pack_size'])!,
      fromDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}from_date'])!,
      toDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}to_date'])!,
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!,
      salesUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sales_unit'])!,
      currencyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency_code'])!,
      priceGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_group'])!,
      recId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rec_id'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      companyCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_code']),
    );
  }

  @override
  $ProductPriceEntityTable createAlias(String alias) {
    return $ProductPriceEntityTable(attachedDatabase, alias);
  }
}

class ProductPriceEntityData extends DataClass
    implements Insertable<ProductPriceEntityData> {
  final int id;
  final String productId;
  final String itemId;
  final String packSize;
  final DateTime fromDate;
  final DateTime toDate;
  final double unitPrice;
  final String salesUnit;
  final String currencyCode;
  final String priceGroup;
  final String recId;
  final int companyId;
  final String? companyCode;
  const ProductPriceEntityData(
      {required this.id,
      required this.productId,
      required this.itemId,
      required this.packSize,
      required this.fromDate,
      required this.toDate,
      required this.unitPrice,
      required this.salesUnit,
      required this.currencyCode,
      required this.priceGroup,
      required this.recId,
      required this.companyId,
      this.companyCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<String>(productId);
    map['item_id'] = Variable<String>(itemId);
    map['pack_size'] = Variable<String>(packSize);
    map['from_date'] = Variable<DateTime>(fromDate);
    map['to_date'] = Variable<DateTime>(toDate);
    map['unit_price'] = Variable<double>(unitPrice);
    map['sales_unit'] = Variable<String>(salesUnit);
    map['currency_code'] = Variable<String>(currencyCode);
    map['price_group'] = Variable<String>(priceGroup);
    map['rec_id'] = Variable<String>(recId);
    map['company_id'] = Variable<int>(companyId);
    if (!nullToAbsent || companyCode != null) {
      map['company_code'] = Variable<String>(companyCode);
    }
    return map;
  }

  ProductPriceEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductPriceEntityCompanion(
      id: Value(id),
      productId: Value(productId),
      itemId: Value(itemId),
      packSize: Value(packSize),
      fromDate: Value(fromDate),
      toDate: Value(toDate),
      unitPrice: Value(unitPrice),
      salesUnit: Value(salesUnit),
      currencyCode: Value(currencyCode),
      priceGroup: Value(priceGroup),
      recId: Value(recId),
      companyId: Value(companyId),
      companyCode: companyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(companyCode),
    );
  }

  factory ProductPriceEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductPriceEntityData(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<String>(json['productId']),
      itemId: serializer.fromJson<String>(json['itemId']),
      packSize: serializer.fromJson<String>(json['packSize']),
      fromDate: serializer.fromJson<DateTime>(json['fromDate']),
      toDate: serializer.fromJson<DateTime>(json['toDate']),
      unitPrice: serializer.fromJson<double>(json['unitPrice']),
      salesUnit: serializer.fromJson<String>(json['salesUnit']),
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      priceGroup: serializer.fromJson<String>(json['priceGroup']),
      recId: serializer.fromJson<String>(json['recId']),
      companyId: serializer.fromJson<int>(json['companyId']),
      companyCode: serializer.fromJson<String?>(json['companyCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<String>(productId),
      'itemId': serializer.toJson<String>(itemId),
      'packSize': serializer.toJson<String>(packSize),
      'fromDate': serializer.toJson<DateTime>(fromDate),
      'toDate': serializer.toJson<DateTime>(toDate),
      'unitPrice': serializer.toJson<double>(unitPrice),
      'salesUnit': serializer.toJson<String>(salesUnit),
      'currencyCode': serializer.toJson<String>(currencyCode),
      'priceGroup': serializer.toJson<String>(priceGroup),
      'recId': serializer.toJson<String>(recId),
      'companyId': serializer.toJson<int>(companyId),
      'companyCode': serializer.toJson<String?>(companyCode),
    };
  }

  ProductPriceEntityData copyWith(
          {int? id,
          String? productId,
          String? itemId,
          String? packSize,
          DateTime? fromDate,
          DateTime? toDate,
          double? unitPrice,
          String? salesUnit,
          String? currencyCode,
          String? priceGroup,
          String? recId,
          int? companyId,
          Value<String?> companyCode = const Value.absent()}) =>
      ProductPriceEntityData(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        itemId: itemId ?? this.itemId,
        packSize: packSize ?? this.packSize,
        fromDate: fromDate ?? this.fromDate,
        toDate: toDate ?? this.toDate,
        unitPrice: unitPrice ?? this.unitPrice,
        salesUnit: salesUnit ?? this.salesUnit,
        currencyCode: currencyCode ?? this.currencyCode,
        priceGroup: priceGroup ?? this.priceGroup,
        recId: recId ?? this.recId,
        companyId: companyId ?? this.companyId,
        companyCode: companyCode.present ? companyCode.value : this.companyCode,
      );
  ProductPriceEntityData copyWithCompanion(ProductPriceEntityCompanion data) {
    return ProductPriceEntityData(
      id: data.id.present ? data.id.value : this.id,
      productId: data.productId.present ? data.productId.value : this.productId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      packSize: data.packSize.present ? data.packSize.value : this.packSize,
      fromDate: data.fromDate.present ? data.fromDate.value : this.fromDate,
      toDate: data.toDate.present ? data.toDate.value : this.toDate,
      unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,
      salesUnit: data.salesUnit.present ? data.salesUnit.value : this.salesUnit,
      currencyCode: data.currencyCode.present
          ? data.currencyCode.value
          : this.currencyCode,
      priceGroup:
          data.priceGroup.present ? data.priceGroup.value : this.priceGroup,
      recId: data.recId.present ? data.recId.value : this.recId,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode:
          data.companyCode.present ? data.companyCode.value : this.companyCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductPriceEntityData(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('itemId: $itemId, ')
          ..write('packSize: $packSize, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('recId: $recId, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productId,
      itemId,
      packSize,
      fromDate,
      toDate,
      unitPrice,
      salesUnit,
      currencyCode,
      priceGroup,
      recId,
      companyId,
      companyCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductPriceEntityData &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.itemId == this.itemId &&
          other.packSize == this.packSize &&
          other.fromDate == this.fromDate &&
          other.toDate == this.toDate &&
          other.unitPrice == this.unitPrice &&
          other.salesUnit == this.salesUnit &&
          other.currencyCode == this.currencyCode &&
          other.priceGroup == this.priceGroup &&
          other.recId == this.recId &&
          other.companyId == this.companyId &&
          other.companyCode == this.companyCode);
}

class ProductPriceEntityCompanion
    extends UpdateCompanion<ProductPriceEntityData> {
  final Value<int> id;
  final Value<String> productId;
  final Value<String> itemId;
  final Value<String> packSize;
  final Value<DateTime> fromDate;
  final Value<DateTime> toDate;
  final Value<double> unitPrice;
  final Value<String> salesUnit;
  final Value<String> currencyCode;
  final Value<String> priceGroup;
  final Value<String> recId;
  final Value<int> companyId;
  final Value<String?> companyCode;
  final Value<int> rowid;
  const ProductPriceEntityCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.packSize = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.salesUnit = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.priceGroup = const Value.absent(),
    this.recId = const Value.absent(),
    this.companyId = const Value.absent(),
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductPriceEntityCompanion.insert({
    required int id,
    required String productId,
    required String itemId,
    required String packSize,
    required DateTime fromDate,
    required DateTime toDate,
    required double unitPrice,
    required String salesUnit,
    required String currencyCode,
    required String priceGroup,
    required String recId,
    required int companyId,
    this.companyCode = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        productId = Value(productId),
        itemId = Value(itemId),
        packSize = Value(packSize),
        fromDate = Value(fromDate),
        toDate = Value(toDate),
        unitPrice = Value(unitPrice),
        salesUnit = Value(salesUnit),
        currencyCode = Value(currencyCode),
        priceGroup = Value(priceGroup),
        recId = Value(recId),
        companyId = Value(companyId);
  static Insertable<ProductPriceEntityData> custom({
    Expression<int>? id,
    Expression<String>? productId,
    Expression<String>? itemId,
    Expression<String>? packSize,
    Expression<DateTime>? fromDate,
    Expression<DateTime>? toDate,
    Expression<double>? unitPrice,
    Expression<String>? salesUnit,
    Expression<String>? currencyCode,
    Expression<String>? priceGroup,
    Expression<String>? recId,
    Expression<int>? companyId,
    Expression<String>? companyCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (itemId != null) 'item_id': itemId,
      if (packSize != null) 'pack_size': packSize,
      if (fromDate != null) 'from_date': fromDate,
      if (toDate != null) 'to_date': toDate,
      if (unitPrice != null) 'unit_price': unitPrice,
      if (salesUnit != null) 'sales_unit': salesUnit,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (priceGroup != null) 'price_group': priceGroup,
      if (recId != null) 'rec_id': recId,
      if (companyId != null) 'company_id': companyId,
      if (companyCode != null) 'company_code': companyCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductPriceEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? productId,
      Value<String>? itemId,
      Value<String>? packSize,
      Value<DateTime>? fromDate,
      Value<DateTime>? toDate,
      Value<double>? unitPrice,
      Value<String>? salesUnit,
      Value<String>? currencyCode,
      Value<String>? priceGroup,
      Value<String>? recId,
      Value<int>? companyId,
      Value<String?>? companyCode,
      Value<int>? rowid}) {
    return ProductPriceEntityCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      itemId: itemId ?? this.itemId,
      packSize: packSize ?? this.packSize,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      unitPrice: unitPrice ?? this.unitPrice,
      salesUnit: salesUnit ?? this.salesUnit,
      currencyCode: currencyCode ?? this.currencyCode,
      priceGroup: priceGroup ?? this.priceGroup,
      recId: recId ?? this.recId,
      companyId: companyId ?? this.companyId,
      companyCode: companyCode ?? this.companyCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (packSize.present) {
      map['pack_size'] = Variable<String>(packSize.value);
    }
    if (fromDate.present) {
      map['from_date'] = Variable<DateTime>(fromDate.value);
    }
    if (toDate.present) {
      map['to_date'] = Variable<DateTime>(toDate.value);
    }
    if (unitPrice.present) {
      map['unit_price'] = Variable<double>(unitPrice.value);
    }
    if (salesUnit.present) {
      map['sales_unit'] = Variable<String>(salesUnit.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (priceGroup.present) {
      map['price_group'] = Variable<String>(priceGroup.value);
    }
    if (recId.present) {
      map['rec_id'] = Variable<String>(recId.value);
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
    return (StringBuffer('ProductPriceEntityCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('itemId: $itemId, ')
          ..write('packSize: $packSize, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('priceGroup: $priceGroup, ')
          ..write('recId: $recId, ')
          ..write('companyId: $companyId, ')
          ..write('companyCode: $companyCode, ')
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
  late final $CustomerAddressEntityTable customerAddressEntity =
      $CustomerAddressEntityTable(this);
  late final $ProductEntityTable productEntity = $ProductEntityTable(this);
  late final $ProductPriceEntityTable productPriceEntity =
      $ProductPriceEntityTable(this);
  late final Index customerId = Index('customer_id',
      'CREATE INDEX customer_id ON customer_address_entity (customer_id)');
  late final SettingDao settingDao = SettingDao(this as AppDatabase);
  late final MerchandiserCustomerDao merchandiserCustomerDao =
      MerchandiserCustomerDao(this as AppDatabase);
  late final SalesCustomerDao salesCustomerDao =
      SalesCustomerDao(this as AppDatabase);
  late final CustomerAddressDao customerAddressDao =
      CustomerAddressDao(this as AppDatabase);
  late final ProductDao productDao = ProductDao(this as AppDatabase);
  late final ProductPriceDao productPriceDao =
      ProductPriceDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        settingEntity,
        merchandiserCustomerEntity,
        salesCustomerEntity,
        searchMerchandiserCustomerHistoryEntity,
        searchSalesCustomerHistoryEntity,
        customerAddressEntity,
        productEntity,
        productPriceEntity,
        customerId
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
typedef $$CustomerAddressEntityTableCreateCompanionBuilder
    = CustomerAddressEntityCompanion Function({
  required String customerId,
  required String deliveryName,
  required String address,
  required String salesPersonId,
  Value<double> latitude,
  Value<double> longitude,
  required String postalAddress,
  required String location,
  required bool isPrimary,
  required String companyCode,
  required int companyId,
  Value<int> rowid,
});
typedef $$CustomerAddressEntityTableUpdateCompanionBuilder
    = CustomerAddressEntityCompanion Function({
  Value<String> customerId,
  Value<String> deliveryName,
  Value<String> address,
  Value<String> salesPersonId,
  Value<double> latitude,
  Value<double> longitude,
  Value<String> postalAddress,
  Value<String> location,
  Value<bool> isPrimary,
  Value<String> companyCode,
  Value<int> companyId,
  Value<int> rowid,
});

class $$CustomerAddressEntityTableFilterComposer
    extends Composer<_$AppDatabase, $CustomerAddressEntityTable> {
  $$CustomerAddressEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deliveryName => $composableBuilder(
      column: $table.deliveryName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get postalAddress => $composableBuilder(
      column: $table.postalAddress, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isPrimary => $composableBuilder(
      column: $table.isPrimary, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));
}

class $$CustomerAddressEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomerAddressEntityTable> {
  $$CustomerAddressEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deliveryName => $composableBuilder(
      column: $table.deliveryName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get postalAddress => $composableBuilder(
      column: $table.postalAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isPrimary => $composableBuilder(
      column: $table.isPrimary, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));
}

class $$CustomerAddressEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomerAddressEntityTable> {
  $$CustomerAddressEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => column);

  GeneratedColumn<String> get deliveryName => $composableBuilder(
      column: $table.deliveryName, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get salesPersonId => $composableBuilder(
      column: $table.salesPersonId, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get postalAddress => $composableBuilder(
      column: $table.postalAddress, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<bool> get isPrimary =>
      $composableBuilder(column: $table.isPrimary, builder: (column) => column);

  GeneratedColumn<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);
}

class $$CustomerAddressEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CustomerAddressEntityTable,
    CustomerAddressEntityData,
    $$CustomerAddressEntityTableFilterComposer,
    $$CustomerAddressEntityTableOrderingComposer,
    $$CustomerAddressEntityTableAnnotationComposer,
    $$CustomerAddressEntityTableCreateCompanionBuilder,
    $$CustomerAddressEntityTableUpdateCompanionBuilder,
    (
      CustomerAddressEntityData,
      BaseReferences<_$AppDatabase, $CustomerAddressEntityTable,
          CustomerAddressEntityData>
    ),
    CustomerAddressEntityData,
    PrefetchHooks Function()> {
  $$CustomerAddressEntityTableTableManager(
      _$AppDatabase db, $CustomerAddressEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomerAddressEntityTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomerAddressEntityTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomerAddressEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> customerId = const Value.absent(),
            Value<String> deliveryName = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> salesPersonId = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<String> postalAddress = const Value.absent(),
            Value<String> location = const Value.absent(),
            Value<bool> isPrimary = const Value.absent(),
            Value<String> companyCode = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomerAddressEntityCompanion(
            customerId: customerId,
            deliveryName: deliveryName,
            address: address,
            salesPersonId: salesPersonId,
            latitude: latitude,
            longitude: longitude,
            postalAddress: postalAddress,
            location: location,
            isPrimary: isPrimary,
            companyCode: companyCode,
            companyId: companyId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String customerId,
            required String deliveryName,
            required String address,
            required String salesPersonId,
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            required String postalAddress,
            required String location,
            required bool isPrimary,
            required String companyCode,
            required int companyId,
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomerAddressEntityCompanion.insert(
            customerId: customerId,
            deliveryName: deliveryName,
            address: address,
            salesPersonId: salesPersonId,
            latitude: latitude,
            longitude: longitude,
            postalAddress: postalAddress,
            location: location,
            isPrimary: isPrimary,
            companyCode: companyCode,
            companyId: companyId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CustomerAddressEntityTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $CustomerAddressEntityTable,
        CustomerAddressEntityData,
        $$CustomerAddressEntityTableFilterComposer,
        $$CustomerAddressEntityTableOrderingComposer,
        $$CustomerAddressEntityTableAnnotationComposer,
        $$CustomerAddressEntityTableCreateCompanionBuilder,
        $$CustomerAddressEntityTableUpdateCompanionBuilder,
        (
          CustomerAddressEntityData,
          BaseReferences<_$AppDatabase, $CustomerAddressEntityTable,
              CustomerAddressEntityData>
        ),
        CustomerAddressEntityData,
        PrefetchHooks Function()>;
typedef $$ProductEntityTableCreateCompanionBuilder = ProductEntityCompanion
    Function({
  required int id,
  required String productId,
  required String itemId,
  required String productName,
  required String description,
  required String category,
  required String barcode,
  required String itemGroup,
  required String packSize,
  required String salesUnit,
  required double unitPrice,
  required String image,
  required String itemDiscountGroup,
  required String itemFOCGroup,
  required String inventDimId,
  required String status,
  Value<String?> companyCode,
  required int companyId,
  Value<int> rowid,
});
typedef $$ProductEntityTableUpdateCompanionBuilder = ProductEntityCompanion
    Function({
  Value<int> id,
  Value<String> productId,
  Value<String> itemId,
  Value<String> productName,
  Value<String> description,
  Value<String> category,
  Value<String> barcode,
  Value<String> itemGroup,
  Value<String> packSize,
  Value<String> salesUnit,
  Value<double> unitPrice,
  Value<String> image,
  Value<String> itemDiscountGroup,
  Value<String> itemFOCGroup,
  Value<String> inventDimId,
  Value<String> status,
  Value<String?> companyCode,
  Value<int> companyId,
  Value<int> rowid,
});

class $$ProductEntityTableFilterComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemGroup => $composableBuilder(
      column: $table.itemGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get packSize => $composableBuilder(
      column: $table.packSize, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesUnit => $composableBuilder(
      column: $table.salesUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemDiscountGroup => $composableBuilder(
      column: $table.itemDiscountGroup,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemFOCGroup => $composableBuilder(
      column: $table.itemFOCGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inventDimId => $composableBuilder(
      column: $table.inventDimId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));
}

class $$ProductEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemGroup => $composableBuilder(
      column: $table.itemGroup, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get packSize => $composableBuilder(
      column: $table.packSize, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesUnit => $composableBuilder(
      column: $table.salesUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemDiscountGroup => $composableBuilder(
      column: $table.itemDiscountGroup,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemFOCGroup => $composableBuilder(
      column: $table.itemFOCGroup,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inventDimId => $composableBuilder(
      column: $table.inventDimId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));
}

class $$ProductEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductEntityTable> {
  $$ProductEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<String> get itemGroup =>
      $composableBuilder(column: $table.itemGroup, builder: (column) => column);

  GeneratedColumn<String> get packSize =>
      $composableBuilder(column: $table.packSize, builder: (column) => column);

  GeneratedColumn<String> get salesUnit =>
      $composableBuilder(column: $table.salesUnit, builder: (column) => column);

  GeneratedColumn<double> get unitPrice =>
      $composableBuilder(column: $table.unitPrice, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get itemDiscountGroup => $composableBuilder(
      column: $table.itemDiscountGroup, builder: (column) => column);

  GeneratedColumn<String> get itemFOCGroup => $composableBuilder(
      column: $table.itemFOCGroup, builder: (column) => column);

  GeneratedColumn<String> get inventDimId => $composableBuilder(
      column: $table.inventDimId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);
}

class $$ProductEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductEntityTable,
    ProductEntityData,
    $$ProductEntityTableFilterComposer,
    $$ProductEntityTableOrderingComposer,
    $$ProductEntityTableAnnotationComposer,
    $$ProductEntityTableCreateCompanionBuilder,
    $$ProductEntityTableUpdateCompanionBuilder,
    (
      ProductEntityData,
      BaseReferences<_$AppDatabase, $ProductEntityTable, ProductEntityData>
    ),
    ProductEntityData,
    PrefetchHooks Function()> {
  $$ProductEntityTableTableManager(_$AppDatabase db, $ProductEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> productId = const Value.absent(),
            Value<String> itemId = const Value.absent(),
            Value<String> productName = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> barcode = const Value.absent(),
            Value<String> itemGroup = const Value.absent(),
            Value<String> packSize = const Value.absent(),
            Value<String> salesUnit = const Value.absent(),
            Value<double> unitPrice = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> itemDiscountGroup = const Value.absent(),
            Value<String> itemFOCGroup = const Value.absent(),
            Value<String> inventDimId = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> companyCode = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductEntityCompanion(
            id: id,
            productId: productId,
            itemId: itemId,
            productName: productName,
            description: description,
            category: category,
            barcode: barcode,
            itemGroup: itemGroup,
            packSize: packSize,
            salesUnit: salesUnit,
            unitPrice: unitPrice,
            image: image,
            itemDiscountGroup: itemDiscountGroup,
            itemFOCGroup: itemFOCGroup,
            inventDimId: inventDimId,
            status: status,
            companyCode: companyCode,
            companyId: companyId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String productId,
            required String itemId,
            required String productName,
            required String description,
            required String category,
            required String barcode,
            required String itemGroup,
            required String packSize,
            required String salesUnit,
            required double unitPrice,
            required String image,
            required String itemDiscountGroup,
            required String itemFOCGroup,
            required String inventDimId,
            required String status,
            Value<String?> companyCode = const Value.absent(),
            required int companyId,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductEntityCompanion.insert(
            id: id,
            productId: productId,
            itemId: itemId,
            productName: productName,
            description: description,
            category: category,
            barcode: barcode,
            itemGroup: itemGroup,
            packSize: packSize,
            salesUnit: salesUnit,
            unitPrice: unitPrice,
            image: image,
            itemDiscountGroup: itemDiscountGroup,
            itemFOCGroup: itemFOCGroup,
            inventDimId: inventDimId,
            status: status,
            companyCode: companyCode,
            companyId: companyId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProductEntityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductEntityTable,
    ProductEntityData,
    $$ProductEntityTableFilterComposer,
    $$ProductEntityTableOrderingComposer,
    $$ProductEntityTableAnnotationComposer,
    $$ProductEntityTableCreateCompanionBuilder,
    $$ProductEntityTableUpdateCompanionBuilder,
    (
      ProductEntityData,
      BaseReferences<_$AppDatabase, $ProductEntityTable, ProductEntityData>
    ),
    ProductEntityData,
    PrefetchHooks Function()>;
typedef $$ProductPriceEntityTableCreateCompanionBuilder
    = ProductPriceEntityCompanion Function({
  required int id,
  required String productId,
  required String itemId,
  required String packSize,
  required DateTime fromDate,
  required DateTime toDate,
  required double unitPrice,
  required String salesUnit,
  required String currencyCode,
  required String priceGroup,
  required String recId,
  required int companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});
typedef $$ProductPriceEntityTableUpdateCompanionBuilder
    = ProductPriceEntityCompanion Function({
  Value<int> id,
  Value<String> productId,
  Value<String> itemId,
  Value<String> packSize,
  Value<DateTime> fromDate,
  Value<DateTime> toDate,
  Value<double> unitPrice,
  Value<String> salesUnit,
  Value<String> currencyCode,
  Value<String> priceGroup,
  Value<String> recId,
  Value<int> companyId,
  Value<String?> companyCode,
  Value<int> rowid,
});

class $$ProductPriceEntityTableFilterComposer
    extends Composer<_$AppDatabase, $ProductPriceEntityTable> {
  $$ProductPriceEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get packSize => $composableBuilder(
      column: $table.packSize, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fromDate => $composableBuilder(
      column: $table.fromDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get toDate => $composableBuilder(
      column: $table.toDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesUnit => $composableBuilder(
      column: $table.salesUnit, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get recId => $composableBuilder(
      column: $table.recId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnFilters(column));
}

class $$ProductPriceEntityTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductPriceEntityTable> {
  $$ProductPriceEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get packSize => $composableBuilder(
      column: $table.packSize, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fromDate => $composableBuilder(
      column: $table.fromDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get toDate => $composableBuilder(
      column: $table.toDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesUnit => $composableBuilder(
      column: $table.salesUnit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get recId => $composableBuilder(
      column: $table.recId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get companyId => $composableBuilder(
      column: $table.companyId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => ColumnOrderings(column));
}

class $$ProductPriceEntityTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductPriceEntityTable> {
  $$ProductPriceEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get packSize =>
      $composableBuilder(column: $table.packSize, builder: (column) => column);

  GeneratedColumn<DateTime> get fromDate =>
      $composableBuilder(column: $table.fromDate, builder: (column) => column);

  GeneratedColumn<DateTime> get toDate =>
      $composableBuilder(column: $table.toDate, builder: (column) => column);

  GeneratedColumn<double> get unitPrice =>
      $composableBuilder(column: $table.unitPrice, builder: (column) => column);

  GeneratedColumn<String> get salesUnit =>
      $composableBuilder(column: $table.salesUnit, builder: (column) => column);

  GeneratedColumn<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode, builder: (column) => column);

  GeneratedColumn<String> get priceGroup => $composableBuilder(
      column: $table.priceGroup, builder: (column) => column);

  GeneratedColumn<String> get recId =>
      $composableBuilder(column: $table.recId, builder: (column) => column);

  GeneratedColumn<int> get companyId =>
      $composableBuilder(column: $table.companyId, builder: (column) => column);

  GeneratedColumn<String> get companyCode => $composableBuilder(
      column: $table.companyCode, builder: (column) => column);
}

class $$ProductPriceEntityTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductPriceEntityTable,
    ProductPriceEntityData,
    $$ProductPriceEntityTableFilterComposer,
    $$ProductPriceEntityTableOrderingComposer,
    $$ProductPriceEntityTableAnnotationComposer,
    $$ProductPriceEntityTableCreateCompanionBuilder,
    $$ProductPriceEntityTableUpdateCompanionBuilder,
    (
      ProductPriceEntityData,
      BaseReferences<_$AppDatabase, $ProductPriceEntityTable,
          ProductPriceEntityData>
    ),
    ProductPriceEntityData,
    PrefetchHooks Function()> {
  $$ProductPriceEntityTableTableManager(
      _$AppDatabase db, $ProductPriceEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductPriceEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductPriceEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductPriceEntityTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> productId = const Value.absent(),
            Value<String> itemId = const Value.absent(),
            Value<String> packSize = const Value.absent(),
            Value<DateTime> fromDate = const Value.absent(),
            Value<DateTime> toDate = const Value.absent(),
            Value<double> unitPrice = const Value.absent(),
            Value<String> salesUnit = const Value.absent(),
            Value<String> currencyCode = const Value.absent(),
            Value<String> priceGroup = const Value.absent(),
            Value<String> recId = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductPriceEntityCompanion(
            id: id,
            productId: productId,
            itemId: itemId,
            packSize: packSize,
            fromDate: fromDate,
            toDate: toDate,
            unitPrice: unitPrice,
            salesUnit: salesUnit,
            currencyCode: currencyCode,
            priceGroup: priceGroup,
            recId: recId,
            companyId: companyId,
            companyCode: companyCode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String productId,
            required String itemId,
            required String packSize,
            required DateTime fromDate,
            required DateTime toDate,
            required double unitPrice,
            required String salesUnit,
            required String currencyCode,
            required String priceGroup,
            required String recId,
            required int companyId,
            Value<String?> companyCode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductPriceEntityCompanion.insert(
            id: id,
            productId: productId,
            itemId: itemId,
            packSize: packSize,
            fromDate: fromDate,
            toDate: toDate,
            unitPrice: unitPrice,
            salesUnit: salesUnit,
            currencyCode: currencyCode,
            priceGroup: priceGroup,
            recId: recId,
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

typedef $$ProductPriceEntityTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductPriceEntityTable,
    ProductPriceEntityData,
    $$ProductPriceEntityTableFilterComposer,
    $$ProductPriceEntityTableOrderingComposer,
    $$ProductPriceEntityTableAnnotationComposer,
    $$ProductPriceEntityTableCreateCompanionBuilder,
    $$ProductPriceEntityTableUpdateCompanionBuilder,
    (
      ProductPriceEntityData,
      BaseReferences<_$AppDatabase, $ProductPriceEntityTable,
          ProductPriceEntityData>
    ),
    ProductPriceEntityData,
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
  $$CustomerAddressEntityTableTableManager get customerAddressEntity =>
      $$CustomerAddressEntityTableTableManager(_db, _db.customerAddressEntity);
  $$ProductEntityTableTableManager get productEntity =>
      $$ProductEntityTableTableManager(_db, _db.productEntity);
  $$ProductPriceEntityTableTableManager get productPriceEntity =>
      $$ProductPriceEntityTableTableManager(_db, _db.productPriceEntity);
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
