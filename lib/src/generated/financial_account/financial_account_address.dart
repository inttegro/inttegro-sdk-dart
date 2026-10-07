part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountAddress implements _InttegroValue {
  final String city;
  final String country;
  final String line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String region;
  const FinancialAccountAddress({
    required this.city,
    required this.country,
    required this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    required this.region,
  });
  factory FinancialAccountAddress.fromJson(Map<String, Object?> json) =>
      FinancialAccountAddress(
        city: json["city"] as String,
        country: json["country"] as String,
        line1: json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null ? null : json["phone"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "city": _encodeValue(city),
        "country": _encodeValue(country),
        "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "region": _encodeValue(region),
      };
}
