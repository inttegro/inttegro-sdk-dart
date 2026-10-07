part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeRecipient implements _InttegroValue {
  final ChimeRecipientType type;
  final String? name;
  final ChimeRecipientPhone? phone;
  final ChimeRecipientEmail? email;
  const ChimeRecipient({required this.type, this.name, this.phone, this.email});
  factory ChimeRecipient.fromJson(Map<String, Object?> json) => ChimeRecipient(
        type: ChimeRecipientType.fromJson(json["type"]),
        name: json["name"] == null ? null : json["name"] as String,
        phone: json["phone"] == null
            ? null
            : ChimeRecipientPhone.fromJson(
                (json["phone"] as Map).cast<String, Object?>(),
              ),
        email: json["email"] == null
            ? null
            : ChimeRecipientEmail.fromJson(
                (json["email"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (name != null) "name": _encodeValue(name),
        if (phone != null) "phone": _encodeValue(phone),
        if (email != null) "email": _encodeValue(email),
      };
}
