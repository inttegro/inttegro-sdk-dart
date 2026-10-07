part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant1 implements _InttegroValue {
  final String? name;
  final ChimeInlineRecipientInputVariant1Phone phone;
  final ChimeRecipientType type;
  const ChimeInlineRecipientInputVariant1({
    this.name,
    required this.phone,
    required this.type,
  });
  factory ChimeInlineRecipientInputVariant1.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant1(
        name: json["name"] == null ? null : json["name"] as String,
        phone: ChimeInlineRecipientInputVariant1Phone.fromJson(
          (json["phone"] as Map).cast<String, Object?>(),
        ),
        type: ChimeRecipientType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        "phone": _encodeValue(phone),
        "type": _encodeValue(type),
      };
}
