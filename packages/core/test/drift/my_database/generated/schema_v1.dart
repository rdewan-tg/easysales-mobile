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
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
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
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      ),
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
      value: value == null && nullToAbsent
          ? const Value.absent()
          : Value(value),
    );
  }

  factory SettingEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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

  SettingEntityData copyWith({
    String? key,
    Value<String?> value = const Value.absent(),
  }) => SettingEntityData(
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

  SettingEntityCompanion copyWith({
    Value<String>? key,
    Value<String?>? value,
    Value<int>? rowid,
  }) {
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
    'customer_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
    'customer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
    'sales_person_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
    'sales_person',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
    'merchandiser',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
    'country_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
    'credit_limit',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
    'currency_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
    'payment_term',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
    'price_group',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>(
        'customre_dimension',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
    'company_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
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
    companyCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'merchandiser_customer_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {customerId};
  @override
  MerchandiserCustomerEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MerchandiserCustomerEntityData(
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      )!,
      customerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_name'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      salesPersonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person_id'],
      )!,
      salesPerson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person'],
      ),
      merchandiser: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}merchandiser'],
      ),
      countryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country_id'],
      )!,
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      )!,
      creditLimit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}credit_limit'],
      ),
      currencyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_code'],
      ),
      paymentTerm: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_term'],
      ),
      priceGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}price_group'],
      ),
      customreDimension: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customre_dimension'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
      companyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_code'],
      ),
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
  const MerchandiserCustomerEntityData({
    required this.customerId,
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
    this.companyCode,
  });
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

  factory MerchandiserCustomerEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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
      customreDimension: serializer.fromJson<String?>(
        json['customreDimension'],
      ),
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

  MerchandiserCustomerEntityData copyWith({
    String? customerId,
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
    Value<String?> companyCode = const Value.absent(),
  }) => MerchandiserCustomerEntityData(
    customerId: customerId ?? this.customerId,
    customerName: customerName ?? this.customerName,
    address: address.present ? address.value : this.address,
    salesPersonId: salesPersonId ?? this.salesPersonId,
    salesPerson: salesPerson.present ? salesPerson.value : this.salesPerson,
    merchandiser: merchandiser.present ? merchandiser.value : this.merchandiser,
    countryId: countryId ?? this.countryId,
    phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    creditLimit: creditLimit.present ? creditLimit.value : this.creditLimit,
    currencyCode: currencyCode.present ? currencyCode.value : this.currencyCode,
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
    MerchandiserCustomerEntityCompanion data,
  ) {
    return MerchandiserCustomerEntityData(
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      address: data.address.present ? data.address.value : this.address,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      salesPerson: data.salesPerson.present
          ? data.salesPerson.value
          : this.salesPerson,
      merchandiser: data.merchandiser.present
          ? data.merchandiser.value
          : this.merchandiser,
      countryId: data.countryId.present ? data.countryId.value : this.countryId,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      creditLimit: data.creditLimit.present
          ? data.creditLimit.value
          : this.creditLimit,
      currencyCode: data.currencyCode.present
          ? data.currencyCode.value
          : this.currencyCode,
      paymentTerm: data.paymentTerm.present
          ? data.paymentTerm.value
          : this.paymentTerm,
      priceGroup: data.priceGroup.present
          ? data.priceGroup.value
          : this.priceGroup,
      customreDimension: data.customreDimension.present
          ? data.customreDimension.value
          : this.customreDimension,
      status: data.status.present ? data.status.value : this.status,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode: data.companyCode.present
          ? data.companyCode.value
          : this.companyCode,
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
    companyCode,
  );
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
  }) : customerId = Value(customerId),
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

  MerchandiserCustomerEntityCompanion copyWith({
    Value<String>? customerId,
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
    Value<int>? rowid,
  }) {
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
    'customer_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
    'customer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
    'sales_person_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesPerson = GeneratedColumn<String>(
    'sales_person',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> merchandiser = GeneratedColumn<String>(
    'merchandiser',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> countryId = GeneratedColumn<String>(
    'country_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<double> creditLimit = GeneratedColumn<double>(
    'credit_limit',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
    'currency_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> paymentTerm = GeneratedColumn<String>(
    'payment_term',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
    'price_group',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<String> customreDimension =
      GeneratedColumn<String>(
        'customre_dimension',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  late final GeneratedColumn<int> status = GeneratedColumn<int>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
    'company_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
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
    companyCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_customer_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {customerId};
  @override
  SalesCustomerEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesCustomerEntityData(
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      )!,
      customerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_name'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      salesPersonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person_id'],
      )!,
      salesPerson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person'],
      ),
      merchandiser: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}merchandiser'],
      ),
      countryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country_id'],
      )!,
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      )!,
      creditLimit: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}credit_limit'],
      ),
      currencyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_code'],
      ),
      paymentTerm: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_term'],
      ),
      priceGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}price_group'],
      ),
      customreDimension: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customre_dimension'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}status'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
      companyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_code'],
      ),
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
  const SalesCustomerEntityData({
    required this.customerId,
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
    this.companyCode,
  });
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

  factory SalesCustomerEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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
      customreDimension: serializer.fromJson<String?>(
        json['customreDimension'],
      ),
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

  SalesCustomerEntityData copyWith({
    String? customerId,
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
    Value<String?> companyCode = const Value.absent(),
  }) => SalesCustomerEntityData(
    customerId: customerId ?? this.customerId,
    customerName: customerName ?? this.customerName,
    address: address.present ? address.value : this.address,
    salesPersonId: salesPersonId ?? this.salesPersonId,
    salesPerson: salesPerson.present ? salesPerson.value : this.salesPerson,
    merchandiser: merchandiser.present ? merchandiser.value : this.merchandiser,
    countryId: countryId ?? this.countryId,
    phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    creditLimit: creditLimit.present ? creditLimit.value : this.creditLimit,
    currencyCode: currencyCode.present ? currencyCode.value : this.currencyCode,
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
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      address: data.address.present ? data.address.value : this.address,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      salesPerson: data.salesPerson.present
          ? data.salesPerson.value
          : this.salesPerson,
      merchandiser: data.merchandiser.present
          ? data.merchandiser.value
          : this.merchandiser,
      countryId: data.countryId.present ? data.countryId.value : this.countryId,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      creditLimit: data.creditLimit.present
          ? data.creditLimit.value
          : this.creditLimit,
      currencyCode: data.currencyCode.present
          ? data.currencyCode.value
          : this.currencyCode,
      paymentTerm: data.paymentTerm.present
          ? data.paymentTerm.value
          : this.paymentTerm,
      priceGroup: data.priceGroup.present
          ? data.priceGroup.value
          : this.priceGroup,
      customreDimension: data.customreDimension.present
          ? data.customreDimension.value
          : this.customreDimension,
      status: data.status.present ? data.status.value : this.status,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode: data.companyCode.present
          ? data.companyCode.value
          : this.companyCode,
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
    companyCode,
  );
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
  }) : customerId = Value(customerId),
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

  SalesCustomerEntityCompanion copyWith({
    Value<String>? customerId,
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
    Value<int>? rowid,
  }) {
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
        TableInfo<
          SearchMerchandiserCustomerHistoryEntity,
          SearchMerchandiserCustomerHistoryEntityData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SearchMerchandiserCustomerHistoryEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
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
  SearchMerchandiserCustomerHistoryEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchMerchandiserCustomerHistoryEntityData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
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
    bool nullToAbsent,
  ) {
    return SearchMerchandiserCustomerHistoryEntityCompanion(key: Value(key));
  }

  factory SearchMerchandiserCustomerHistoryEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchMerchandiserCustomerHistoryEntityData(
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'key': serializer.toJson<String>(key)};
  }

  SearchMerchandiserCustomerHistoryEntityData copyWith({String? key}) =>
      SearchMerchandiserCustomerHistoryEntityData(key: key ?? this.key);
  SearchMerchandiserCustomerHistoryEntityData copyWithCompanion(
    SearchMerchandiserCustomerHistoryEntityCompanion data,
  ) {
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

  SearchMerchandiserCustomerHistoryEntityCompanion copyWith({
    Value<String>? key,
    Value<int>? rowid,
  }) {
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

class SearchSalesCustomerHistoryEntity extends Table
    with
        TableInfo<
          SearchSalesCustomerHistoryEntity,
          SearchSalesCustomerHistoryEntityData
        > {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SearchSalesCustomerHistoryEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_sales_customer_history_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SearchSalesCustomerHistoryEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchSalesCustomerHistoryEntityData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
    );
  }

  @override
  SearchSalesCustomerHistoryEntity createAlias(String alias) {
    return SearchSalesCustomerHistoryEntity(attachedDatabase, alias);
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
    return SearchSalesCustomerHistoryEntityCompanion(key: Value(key));
  }

  factory SearchSalesCustomerHistoryEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchSalesCustomerHistoryEntityData(
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'key': serializer.toJson<String>(key)};
  }

  SearchSalesCustomerHistoryEntityData copyWith({String? key}) =>
      SearchSalesCustomerHistoryEntityData(key: key ?? this.key);
  SearchSalesCustomerHistoryEntityData copyWithCompanion(
    SearchSalesCustomerHistoryEntityCompanion data,
  ) {
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

  SearchSalesCustomerHistoryEntityCompanion copyWith({
    Value<String>? key,
    Value<int>? rowid,
  }) {
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

class SearchProductHistoryEntity extends Table
    with TableInfo<SearchProductHistoryEntity, SearchProductHistoryEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SearchProductHistoryEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'search_product_history_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SearchProductHistoryEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SearchProductHistoryEntityData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
    );
  }

  @override
  SearchProductHistoryEntity createAlias(String alias) {
    return SearchProductHistoryEntity(attachedDatabase, alias);
  }
}

