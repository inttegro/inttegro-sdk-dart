part of '../../payment_method.dart';

/// Address fields supplied for a payment-method owner.
final class OwnerInputAddress implements InttegroValue {
  final String? city;
  final String? line1;
  final String? line2;
  final String? name;
  final String? phoneNumber;
  final String? postCode;
  final String? region;
  final String country;
  const OwnerInputAddress({
    this.city,
    this.line1,
    this.line2,
    this.name,
    this.phoneNumber,
    this.postCode,
    this.region,
    required this.country,
  });
  factory OwnerInputAddress.fromJson(Map<String, Object?> json) =>
      OwnerInputAddress(
        city: json["city"] == null ? null : json["city"] as String,
        line1: json["line1"] == null ? null : json["line1"] as String,
        line2: json["line2"] == null ? null : json["line2"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        phoneNumber: json["phone_number"] == null
            ? null
            : json["phone_number"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (city != null) "city": encodeValue(city),
        if (line1 != null) "line1": encodeValue(line1),
        if (line2 != null) "line2": encodeValue(line2),
        if (name != null) "name": encodeValue(name),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (postCode != null) "post_code": encodeValue(postCode),
        if (region != null) "region": encodeValue(region),
        "country": encodeValue(country),
      };
}
