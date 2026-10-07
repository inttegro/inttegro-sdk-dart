part of '../../order.dart';

/// A postal or contact address attached to an order.
///
/// Exposes [name], [phoneNumber], [line1], and [line2], among other contract
/// fields.
final class Address implements InttegroValue {
  final String? name;
  final String? phoneNumber;
  final String? line1;
  final String? line2;
  final String? city;
  final String? region;
  final String? postCode;
  final String country;
  const Address({
    this.name,
    this.phoneNumber,
    this.line1,
    this.line2,
    this.city,
    this.region,
    this.postCode,
    required this.country,
  });
  factory Address.fromJson(Map<String, Object?> json) => Address(
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
        if (name != null) "name": encodeValue(name),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (line1 != null) "line1": encodeValue(line1),
        if (line2 != null) "line2": encodeValue(line2),
        if (city != null) "city": encodeValue(city),
        if (region != null) "region": encodeValue(region),
        if (postCode != null) "post_code": encodeValue(postCode),
        "country": encodeValue(country),
      };
}