class SearchProductHistoryEntityData extends DataClass
    implements Insertable<SearchProductHistoryEntityData> {
  final String key;
  const SearchProductHistoryEntityData({required this.key});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    return map;
  }

  SearchProductHistoryEntityCompanion toCompanion(bool nullToAbsent) {
    return SearchProductHistoryEntityCompanion(key: Value(key));
  }

  factory SearchProductHistoryEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SearchProductHistoryEntityData(
      key: serializer.fromJson<String>(json['key']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'key': serializer.toJson<String>(key)};
  }

  SearchProductHistoryEntityData copyWith({String? key}) =>
      SearchProductHistoryEntityData(key: key ?? this.key);
  SearchProductHistoryEntityData copyWithCompanion(
    SearchProductHistoryEntityCompanion data,
  ) {
    return SearchProductHistoryEntityData(
      key: data.key.present ? data.key.value : this.key,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SearchProductHistoryEntityData(')
          ..write('key: $key')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => key.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchProductHistoryEntityData && other.key == this.key);
}

class SearchProductHistoryEntityCompanion
    extends UpdateCompanion<SearchProductHistoryEntityData> {
  final Value<String> key;
  final Value<int> rowid;
  const SearchProductHistoryEntityCompanion({
    this.key = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SearchProductHistoryEntityCompanion.insert({
    required String key,
    this.rowid = const Value.absent(),
  }) : key = Value(key);
  static Insertable<SearchProductHistoryEntityData> custom({
    Expression<String>? key,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SearchProductHistoryEntityCompanion copyWith({
    Value<String>? key,
    Value<int>? rowid,
  }) {
    return SearchProductHistoryEntityCompanion(
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
    return (StringBuffer('SearchProductHistoryEntityCompanion(')
          ..write('key: $key, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class CustomerAddressEntity extends Table
    with TableInfo<CustomerAddressEntity, CustomerAddressEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  CustomerAddressEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
    'customer_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> deliveryName = GeneratedColumn<String>(
    'delivery_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
    'sales_person_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const CustomExpression('0.0'),
  );
  late final GeneratedColumn<String> postalAddress = GeneratedColumn<String>(
    'postal_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<bool> isPrimary = GeneratedColumn<bool>(
    'is_primary',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_primary" IN (0, 1))',
    ),
  );
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
    'company_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
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
    companyId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer_address_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {location};
  @override
  CustomerAddressEntityData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerAddressEntityData(
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      )!,
      deliveryName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}delivery_name'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      salesPersonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person_id'],
      )!,
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      )!,
      postalAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}postal_address'],
      )!,
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      )!,
      isPrimary: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_primary'],
      )!,
      companyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_code'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
    );
  }

  @override
  CustomerAddressEntity createAlias(String alias) {
    return CustomerAddressEntity(attachedDatabase, alias);
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
  const CustomerAddressEntityData({
    required this.customerId,
    required this.deliveryName,
    required this.address,
    required this.salesPersonId,
    required this.latitude,
    required this.longitude,
    required this.postalAddress,
    required this.location,
    required this.isPrimary,
    required this.companyCode,
    required this.companyId,
  });
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

  factory CustomerAddressEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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

  CustomerAddressEntityData copyWith({
    String? customerId,
    String? deliveryName,
    String? address,
    String? salesPersonId,
    double? latitude,
    double? longitude,
    String? postalAddress,
    String? location,
    bool? isPrimary,
    String? companyCode,
    int? companyId,
  }) => CustomerAddressEntityData(
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
    CustomerAddressEntityCompanion data,
  ) {
    return CustomerAddressEntityData(
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
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
      companyCode: data.companyCode.present
          ? data.companyCode.value
          : this.companyCode,
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
    companyId,
  );
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
  }) : customerId = Value(customerId),
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

  CustomerAddressEntityCompanion copyWith({
    Value<String>? customerId,
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
    Value<int>? rowid,
  }) {
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

class ProductEntity extends Table
    with TableInfo<ProductEntity, ProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ProductEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
    'barcode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> itemGroup = GeneratedColumn<String>(
    'item_group',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> packSize = GeneratedColumn<String>(
    'pack_size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesUnit = GeneratedColumn<String>(
    'sales_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
    'unit_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> itemDiscountGroup =
      GeneratedColumn<String>(
        'item_discount_group',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  late final GeneratedColumn<String> itemFOCGroup = GeneratedColumn<String>(
    'item_f_o_c_group',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> inventDimId = GeneratedColumn<String>(
    'invent_dim_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
    'company_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
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
    companyId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {itemId};
  @override
  ProductEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      barcode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}barcode'],
      )!,
      itemGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_group'],
      )!,
      packSize: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pack_size'],
      )!,
      salesUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_unit'],
      )!,
      unitPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}unit_price'],
      )!,
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      )!,
      itemDiscountGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_discount_group'],
      )!,
      itemFOCGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_f_o_c_group'],
      )!,
      inventDimId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}invent_dim_id'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      companyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_code'],
      ),
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
    );
  }

  @override
  ProductEntity createAlias(String alias) {
    return ProductEntity(attachedDatabase, alias);
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
  const ProductEntityData({
    required this.id,
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
    required this.companyId,
  });
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

  factory ProductEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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

  ProductEntityData copyWith({
    int? id,
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
    int? companyId,
  }) => ProductEntityData(
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
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      description: data.description.present
          ? data.description.value
          : this.description,
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
      inventDimId: data.inventDimId.present
          ? data.inventDimId.value
          : this.inventDimId,
      status: data.status.present ? data.status.value : this.status,
      companyCode: data.companyCode.present
          ? data.companyCode.value
          : this.companyCode,
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
    companyId,
  );
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
  }) : id = Value(id),
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

  ProductEntityCompanion copyWith({
    Value<int>? id,
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
    Value<int>? rowid,
  }) {
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

class ProductPriceEntity extends Table
    with TableInfo<ProductPriceEntity, ProductPriceEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ProductPriceEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> packSize = GeneratedColumn<String>(
    'pack_size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<DateTime> fromDate = GeneratedColumn<DateTime>(
    'from_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<DateTime> toDate = GeneratedColumn<DateTime>(
    'to_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
    'unit_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesUnit = GeneratedColumn<String>(
    'sales_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>(
    'currency_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> priceGroup = GeneratedColumn<String>(
    'price_group',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> recId = GeneratedColumn<String>(
    'rec_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> companyCode = GeneratedColumn<String>(
    'company_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
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
    companyCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_price_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {recId};
  @override
  ProductPriceEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductPriceEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      packSize: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pack_size'],
      )!,
      fromDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}from_date'],
      )!,
      toDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}to_date'],
      )!,
      unitPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}unit_price'],
      )!,
      salesUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_unit'],
      )!,
      currencyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency_code'],
      )!,
      priceGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}price_group'],
      )!,
      recId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rec_id'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
      companyCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_code'],
      ),
    );
  }

  @override
  ProductPriceEntity createAlias(String alias) {
    return ProductPriceEntity(attachedDatabase, alias);
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
  const ProductPriceEntityData({
    required this.id,
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
    this.companyCode,
  });
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

  factory ProductPriceEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
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

  ProductPriceEntityData copyWith({
    int? id,
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
    Value<String?> companyCode = const Value.absent(),
  }) => ProductPriceEntityData(
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
      priceGroup: data.priceGroup.present
          ? data.priceGroup.value
          : this.priceGroup,
      recId: data.recId.present ? data.recId.value : this.recId,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
      companyCode: data.companyCode.present
          ? data.companyCode.value
          : this.companyCode,
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
    companyCode,
  );
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
  }) : id = Value(id),
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

  ProductPriceEntityCompanion copyWith({
    Value<int>? id,
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
    Value<int>? rowid,
  }) {
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

class SalesHeaderEntity extends Table
    with TableInfo<SalesHeaderEntity, SalesHeaderEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SalesHeaderEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  late final GeneratedColumn<String> salesId = GeneratedColumn<String>(
    'sales_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
    'customer_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
    'customer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> customerAddress = GeneratedColumn<String>(
    'customer_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesPersonId = GeneratedColumn<String>(
    'sales_person_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> customerRequisition =
      GeneratedColumn<String>(
        'customer_requisition',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  late final GeneratedColumn<String> customerPriceGroup =
      GeneratedColumn<String>(
        'customer_price_group',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> deliveryAddressLocation =
      GeneratedColumn<String>(
        'delivery_address_location',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  late final GeneratedColumn<String> deliveryDate = GeneratedColumn<String>(
    'delivery_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> transactionDate = GeneratedColumn<String>(
    'transaction_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> syncStatus = GeneratedColumn<int>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    salesId,
    customerId,
    customerName,
    customerAddress,
    salesPersonId,
    customerRequisition,
    customerPriceGroup,
    note,
    deliveryAddressLocation,
    deliveryDate,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_header_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesHeaderEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesHeaderEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      salesId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_id'],
      )!,
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      )!,
      customerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_name'],
      )!,
      customerAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_address'],
      )!,
      salesPersonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_person_id'],
      )!,
      customerRequisition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_requisition'],
      )!,
      customerPriceGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_price_group'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
      deliveryAddressLocation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}delivery_address_location'],
      )!,
      deliveryDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}delivery_date'],
      )!,
      transactionDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_date'],
      )!,
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      )!,
      syncStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sync_status'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
    );
  }

  @override
  SalesHeaderEntity createAlias(String alias) {
    return SalesHeaderEntity(attachedDatabase, alias);
  }
}

