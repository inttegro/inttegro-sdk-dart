part of '../../chime.dart';

/// Email recipient fields accepted by the Chime API.
///
/// Carries [name], [email], and [type].
final class EmailRecipientInput implements InttegroValue {
  final String? name;
  final EmailAddressInput email;
  final RecipientType type;
  const EmailRecipientInput({
    this.name,
    required this.email,
    required this.type,
  });
  factory EmailRecipientInput.fromJson(
    Map<String, Object?> json,
  ) =>
      EmailRecipientInput(
        name: json["name"] == null ? null : json["name"] as String,
        email: EmailAddressInput.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        type: RecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        "email": encodeValue(email),
        "type": encodeValue(type),
      };
}
