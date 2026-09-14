part of '../inttegro.dart';

const int _customDataMaxKeyBytes = 256;
const int _customDataMaxBytes = 25 * 1024;

/// An immutable collection of merchant-defined string values.
///
/// Use [set] and [remove] to derive an updated value. Keys and the encoded
/// collection are validated before a value can reach the API.
final class CustomData implements _InttegroValue {
  final Map<String, String> _values;

  CustomData([Map<String, String> values = const {}])
      : _values = Map.unmodifiable(_validatedCustomData(values));

  factory CustomData.fromJson(Object? json) => CustomData(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(key, value as String),
            ),
      );

  Map<String, String> get values => Map.unmodifiable(_values);
  String? operator [](String key) => _values[key];
  bool containsKey(String key) => _values.containsKey(key);
  bool get isEmpty => _values.isEmpty;
  int get length => _values.length;

  CustomData set(String key, String value) =>
      CustomData({..._values, key: value});

  CustomData remove(String key) {
    final next = Map<String, String>.of(_values)..remove(key);
    return CustomData(next);
  }

  @override
  Map<String, String> toJson() => Map.of(_values);
}

/// Immutable merchant-defined JSON values accepted by create operations.
final class CustomDataInput implements _InttegroValue {
  final Map<String, Object?> _values;

  CustomDataInput([Map<String, Object?> values = const {}])
      : _values = Map.unmodifiable(_validatedCustomDataInput(values));

  factory CustomDataInput.fromJson(Object? json) =>
      CustomDataInput((json as Map).cast<String, Object?>());

  Map<String, Object?> get values => Map.unmodifiable(_values);
  Object? operator [](String key) => _values[key];

  CustomDataInput set(String key, Object? value) =>
      CustomDataInput({..._values, key: value});

  CustomDataInput remove(String key) {
    final next = Map<String, Object?>.of(_values)..remove(key);
    return CustomDataInput(next);
  }

  @override
  Map<String, Object?> toJson() => Map.of(_values);
}

/// A custom-data update. A `null` value explicitly removes the corresponding key.
final class CustomDataPatch implements _InttegroValue {
  final Map<String, Object?> _changes;

  CustomDataPatch([Map<String, Object?> changes = const {}])
      : _changes = Map.unmodifiable(_validatedCustomDataInput(changes));

  factory CustomDataPatch.fromJson(Object? json) =>
      CustomDataPatch((json as Map).cast<String, Object?>());

  Map<String, Object?> get changes => Map.unmodifiable(_changes);

  CustomDataPatch set(String key, Object value) =>
      CustomDataPatch({..._changes, key: value});

  CustomDataPatch unset(String key) =>
      CustomDataPatch({..._changes, key: null});

  CustomDataPatch removeChange(String key) {
    final next = Map<String, Object?>.of(_changes)..remove(key);
    return CustomDataPatch(next);
  }

  @override
  Map<String, Object?> toJson() => Map.of(_changes);
}

/// An intentionally open JSON object whose schema belongs to an external system.
final class JsonData implements _InttegroValue {
  final Map<String, Object?> _values;

  JsonData([Map<String, Object?> values = const {}])
      : _values = Map.unmodifiable(_normalizeJsonMap(values));

  factory JsonData.fromJson(Object? json) =>
      JsonData((json as Map).cast<String, Object?>());

  Map<String, Object?> get values => Map.unmodifiable(_values);
  Object? operator [](String key) => _values[key];

  JsonData set(String key, Object? value) => JsonData({..._values, key: value});

  JsonData remove(String key) {
    final next = Map<String, Object?>.of(_values)..remove(key);
    return JsonData(next);
  }

  @override
  Map<String, Object?> toJson() => Map.of(_values);
}

/// Immutable metadata attached to a file or upload request.
final class FileMetadata implements _InttegroValue {
  final Map<String, String> _values;

  FileMetadata([Map<String, String> values = const {}])
      : _values = Map.unmodifiable(values);

  factory FileMetadata.fromJson(Object? json) => FileMetadata(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(key, value as String),
            ),
      );

  Map<String, String> get values => Map.unmodifiable(_values);
  String? operator [](String key) => _values[key];
  FileMetadata set(String key, String value) =>
      FileMetadata({..._values, key: value});

  FileMetadata remove(String key) {
    final next = Map<String, String>.of(_values)..remove(key);
    return FileMetadata(next);
  }

  @override
  Map<String, String> toJson() => Map.of(_values);
}

/// Financial accounts configured to receive payouts in supported currencies.
final class PayoutDestinations implements _InttegroValue {
  /// Financial account that receives Ghana cedi payouts.
  final String? ghs;

  const PayoutDestinations({this.ghs});

  factory PayoutDestinations.fromJson(Object? json) {
    final values = (json as Map).cast<String, Object?>();
    return PayoutDestinations(ghs: values['ghs'] as String?);
  }

  @override
  Map<String, Object?> toJson() => {
        if (ghs != null) 'ghs': ghs,
      };
}

