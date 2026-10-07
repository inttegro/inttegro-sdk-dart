part of '../../financial_account.dart';

/// A postal or contact address attached to a financial account.
///
/// Exposes [city], [country], [line1], and [line2], among other contract
/// fields.
final class Address implements InttegroValue {
  final String city;
  final String country;
  final String line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String region;
  const Address({
    required this.city,
    required this.country,
    required this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    required this.region,
  });
  factory Address.fromJson(Map<String, Object?> json) => Address(
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
        "city": encodeValue(city),
        "country": encodeValue(country),
        "line_1": encodeValue(line1),
        if (line2 != null) "line_2": encodeValue(line2),
        if (name != null) "name": encodeValue(name),
        if (phone != null) "phone": encodeValue(phone),
        if (postCode != null) "post_code": encodeValue(postCode),
        "region": encodeValue(region),
      };
}
