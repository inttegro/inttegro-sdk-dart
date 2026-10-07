part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerUpdateInputAddress implements _InttegroValue {
  final String? city;
  final String? country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String? region;
  const FinancialAccountOwnerUpdateInputAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    this.region,
  });
  factory FinancialAccountOwnerUpdateInputAddress.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountOwnerUpdateInputAddress(
        city: json["city"] == null ? null : json["city"] as String,
        country: json["country"] == null ? null : json["country"] as String,
        line1: json["line_1"] == null ? null : json["line_1"] as String,
        line2: json["line_2"] == null ? null : json["line_2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null ? null : json["phone"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": _encodeValue(city),
        if (country != null) "country": _encodeValue(country),
        if (line1 != null) "line_1": _encodeValue(line1),
        if (line2 != null) "line_2": _encodeValue(line2),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (postCode != null) "post_code": _encodeValue(postCode),
        if (region != null) "region": _encodeValue(region),
      };
}
