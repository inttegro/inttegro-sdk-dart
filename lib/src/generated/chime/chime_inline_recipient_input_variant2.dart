part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant2 implements _InttegroValue {
  final String? name;
  final ChimeInlineRecipientInputVariant2Email email;
  final ChimeRecipientType type;
  const ChimeInlineRecipientInputVariant2({
    this.name,
    required this.email,
    required this.type,
  });
  factory ChimeInlineRecipientInputVariant2.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant2(
        name: json["name"] == null ? null : json["name"] as String,
        email: ChimeInlineRecipientInputVariant2Email.fromJson(
          (json["email"] as Map).cast<String, Object?>(),
        ),
        type: ChimeRecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "email": _encodeValue(email),
        "type": _encodeValue(type),
      };
}