/// Immutable message headers keyed by header name.
final class MessageHeaders implements _InttegroValue {
  final Map<String, String> _values;
  MessageHeaders([Map<String, String> values = const {}])
      : _values = Map.unmodifiable(values);
  factory MessageHeaders.fromJson(Object? json) => MessageHeaders(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(key, value as String),
            ),
      );
  Map<String, String> get values => Map.unmodifiable(_values);
  String? operator [](String key) => _values[key];
  MessageHeaders set(String key, String value) =>
      MessageHeaders({..._values, key: value});
  MessageHeaders remove(String key) {
    final next = Map<String, String>.of(_values)..remove(key);
    return MessageHeaders(next);
  }

  @override
  Map<String, String> toJson() => Map.of(_values);
}

/// Immutable custom product-dimension details.
final class ProductDimensionDetails implements _InttegroValue {
  final Map<String, String> _values;
  ProductDimensionDetails([Map<String, String> values = const {}])
      : _values = Map.unmodifiable(values);
  factory ProductDimensionDetails.fromJson(Object? json) =>
      ProductDimensionDetails(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(key, value as String),
            ),
      );
  Map<String, String> get values => Map.unmodifiable(_values);
  String? operator [](String key) => _values[key];
  ProductDimensionDetails set(String key, String value) =>
      ProductDimensionDetails({..._values, key: value});
  ProductDimensionDetails remove(String key) {
    final next = Map<String, String>.of(_values)..remove(key);
    return ProductDimensionDetails(next);
  }

  @override
  Map<String, String> toJson() => Map.of(_values);
}

/// Immutable selected variant values keyed by attribute name.
final class VariantValues implements _InttegroValue {
  final Map<String, String> _values;
  VariantValues([Map<String, String> values = const {}])
      : _values = Map.unmodifiable(values);
  factory VariantValues.fromJson(Object? json) => VariantValues(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(key, value as String),
            ),
      );
  Map<String, String> get values => Map.unmodifiable(_values);
  String? operator [](String key) => _values[key];
  VariantValues set(String key, String value) =>
      VariantValues({..._values, key: value});
  VariantValues remove(String key) {
    final next = Map<String, String>.of(_values)..remove(key);
    return VariantValues(next);
  }

  @override
  Map<String, String> toJson() => Map.of(_values);
}

/// Customer balances keyed by currency.
final class CustomerBalance implements _InttegroValue {
  final Map<String, CustomerBalanceValue> _values;
  CustomerBalance([Map<String, CustomerBalanceValue> values = const {}])
      : _values = Map.unmodifiable(values);
  factory CustomerBalance.fromJson(Object? json) => CustomerBalance(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(
                key,
                CustomerBalanceValue.fromJson(
                    (value as Map).cast<String, Object?>()),
              ),
            ),
      );
  Map<String, CustomerBalanceValue> get values => Map.unmodifiable(_values);
  CustomerBalanceValue? operator [](String currency) => _values[currency];
  @override
  Map<String, Object?> toJson() =>
      _values.map((key, value) => MapEntry(key, _encodeValue(value)));
}

/// Country capabilities keyed by lowercase country code.
final class CountrySpecifications implements _InttegroValue {
  final Map<String, CountrySpecification> _values;
  CountrySpecifications([Map<String, CountrySpecification> values = const {}])
      : _values = Map.unmodifiable(values);
  factory CountrySpecifications.fromJson(Object? json) => CountrySpecifications(
        (json as Map).cast<String, Object?>().map(
              (key, value) => MapEntry(
                key,
                CountrySpecification.fromJson(
                    (value as Map).cast<String, Object?>()),
              ),
            ),
      );
  Map<String, CountrySpecification> get values => Map.unmodifiable(_values);
  CountrySpecification? operator [](String countryCode) => _values[countryCode];
  @override
  Map<String, Object?> toJson() =>
      _values.map((key, value) => MapEntry(key, _encodeValue(value)));
}

/// A Dosh financial account. The object is intentionally empty in API v1.
final class DoshAccount implements _InttegroValue {
  const DoshAccount();
  factory DoshAccount.fromJson(Object? json) => const DoshAccount();
  @override
  Map<String, Object?> toJson() => const {};
}

/// The request recorded for a financial-account verification.
final class FinancialAccountVerificationRequest implements _InttegroValue {
  final String? id;
  final String? mechanism;
  final String? type;
  const FinancialAccountVerificationRequest({
    this.id,
    this.mechanism,
    this.type,
  });
  factory FinancialAccountVerificationRequest.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return FinancialAccountVerificationRequest(
      id: json['id'] as String?,
      mechanism: json['mechanism'] as String?,
      type: json['type'] as String?,
    );
  }
  @override
  Map<String, Object?> toJson() => {
        if (id != null) 'id': id,
        if (mechanism != null) 'mechanism': mechanism,
        if (type != null) 'type': type,
      };
}

