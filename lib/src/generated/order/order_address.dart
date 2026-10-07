part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderAddress implements _InttegroValue {
  final String? name;
  final String? phoneNumber;
  final String? line1;
  final String? line2;
  final String? city;
  final String? region;
  final String? postCode;
  final String country;
  const OrderAddress({
    this.name,
    this.phoneNumber,
    this.line1,
    this.line2,
    this.city,
    this.region,
    this.postCode,
    required this.country,
  });
  factory OrderAddress.fromJson(Map<String, Object?> json) => OrderAddress(
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        city: json["city"] == null ? null : json["city"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (line1 != null) "line1": _encodeValue(line1),
        if (line2 != null) "line2": _encodeValue(line2),
        if (city != null) "city": _encodeValue(city),
        if (region != null) "region": _encodeValue(region),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "country": _encodeValue(country),
      };
}
