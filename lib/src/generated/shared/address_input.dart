part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class AddressInput implements _InttegroValue {
  final String? line2;
  final String? region;
  final String? district;
  final String? postCode;
  final String name;
  final String phoneNumber;
  final String line1;
  final String town;
  final String country;
  const AddressInput({
    this.line2,
    this.region,
    this.district,
    this.postCode,
    required this.name,
    required this.phoneNumber,
    required this.line1,
    required this.town,
    required this.country,
  });
  factory AddressInput.fromJson(Map<String, Object?> json) => AddressInput(
        line2: json["line2"] == null ? null : json["line2"] as String,
        region: json["region"] == null ? null : json["region"] as String,
        district: json["district"] == null ? null : json["district"] as String,
        postCode:
            json["post_code"] == null ? null : json["post_code"] as String,
        name: json["name"] as String,
        phoneNumber: json["phone_number"] as String,
        line1: json["line1"] as String,
        town: json["town"] as String,
        country: json["country"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (line2 != null) "line2": _encodeValue(line2),
        if (region != null) "region": _encodeValue(region),
        if (district != null) "district": _encodeValue(district),
        if (postCode != null) "post_code": _encodeValue(postCode),
        "name": _encodeValue(name),
        "phone_number": _encodeValue(phoneNumber),
        "line1": _encodeValue(line1),
        "town": _encodeValue(town),
        "country": _encodeValue(country),
      };
}