class SalesHeaderEntityData extends DataClass
    implements Insertable<SalesHeaderEntityData> {
  final int id;
  final String salesId;
  final String customerId;
  final String customerName;
  final String customerAddress;
  final String salesPersonId;
  final String customerRequisition;
  final String customerPriceGroup;
  final String note;
  final String deliveryAddressLocation;
  final String deliveryDate;
  final String transactionDate;
  final String deviceId;
  final int syncStatus;
  final int companyId;
  const SalesHeaderEntityData({
    required this.id,
    required this.salesId,
    required this.customerId,
    required this.customerName,
    required this.customerAddress,
    required this.salesPersonId,
    required this.customerRequisition,
    required this.customerPriceGroup,
    required this.note,
    required this.deliveryAddressLocation,
    required this.deliveryDate,
    required this.transactionDate,
    required this.deviceId,
    required this.syncStatus,
    required this.companyId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['sales_id'] = Variable<String>(salesId);
    map['customer_id'] = Variable<String>(customerId);
    map['customer_name'] = Variable<String>(customerName);
    map['customer_address'] = Variable<String>(customerAddress);
    map['sales_person_id'] = Variable<String>(salesPersonId);
    map['customer_requisition'] = Variable<String>(customerRequisition);
    map['customer_price_group'] = Variable<String>(customerPriceGroup);
    map['note'] = Variable<String>(note);
    map['delivery_address_location'] = Variable<String>(
      deliveryAddressLocation,
    );
    map['delivery_date'] = Variable<String>(deliveryDate);
    map['transaction_date'] = Variable<String>(transactionDate);
    map['device_id'] = Variable<String>(deviceId);
    map['sync_status'] = Variable<int>(syncStatus);
    map['company_id'] = Variable<int>(companyId);
    return map;
  }

  SalesHeaderEntityCompanion toCompanion(bool nullToAbsent) {
    return SalesHeaderEntityCompanion(
      id: Value(id),
      salesId: Value(salesId),
      customerId: Value(customerId),
      customerName: Value(customerName),
      customerAddress: Value(customerAddress),
      salesPersonId: Value(salesPersonId),
      customerRequisition: Value(customerRequisition),
      customerPriceGroup: Value(customerPriceGroup),
      note: Value(note),
      deliveryAddressLocation: Value(deliveryAddressLocation),
      deliveryDate: Value(deliveryDate),
      transactionDate: Value(transactionDate),
      deviceId: Value(deviceId),
      syncStatus: Value(syncStatus),
      companyId: Value(companyId),
    );
  }

  factory SalesHeaderEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesHeaderEntityData(
      id: serializer.fromJson<int>(json['id']),
      salesId: serializer.fromJson<String>(json['salesId']),
      customerId: serializer.fromJson<String>(json['customerId']),
      customerName: serializer.fromJson<String>(json['customerName']),
      customerAddress: serializer.fromJson<String>(json['customerAddress']),
      salesPersonId: serializer.fromJson<String>(json['salesPersonId']),
      customerRequisition: serializer.fromJson<String>(
        json['customerRequisition'],
      ),
      customerPriceGroup: serializer.fromJson<String>(
        json['customerPriceGroup'],
      ),
      note: serializer.fromJson<String>(json['note']),
      deliveryAddressLocation: serializer.fromJson<String>(
        json['deliveryAddressLocation'],
      ),
      deliveryDate: serializer.fromJson<String>(json['deliveryDate']),
      transactionDate: serializer.fromJson<String>(json['transactionDate']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      syncStatus: serializer.fromJson<int>(json['syncStatus']),
      companyId: serializer.fromJson<int>(json['companyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'salesId': serializer.toJson<String>(salesId),
      'customerId': serializer.toJson<String>(customerId),
      'customerName': serializer.toJson<String>(customerName),
      'customerAddress': serializer.toJson<String>(customerAddress),
      'salesPersonId': serializer.toJson<String>(salesPersonId),
      'customerRequisition': serializer.toJson<String>(customerRequisition),
      'customerPriceGroup': serializer.toJson<String>(customerPriceGroup),
      'note': serializer.toJson<String>(note),
      'deliveryAddressLocation': serializer.toJson<String>(
        deliveryAddressLocation,
      ),
      'deliveryDate': serializer.toJson<String>(deliveryDate),
      'transactionDate': serializer.toJson<String>(transactionDate),
      'deviceId': serializer.toJson<String>(deviceId),
      'syncStatus': serializer.toJson<int>(syncStatus),
      'companyId': serializer.toJson<int>(companyId),
    };
  }

  SalesHeaderEntityData copyWith({
    int? id,
    String? salesId,
    String? customerId,
    String? customerName,
    String? customerAddress,
    String? salesPersonId,
    String? customerRequisition,
    String? customerPriceGroup,
    String? note,
    String? deliveryAddressLocation,
    String? deliveryDate,
    String? transactionDate,
    String? deviceId,
    int? syncStatus,
    int? companyId,
  }) => SalesHeaderEntityData(
    id: id ?? this.id,
    salesId: salesId ?? this.salesId,
    customerId: customerId ?? this.customerId,
    customerName: customerName ?? this.customerName,
    customerAddress: customerAddress ?? this.customerAddress,
    salesPersonId: salesPersonId ?? this.salesPersonId,
    customerRequisition: customerRequisition ?? this.customerRequisition,
    customerPriceGroup: customerPriceGroup ?? this.customerPriceGroup,
    note: note ?? this.note,
    deliveryAddressLocation:
        deliveryAddressLocation ?? this.deliveryAddressLocation,
    deliveryDate: deliveryDate ?? this.deliveryDate,
    transactionDate: transactionDate ?? this.transactionDate,
    deviceId: deviceId ?? this.deviceId,
    syncStatus: syncStatus ?? this.syncStatus,
    companyId: companyId ?? this.companyId,
  );
  SalesHeaderEntityData copyWithCompanion(SalesHeaderEntityCompanion data) {
    return SalesHeaderEntityData(
      id: data.id.present ? data.id.value : this.id,
      salesId: data.salesId.present ? data.salesId.value : this.salesId,
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      customerAddress: data.customerAddress.present
          ? data.customerAddress.value
          : this.customerAddress,
      salesPersonId: data.salesPersonId.present
          ? data.salesPersonId.value
          : this.salesPersonId,
      customerRequisition: data.customerRequisition.present
          ? data.customerRequisition.value
          : this.customerRequisition,
      customerPriceGroup: data.customerPriceGroup.present
          ? data.customerPriceGroup.value
          : this.customerPriceGroup,
      note: data.note.present ? data.note.value : this.note,
      deliveryAddressLocation: data.deliveryAddressLocation.present
          ? data.deliveryAddressLocation.value
          : this.deliveryAddressLocation,
      deliveryDate: data.deliveryDate.present
          ? data.deliveryDate.value
          : this.deliveryDate,
      transactionDate: data.transactionDate.present
          ? data.transactionDate.value
          : this.transactionDate,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      syncStatus: data.syncStatus.present
          ? data.syncStatus.value
          : this.syncStatus,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SalesHeaderEntityData(')
          ..write('id: $id, ')
          ..write('salesId: $salesId, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('customerAddress: $customerAddress, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('customerRequisition: $customerRequisition, ')
          ..write('customerPriceGroup: $customerPriceGroup, ')
          ..write('note: $note, ')
          ..write('deliveryAddressLocation: $deliveryAddressLocation, ')
          ..write('deliveryDate: $deliveryDate, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('deviceId: $deviceId, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    salesId,
    customerId,
    customerName,
    customerAddress,
    salesPersonId,
    customerRequisition,
    customerPriceGroup,
    note,
    deliveryAddressLocation,
    deliveryDate,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesHeaderEntityData &&
          other.id == this.id &&
          other.salesId == this.salesId &&
          other.customerId == this.customerId &&
          other.customerName == this.customerName &&
          other.customerAddress == this.customerAddress &&
          other.salesPersonId == this.salesPersonId &&
          other.customerRequisition == this.customerRequisition &&
          other.customerPriceGroup == this.customerPriceGroup &&
          other.note == this.note &&
          other.deliveryAddressLocation == this.deliveryAddressLocation &&
          other.deliveryDate == this.deliveryDate &&
          other.transactionDate == this.transactionDate &&
          other.deviceId == this.deviceId &&
          other.syncStatus == this.syncStatus &&
          other.companyId == this.companyId);
}

class SalesHeaderEntityCompanion
    extends UpdateCompanion<SalesHeaderEntityData> {
  final Value<int> id;
  final Value<String> salesId;
  final Value<String> customerId;
  final Value<String> customerName;
  final Value<String> customerAddress;
  final Value<String> salesPersonId;
  final Value<String> customerRequisition;
  final Value<String> customerPriceGroup;
  final Value<String> note;
  final Value<String> deliveryAddressLocation;
  final Value<String> deliveryDate;
  final Value<String> transactionDate;
  final Value<String> deviceId;
  final Value<int> syncStatus;
  final Value<int> companyId;
  const SalesHeaderEntityCompanion({
    this.id = const Value.absent(),
    this.salesId = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.customerAddress = const Value.absent(),
    this.salesPersonId = const Value.absent(),
    this.customerRequisition = const Value.absent(),
    this.customerPriceGroup = const Value.absent(),
    this.note = const Value.absent(),
    this.deliveryAddressLocation = const Value.absent(),
    this.deliveryDate = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.companyId = const Value.absent(),
  });
  SalesHeaderEntityCompanion.insert({
    this.id = const Value.absent(),
    required String salesId,
    required String customerId,
    required String customerName,
    required String customerAddress,
    required String salesPersonId,
    required String customerRequisition,
    required String customerPriceGroup,
    required String note,
    required String deliveryAddressLocation,
    required String deliveryDate,
    required String transactionDate,
    required String deviceId,
    required int syncStatus,
    required int companyId,
  }) : salesId = Value(salesId),
       customerId = Value(customerId),
       customerName = Value(customerName),
       customerAddress = Value(customerAddress),
       salesPersonId = Value(salesPersonId),
       customerRequisition = Value(customerRequisition),
       customerPriceGroup = Value(customerPriceGroup),
       note = Value(note),
       deliveryAddressLocation = Value(deliveryAddressLocation),
       deliveryDate = Value(deliveryDate),
       transactionDate = Value(transactionDate),
       deviceId = Value(deviceId),
       syncStatus = Value(syncStatus),
       companyId = Value(companyId);
  static Insertable<SalesHeaderEntityData> custom({
    Expression<int>? id,
    Expression<String>? salesId,
    Expression<String>? customerId,
    Expression<String>? customerName,
    Expression<String>? customerAddress,
    Expression<String>? salesPersonId,
    Expression<String>? customerRequisition,
    Expression<String>? customerPriceGroup,
    Expression<String>? note,
    Expression<String>? deliveryAddressLocation,
    Expression<String>? deliveryDate,
    Expression<String>? transactionDate,
    Expression<String>? deviceId,
    Expression<int>? syncStatus,
    Expression<int>? companyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (salesId != null) 'sales_id': salesId,
      if (customerId != null) 'customer_id': customerId,
      if (customerName != null) 'customer_name': customerName,
      if (customerAddress != null) 'customer_address': customerAddress,
      if (salesPersonId != null) 'sales_person_id': salesPersonId,
      if (customerRequisition != null)
        'customer_requisition': customerRequisition,
      if (customerPriceGroup != null)
        'customer_price_group': customerPriceGroup,
      if (note != null) 'note': note,
      if (deliveryAddressLocation != null)
        'delivery_address_location': deliveryAddressLocation,
      if (deliveryDate != null) 'delivery_date': deliveryDate,
      if (transactionDate != null) 'transaction_date': transactionDate,
      if (deviceId != null) 'device_id': deviceId,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (companyId != null) 'company_id': companyId,
    });
  }

  SalesHeaderEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? salesId,
    Value<String>? customerId,
    Value<String>? customerName,
    Value<String>? customerAddress,
    Value<String>? salesPersonId,
    Value<String>? customerRequisition,
    Value<String>? customerPriceGroup,
    Value<String>? note,
    Value<String>? deliveryAddressLocation,
    Value<String>? deliveryDate,
    Value<String>? transactionDate,
    Value<String>? deviceId,
    Value<int>? syncStatus,
    Value<int>? companyId,
  }) {
    return SalesHeaderEntityCompanion(
      id: id ?? this.id,
      salesId: salesId ?? this.salesId,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      customerAddress: customerAddress ?? this.customerAddress,
      salesPersonId: salesPersonId ?? this.salesPersonId,
      customerRequisition: customerRequisition ?? this.customerRequisition,
      customerPriceGroup: customerPriceGroup ?? this.customerPriceGroup,
      note: note ?? this.note,
      deliveryAddressLocation:
          deliveryAddressLocation ?? this.deliveryAddressLocation,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      transactionDate: transactionDate ?? this.transactionDate,
      deviceId: deviceId ?? this.deviceId,
      syncStatus: syncStatus ?? this.syncStatus,
      companyId: companyId ?? this.companyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (salesId.present) {
      map['sales_id'] = Variable<String>(salesId.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (customerAddress.present) {
      map['customer_address'] = Variable<String>(customerAddress.value);
    }
    if (salesPersonId.present) {
      map['sales_person_id'] = Variable<String>(salesPersonId.value);
    }
    if (customerRequisition.present) {
      map['customer_requisition'] = Variable<String>(customerRequisition.value);
    }
    if (customerPriceGroup.present) {
      map['customer_price_group'] = Variable<String>(customerPriceGroup.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (deliveryAddressLocation.present) {
      map['delivery_address_location'] = Variable<String>(
        deliveryAddressLocation.value,
      );
    }
    if (deliveryDate.present) {
      map['delivery_date'] = Variable<String>(deliveryDate.value);
    }
    if (transactionDate.present) {
      map['transaction_date'] = Variable<String>(transactionDate.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<int>(syncStatus.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesHeaderEntityCompanion(')
          ..write('id: $id, ')
          ..write('salesId: $salesId, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('customerAddress: $customerAddress, ')
          ..write('salesPersonId: $salesPersonId, ')
          ..write('customerRequisition: $customerRequisition, ')
          ..write('customerPriceGroup: $customerPriceGroup, ')
          ..write('note: $note, ')
          ..write('deliveryAddressLocation: $deliveryAddressLocation, ')
          ..write('deliveryDate: $deliveryDate, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('deviceId: $deviceId, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }
}

class SalesLineEntity extends Table
    with TableInfo<SalesLineEntity, SalesLineEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SalesLineEntity(this.attachedDatabase, [this._alias]);
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  late final GeneratedColumn<String> salesId = GeneratedColumn<String>(
    'sales_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sales_header_entity (sales_id) ON DELETE CASCADE',
    ),
  );
  late final GeneratedColumn<int> lineId = GeneratedColumn<int>(
    'line_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> productDescription =
      GeneratedColumn<String>(
        'product_description',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  late final GeneratedColumn<String> packSize = GeneratedColumn<String>(
    'pack_size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> salesUnit = GeneratedColumn<String>(
    'sales_unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> salesPrice = GeneratedColumn<double>(
    'sales_price',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> taxAmount = GeneratedColumn<double>(
    'tax_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<double> lineAmount = GeneratedColumn<double>(
    'line_amount',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> inventDimId = GeneratedColumn<String>(
    'invent_dim_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> transactionDate = GeneratedColumn<String>(
    'transaction_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<String> deviceId = GeneratedColumn<String>(
    'device_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> syncStatus = GeneratedColumn<int>(
    'sync_status',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
    'company_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    salesId,
    lineId,
    itemId,
    productId,
    productName,
    productDescription,
    packSize,
    quantity,
    salesUnit,
    salesPrice,
    taxAmount,
    lineAmount,
    inventDimId,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_line_entity';
  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesLineEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesLineEntityData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      salesId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_id'],
      )!,
      lineId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}line_id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      )!,
      productDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_description'],
      )!,
      packSize: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pack_size'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      )!,
      salesUnit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sales_unit'],
      )!,
      salesPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}sales_price'],
      )!,
      taxAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}tax_amount'],
      )!,
      lineAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}line_amount'],
      )!,
      inventDimId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}invent_dim_id'],
      )!,
      transactionDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transaction_date'],
      )!,
      deviceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}device_id'],
      )!,
      syncStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sync_status'],
      )!,
      companyId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}company_id'],
      )!,
    );
  }

  @override
  SalesLineEntity createAlias(String alias) {
    return SalesLineEntity(attachedDatabase, alias);
  }
}

