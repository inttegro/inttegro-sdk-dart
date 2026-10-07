part of '../../chime.dart';

/// The resolved recipient of a Chime message.
///
/// Exposes [type], [name], [phone], and [email].
final class Recipient implements InttegroValue {
  final RecipientType type;
  final String? name;
  final RecipientPhone? phone;
  final RecipientEmail? email;
  const Recipient({required this.type, this.name, this.phone, this.email});
  factory Recipient.fromJson(Map<String, Object?> json) => Recipient(
        type: RecipientType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null
            ? null
            : RecipientPhone.fromJson(
                (json["phone"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : RecipientEmail.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (name != null) "name": encodeValue(name),
        if (phone != null) "phone": encodeValue(phone),
        if (email != null) "email": encodeValue(email),
      };
}
