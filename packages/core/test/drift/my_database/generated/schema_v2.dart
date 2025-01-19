// dart format width=80
// GENERATED CODE, DO NOT EDIT BY HAND.
// ignore_for_file: type=lint
import 'package:drift/drift.dart';

class SettingEntity extends Table
    with TableInfo<SettingEntity, SettingEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SettingEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
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
  SettingEntity createAlias(String alias) {
    return SettingEntity(attachedDatabase, alias);
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

class MerchandiserCustomerEntity extends Table
    with TableInfo<MerchandiserCustomerEntity, MerchandiserCustomerEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  MerchandiserCustomerEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
      'sales_person_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
      'sales_person', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
      'merchandiser', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'country_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const CustomExpression('0.0'));
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const CustomExpression('0.0'));
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
      'credit_limit', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
      'payment_term', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
      'price_group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>('customre_dimension', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  MerchandiserCustomerEntity createAlias(String alias) {
    return MerchandiserCustomerEntity(attachedDatabase, alias);
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

class SalesCustomerEntity extends Table
    with TableInfo<SalesCustomerEntity, SalesCustomerEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SalesCustomerEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
      'sales_person_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
      'sales_person', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
      'merchandiser', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
      'country_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const CustomExpression('0.0'));
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const CustomExpression('0.0'));
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
      'credit_limit', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
      'currency_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
      'payment_term', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
      'price_group', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>('customre_dimension', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
      'status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
  SalesCustomerEntity createAlias(String alias) {
    return SalesCustomerEntity(attachedDatabase, alias);
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

class SearchMerchandiserCustomerHistoryEntity extends Table
    with
        TableInfo<SearchMerchandiserCustomerHistoryEntity,
            SearchMerchandiserCustomerHistoryEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SearchMerchandiserCustomerHistoryEntity(this.attachedDatabase, [this._alias]);
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
  SearchMerchandiserCustomerHistoryEntity createAlias(String alias) {
    return SearchMerchandiserCustomerHistoryEntity(attachedDatabase, alias);
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

class DatabaseAtV2 extends GeneratedDatabase {
  DatabaseAtV2(QueryExecutor e) : super(e);
  late final SettingEntity settingEntity = SettingEntity(this);
  late final MerchandiserCustomerEntity merchandiserCustomerEntity =
      MerchandiserCustomerEntity(this);
  late final SalesCustomerEntity salesCustomerEntity =
      SalesCustomerEntity(this);
  late final SearchMerchandiserCustomerHistoryEntity
      searchMerchandiserCustomerHistoryEntity =
      SearchMerchandiserCustomerHistoryEntity(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        settingEntity,
        merchandiserCustomerEntity,
        salesCustomerEntity,
        searchMerchandiserCustomerHistoryEntity
      ];
  @override
  int get schemaVersion => 2;
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