class SalesLineEntityData extends DataClass
    implements Insertable<SalesLineEntityData> {
  final int id;
  final String salesId;
  final int lineId;
  final String itemId;
  final String productId;
  final String productName;
  final String productDescription;
  final String packSize;
  final double quantity;
  final String salesUnit;
  final double salesPrice;
  final double taxAmount;
  final double lineAmount;
  final String inventDimId;
  final String transactionDate;
  final String deviceId;
  final int syncStatus;
  final int companyId;
  const SalesLineEntityData({
    required this.id,
    required this.salesId,
    required this.lineId,
    required this.itemId,
    required this.productId,
    required this.productName,
    required this.productDescription,
    required this.packSize,
    required this.quantity,
    required this.salesUnit,
    required this.salesPrice,
    required this.taxAmount,
    required this.lineAmount,
    required this.inventDimId,
    required this.transactionDate,
    required this.deviceId,
    required this.syncStatus,
    required this.companyId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['sales_id'] = Variable<String>(salesId);
    map['line_id'] = Variable<int>(lineId);
    map['item_id'] = Variable<String>(itemId);
    map['product_id'] = Variable<String>(productId);
    map['product_name'] = Variable<String>(productName);
    map['product_description'] = Variable<String>(productDescription);
    map['pack_size'] = Variable<String>(packSize);
    map['quantity'] = Variable<double>(quantity);
    map['sales_unit'] = Variable<String>(salesUnit);
    map['sales_price'] = Variable<double>(salesPrice);
    map['tax_amount'] = Variable<double>(taxAmount);
    map['line_amount'] = Variable<double>(lineAmount);
    map['invent_dim_id'] = Variable<String>(inventDimId);
    map['transaction_date'] = Variable<String>(transactionDate);
    map['device_id'] = Variable<String>(deviceId);
    map['sync_status'] = Variable<int>(syncStatus);
    map['company_id'] = Variable<int>(companyId);
    return map;
  }

  SalesLineEntityCompanion toCompanion(bool nullToAbsent) {
    return SalesLineEntityCompanion(
      id: Value(id),
      salesId: Value(salesId),
      lineId: Value(lineId),
      itemId: Value(itemId),
      productId: Value(productId),
      productName: Value(productName),
      productDescription: Value(productDescription),
      packSize: Value(packSize),
      quantity: Value(quantity),
      salesUnit: Value(salesUnit),
      salesPrice: Value(salesPrice),
      taxAmount: Value(taxAmount),
      lineAmount: Value(lineAmount),
      inventDimId: Value(inventDimId),
      transactionDate: Value(transactionDate),
      deviceId: Value(deviceId),
      syncStatus: Value(syncStatus),
      companyId: Value(companyId),
    );
  }

  factory SalesLineEntityData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesLineEntityData(
      id: serializer.fromJson<int>(json['id']),
      salesId: serializer.fromJson<String>(json['salesId']),
      lineId: serializer.fromJson<int>(json['lineId']),
      itemId: serializer.fromJson<String>(json['itemId']),
      productId: serializer.fromJson<String>(json['productId']),
      productName: serializer.fromJson<String>(json['productName']),
      productDescription: serializer.fromJson<String>(
        json['productDescription'],
      ),
      packSize: serializer.fromJson<String>(json['packSize']),
      quantity: serializer.fromJson<double>(json['quantity']),
      salesUnit: serializer.fromJson<String>(json['salesUnit']),
      salesPrice: serializer.fromJson<double>(json['salesPrice']),
      taxAmount: serializer.fromJson<double>(json['taxAmount']),
      lineAmount: serializer.fromJson<double>(json['lineAmount']),
      inventDimId: serializer.fromJson<String>(json['inventDimId']),
      transactionDate: serializer.fromJson<String>(json['transactionDate']),
      deviceId: serializer.fromJson<String>(json['deviceId']),
      syncStatus: serializer.fromJson<int>(json['syncStatus']),
      companyId: serializer.fromJson<int>(json['companyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'salesId': serializer.toJson<String>(salesId),
      'lineId': serializer.toJson<int>(lineId),
      'itemId': serializer.toJson<String>(itemId),
      'productId': serializer.toJson<String>(productId),
      'productName': serializer.toJson<String>(productName),
      'productDescription': serializer.toJson<String>(productDescription),
      'packSize': serializer.toJson<String>(packSize),
      'quantity': serializer.toJson<double>(quantity),
      'salesUnit': serializer.toJson<String>(salesUnit),
      'salesPrice': serializer.toJson<double>(salesPrice),
      'taxAmount': serializer.toJson<double>(taxAmount),
      'lineAmount': serializer.toJson<double>(lineAmount),
      'inventDimId': serializer.toJson<String>(inventDimId),
      'transactionDate': serializer.toJson<String>(transactionDate),
      'deviceId': serializer.toJson<String>(deviceId),
      'syncStatus': serializer.toJson<int>(syncStatus),
      'companyId': serializer.toJson<int>(companyId),
    };
  }

  SalesLineEntityData copyWith({
    int? id,
    String? salesId,
    int? lineId,
    String? itemId,
    String? productId,
    String? productName,
    String? productDescription,
    String? packSize,
    double? quantity,
    String? salesUnit,
    double? salesPrice,
    double? taxAmount,
    double? lineAmount,
    String? inventDimId,
    String? transactionDate,
    String? deviceId,
    int? syncStatus,
    int? companyId,
  }) => SalesLineEntityData(
    id: id ?? this.id,
    salesId: salesId ?? this.salesId,
    lineId: lineId ?? this.lineId,
    itemId: itemId ?? this.itemId,
    productId: productId ?? this.productId,
    productName: productName ?? this.productName,
    productDescription: productDescription ?? this.productDescription,
    packSize: packSize ?? this.packSize,
    quantity: quantity ?? this.quantity,
    salesUnit: salesUnit ?? this.salesUnit,
    salesPrice: salesPrice ?? this.salesPrice,
    taxAmount: taxAmount ?? this.taxAmount,
    lineAmount: lineAmount ?? this.lineAmount,
    inventDimId: inventDimId ?? this.inventDimId,
    transactionDate: transactionDate ?? this.transactionDate,
    deviceId: deviceId ?? this.deviceId,
    syncStatus: syncStatus ?? this.syncStatus,
    companyId: companyId ?? this.companyId,
  );
  SalesLineEntityData copyWithCompanion(SalesLineEntityCompanion data) {
    return SalesLineEntityData(
      id: data.id.present ? data.id.value : this.id,
      salesId: data.salesId.present ? data.salesId.value : this.salesId,
      lineId: data.lineId.present ? data.lineId.value : this.lineId,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      productId: data.productId.present ? data.productId.value : this.productId,
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      productDescription: data.productDescription.present
          ? data.productDescription.value
          : this.productDescription,
      packSize: data.packSize.present ? data.packSize.value : this.packSize,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      salesUnit: data.salesUnit.present ? data.salesUnit.value : this.salesUnit,
      salesPrice: data.salesPrice.present
          ? data.salesPrice.value
          : this.salesPrice,
      taxAmount: data.taxAmount.present ? data.taxAmount.value : this.taxAmount,
      lineAmount: data.lineAmount.present
          ? data.lineAmount.value
          : this.lineAmount,
      inventDimId: data.inventDimId.present
          ? data.inventDimId.value
          : this.inventDimId,
      transactionDate: data.transactionDate.present
          ? data.transactionDate.value
          : this.transactionDate,
      deviceId: data.deviceId.present ? data.deviceId.value : this.deviceId,
      syncStatus: data.syncStatus.present
          ? data.syncStatus.value
          : this.syncStatus,
      companyId: data.companyId.present ? data.companyId.value : this.companyId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SalesLineEntityData(')
          ..write('id: $id, ')
          ..write('salesId: $salesId, ')
          ..write('lineId: $lineId, ')
          ..write('itemId: $itemId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('productDescription: $productDescription, ')
          ..write('packSize: $packSize, ')
          ..write('quantity: $quantity, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('salesPrice: $salesPrice, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('lineAmount: $lineAmount, ')
          ..write('inventDimId: $inventDimId, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('deviceId: $deviceId, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    salesId,
    lineId,
    itemId,
    productId,
    productName,
    productDescription,
    packSize,
    quantity,
    salesUnit,
    salesPrice,
    taxAmount,
    lineAmount,
    inventDimId,
    transactionDate,
    deviceId,
    syncStatus,
    companyId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesLineEntityData &&
          other.id == this.id &&
          other.salesId == this.salesId &&
          other.lineId == this.lineId &&
          other.itemId == this.itemId &&
          other.productId == this.productId &&
          other.productName == this.productName &&
          other.productDescription == this.productDescription &&
          other.packSize == this.packSize &&
          other.quantity == this.quantity &&
          other.salesUnit == this.salesUnit &&
          other.salesPrice == this.salesPrice &&
          other.taxAmount == this.taxAmount &&
          other.lineAmount == this.lineAmount &&
          other.inventDimId == this.inventDimId &&
          other.transactionDate == this.transactionDate &&
          other.deviceId == this.deviceId &&
          other.syncStatus == this.syncStatus &&
          other.companyId == this.companyId);
}

class SalesLineEntityCompanion extends UpdateCompanion<SalesLineEntityData> {
  final Value<int> id;
  final Value<String> salesId;
  final Value<int> lineId;
  final Value<String> itemId;
  final Value<String> productId;
  final Value<String> productName;
  final Value<String> productDescription;
  final Value<String> packSize;
  final Value<double> quantity;
  final Value<String> salesUnit;
  final Value<double> salesPrice;
  final Value<double> taxAmount;
  final Value<double> lineAmount;
  final Value<String> inventDimId;
  final Value<String> transactionDate;
  final Value<String> deviceId;
  final Value<int> syncStatus;
  final Value<int> companyId;
  const SalesLineEntityCompanion({
    this.id = const Value.absent(),
    this.salesId = const Value.absent(),
    this.lineId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.productDescription = const Value.absent(),
    this.packSize = const Value.absent(),
    this.quantity = const Value.absent(),
    this.salesUnit = const Value.absent(),
    this.salesPrice = const Value.absent(),
    this.taxAmount = const Value.absent(),
    this.lineAmount = const Value.absent(),
    this.inventDimId = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.deviceId = const Value.absent(),
    this.syncStatus = const Value.absent(),
    this.companyId = const Value.absent(),
  });
  SalesLineEntityCompanion.insert({
    this.id = const Value.absent(),
    required String salesId,
    required int lineId,
    required String itemId,
    required String productId,
    required String productName,
    required String productDescription,
    required String packSize,
    required double quantity,
    required String salesUnit,
    required double salesPrice,
    required double taxAmount,
    required double lineAmount,
    required String inventDimId,
    required String transactionDate,
    required String deviceId,
    required int syncStatus,
    required int companyId,
  }) : salesId = Value(salesId),
       lineId = Value(lineId),
       itemId = Value(itemId),
       productId = Value(productId),
       productName = Value(productName),
       productDescription = Value(productDescription),
       packSize = Value(packSize),
       quantity = Value(quantity),
       salesUnit = Value(salesUnit),
       salesPrice = Value(salesPrice),
       taxAmount = Value(taxAmount),
       lineAmount = Value(lineAmount),
       inventDimId = Value(inventDimId),
       transactionDate = Value(transactionDate),
       deviceId = Value(deviceId),
       syncStatus = Value(syncStatus),
       companyId = Value(companyId);
  static Insertable<SalesLineEntityData> custom({
    Expression<int>? id,
    Expression<String>? salesId,
    Expression<int>? lineId,
    Expression<String>? itemId,
    Expression<String>? productId,
    Expression<String>? productName,
    Expression<String>? productDescription,
    Expression<String>? packSize,
    Expression<double>? quantity,
    Expression<String>? salesUnit,
    Expression<double>? salesPrice,
    Expression<double>? taxAmount,
    Expression<double>? lineAmount,
    Expression<String>? inventDimId,
    Expression<String>? transactionDate,
    Expression<String>? deviceId,
    Expression<int>? syncStatus,
    Expression<int>? companyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (salesId != null) 'sales_id': salesId,
      if (lineId != null) 'line_id': lineId,
      if (itemId != null) 'item_id': itemId,
      if (productId != null) 'product_id': productId,
      if (productName != null) 'product_name': productName,
      if (productDescription != null) 'product_description': productDescription,
      if (packSize != null) 'pack_size': packSize,
      if (quantity != null) 'quantity': quantity,
      if (salesUnit != null) 'sales_unit': salesUnit,
      if (salesPrice != null) 'sales_price': salesPrice,
      if (taxAmount != null) 'tax_amount': taxAmount,
      if (lineAmount != null) 'line_amount': lineAmount,
      if (inventDimId != null) 'invent_dim_id': inventDimId,
      if (transactionDate != null) 'transaction_date': transactionDate,
      if (deviceId != null) 'device_id': deviceId,
      if (syncStatus != null) 'sync_status': syncStatus,
      if (companyId != null) 'company_id': companyId,
    });
  }

  SalesLineEntityCompanion copyWith({
    Value<int>? id,
    Value<String>? salesId,
    Value<int>? lineId,
    Value<String>? itemId,
    Value<String>? productId,
    Value<String>? productName,
    Value<String>? productDescription,
    Value<String>? packSize,
    Value<double>? quantity,
    Value<String>? salesUnit,
    Value<double>? salesPrice,
    Value<double>? taxAmount,
    Value<double>? lineAmount,
    Value<String>? inventDimId,
    Value<String>? transactionDate,
    Value<String>? deviceId,
    Value<int>? syncStatus,
    Value<int>? companyId,
  }) {
    return SalesLineEntityCompanion(
      id: id ?? this.id,
      salesId: salesId ?? this.salesId,
      lineId: lineId ?? this.lineId,
      itemId: itemId ?? this.itemId,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productDescription: productDescription ?? this.productDescription,
      packSize: packSize ?? this.packSize,
      quantity: quantity ?? this.quantity,
      salesUnit: salesUnit ?? this.salesUnit,
      salesPrice: salesPrice ?? this.salesPrice,
      taxAmount: taxAmount ?? this.taxAmount,
      lineAmount: lineAmount ?? this.lineAmount,
      inventDimId: inventDimId ?? this.inventDimId,
      transactionDate: transactionDate ?? this.transactionDate,
      deviceId: deviceId ?? this.deviceId,
      syncStatus: syncStatus ?? this.syncStatus,
      companyId: companyId ?? this.companyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (salesId.present) {
      map['sales_id'] = Variable<String>(salesId.value);
    }
    if (lineId.present) {
      map['line_id'] = Variable<int>(lineId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (productDescription.present) {
      map['product_description'] = Variable<String>(productDescription.value);
    }
    if (packSize.present) {
      map['pack_size'] = Variable<String>(packSize.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (salesUnit.present) {
      map['sales_unit'] = Variable<String>(salesUnit.value);
    }
    if (salesPrice.present) {
      map['sales_price'] = Variable<double>(salesPrice.value);
    }
    if (taxAmount.present) {
      map['tax_amount'] = Variable<double>(taxAmount.value);
    }
    if (lineAmount.present) {
      map['line_amount'] = Variable<double>(lineAmount.value);
    }
    if (inventDimId.present) {
      map['invent_dim_id'] = Variable<String>(inventDimId.value);
    }
    if (transactionDate.present) {
      map['transaction_date'] = Variable<String>(transactionDate.value);
    }
    if (deviceId.present) {
      map['device_id'] = Variable<String>(deviceId.value);
    }
    if (syncStatus.present) {
      map['sync_status'] = Variable<int>(syncStatus.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesLineEntityCompanion(')
          ..write('id: $id, ')
          ..write('salesId: $salesId, ')
          ..write('lineId: $lineId, ')
          ..write('itemId: $itemId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('productDescription: $productDescription, ')
          ..write('packSize: $packSize, ')
          ..write('quantity: $quantity, ')
          ..write('salesUnit: $salesUnit, ')
          ..write('salesPrice: $salesPrice, ')
          ..write('taxAmount: $taxAmount, ')
          ..write('lineAmount: $lineAmount, ')
          ..write('inventDimId: $inventDimId, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('deviceId: $deviceId, ')
          ..write('syncStatus: $syncStatus, ')
          ..write('companyId: $companyId')
          ..write(')'))
        .toString();
  }
}

class DatabaseAtV1 extends GeneratedDatabase {
  DatabaseAtV1(QueryExecutor e) : super(e);
  late final SettingEntity settingEntity = SettingEntity(this);
  late final MerchandiserCustomerEntity merchandiserCustomerEntity =
      MerchandiserCustomerEntity(this);
  late final SalesCustomerEntity salesCustomerEntity = SalesCustomerEntity(
    this,
  );
  late final SearchMerchandiserCustomerHistoryEntity
  searchMerchandiserCustomerHistoryEntity =
      SearchMerchandiserCustomerHistoryEntity(this);
  late final SearchSalesCustomerHistoryEntity searchSalesCustomerHistoryEntity =
      SearchSalesCustomerHistoryEntity(this);
  late final SearchProductHistoryEntity searchProductHistoryEntity =
      SearchProductHistoryEntity(this);
  late final CustomerAddressEntity customerAddressEntity =
      CustomerAddressEntity(this);
  late final ProductEntity productEntity = ProductEntity(this);
  late final ProductPriceEntity productPriceEntity = ProductPriceEntity(this);
  late final SalesHeaderEntity salesHeaderEntity = SalesHeaderEntity(this);
  late final SalesLineEntity salesLineEntity = SalesLineEntity(this);
  late final Index customerId = Index(
    'customer_id',
    'CREATE INDEX customer_id ON customer_address_entity (customer_id)',
  );
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
    searchProductHistoryEntity,
    customerAddressEntity,
    productEntity,
    productPriceEntity,
    salesHeaderEntity,
    salesLineEntity,
    customerId,
  ];
  @override
  int get schemaVersion => 1;
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