/// Verification state attached to a financial account.
final class FinancialAccountVerification implements _InttegroValue {
  final DateTime initiatedAt;
  final DateTime? completedAt;
  final FinancialAccountVerificationRequest request;
  const FinancialAccountVerification({
    required this.initiatedAt,
    this.completedAt,
    required this.request,
  });
  factory FinancialAccountVerification.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return FinancialAccountVerification(
      initiatedAt: _decodeDateTime(json['initiated_at']),
      completedAt: json['completed_at'] == null
          ? null
          : _decodeDateTime(json['completed_at']),
      request: FinancialAccountVerificationRequest.fromJson(json['request']),
    );
  }
  @override
  Map<String, Object?> toJson() => {
        'initiated_at': _encodeValue(initiatedAt),
        if (completedAt != null) 'completed_at': _encodeValue(completedAt),
        'request': _encodeValue(request),
      };
}

/// An order's payout destination.
final class OrderPayoutDestination implements _InttegroValue {
  final String financialAccountId;
  const OrderPayoutDestination({required this.financialAccountId});
  factory OrderPayoutDestination.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return OrderPayoutDestination(
      financialAccountId: json['financial_account_id'] as String,
    );
  }
  @override
  Map<String, Object?> toJson() => {'financial_account_id': financialAccountId};
}

/// Payout settings captured on an order.
final class OrderPayoutSettings implements _InttegroValue {
  final OrderPayoutDestination? destination;
  final bool? enableFx;
  const OrderPayoutSettings({this.destination, this.enableFx});
  factory OrderPayoutSettings.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return OrderPayoutSettings(
      destination: json['destination'] == null
          ? null
          : OrderPayoutDestination.fromJson(json['destination']),
      enableFx: json['enable_fx'] as bool?,
    );
  }
  @override
  Map<String, Object?> toJson() => {
        if (destination != null) 'destination': _encodeValue(destination),
        if (enableFx != null) 'enable_fx': enableFx,
      };
}

/// A delivery address captured on an order.
final class Address implements _InttegroValue {
  final String name;
  final String phoneNumber;
  final String line1;
  final String? line2;
  final String town;
  final String? region;
  final String? district;
  final String country;
  final String? postCode;
  const Address({
    required this.name,
    required this.phoneNumber,
    required this.line1,
    this.line2,
    required this.town,
    this.region,
    this.district,
    required this.country,
    this.postCode,
  });
  factory Address.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return Address(
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String,
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      town: json['town'] as String,
      region: json['region'] as String?,
      district: json['district'] as String?,
      country: json['country'] as String,
      postCode: json['post_code'] as String?,
    );
  }
  @override
  Map<String, Object?> toJson() => {
        'name': name,
        'phone_number': phoneNumber,
        'line1': line1,
        if (line2 != null) 'line2': line2,
        'town': town,
        if (region != null) 'region': region,
        if (district != null) 'district': district,
        'country': country,
        if (postCode != null) 'post_code': postCode,
      };
}

/// Shipping details captured on an order.
final class Shipping implements _InttegroValue {
  final Address address;
  const Shipping({required this.address});
  factory Shipping.fromJson(Object? value) {
    final json = (value as Map).cast<String, Object?>();
    return Shipping(address: Address.fromJson(json['address']));
  }
  @override
  Map<String, Object?> toJson() => {'address': _encodeValue(address)};
}

Map<String, String> _validatedCustomData(Map<String, String> values) {
  for (final key in values.keys) {
    if (utf8.encode(key).length > _customDataMaxKeyBytes) {
      throw ArgumentError.value(key, 'key', 'must be at most 256 UTF-8 bytes');
    }
  }
  if (utf8.encode(jsonEncode(values)).length > _customDataMaxBytes) {
    throw ArgumentError.value(
      values,
      'values',
      'must encode to at most 25 KiB',
    );
  }
  return Map.of(values);
}

Map<String, Object?> _validatedCustomDataInput(Map<String, Object?> values) {
  for (final key in values.keys) {
    if (utf8.encode(key).length > _customDataMaxKeyBytes) {
      throw ArgumentError.value(key, 'key', 'must be at most 256 UTF-8 bytes');
    }
  }
  final normalized = _normalizeJsonMap(values);
  if (utf8.encode(jsonEncode(normalized)).length > _customDataMaxBytes) {
    throw ArgumentError.value(
      values,
      'values',
      'must encode to at most 25 KiB',
    );
  }
  return normalized;
}

Map<String, Object?> _normalizeJsonMap(Map<String, Object?> values) =>
    values.map((key, value) => MapEntry(key, _normalizeJsonValue(value)));

Object? _normalizeJsonValue(Object? value) {
  if (value == null || value is String || value is bool || value is num) {
    return value;
  }
  if (value is _InttegroValue) {
    return _normalizeJsonValue(value.toJson());
  }
  if (value is List) {
    return List<Object?>.unmodifiable(value.map(_normalizeJsonValue));
  }
  if (value is Map) {
    return Map<String, Object?>.unmodifiable(
      value.map(
        (key, item) => MapEntry(key.toString(), _normalizeJsonValue(item)),
      ),
    );
  }
  throw ArgumentError.value(value, 'value', 'must be JSON encodable');
}
