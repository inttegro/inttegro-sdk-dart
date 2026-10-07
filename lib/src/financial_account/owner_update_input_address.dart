part of '../../financial_account.dart';

/// Replacement address fields for a financial-account owner.
final class OwnerUpdateInputAddress implements InttegroValue {
  final String? city;
  final String? country;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phone;
  final String? postCode;
  final String? region;
  const OwnerUpdateInputAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.name,
    this.phone,
    this.postCode,
    this.region,
  });
  factory OwnerUpdateInputAddress.fromJson(
    Map<String, Object?> json,
  ) =>
      OwnerUpdateInputAddress(
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
        if (city != null) "city": encodeValue(city),
        if (country != null) "country": encodeValue(country),
        if (line1 != null) "line_1": encodeValue(line1),
        if (line2 != null) "line_2": encodeValue(line2),
        if (name != null) "name": encodeValue(name),
        if (phone != null) "phone": encodeValue(phone),
        if (postCode != null) "post_code": encodeValue(postCode),
        if (region != null) "region": encodeValue(region),
      };
}
