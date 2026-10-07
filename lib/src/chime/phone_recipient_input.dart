part of '../../chime.dart';

/// Phone recipient fields accepted by the Chime API.
///
/// Carries [name], [phone], and [type].
final class PhoneRecipientInput implements InttegroValue {
  final String? name;
  final PhoneNumberInput phone;
  final RecipientType type;
  const PhoneRecipientInput({
    this.name,
    required this.phone,
    required this.type,
  });
  factory PhoneRecipientInput.fromJson(
    Map<String, Object?> json,
  ) =>
      PhoneRecipientInput(
        name: json["name"] == null ? null : json["name"] as String,
        phone: PhoneNumberInput.fromJson(
          (json["phone"] as Map).cast<String, Object?>(),
        ),
        type: RecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        "phone": encodeValue(phone),
        "type": encodeValue(type),
      };
}
