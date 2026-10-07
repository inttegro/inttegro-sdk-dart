part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class GenerateSecretKeyRequest implements _InttegroValue {
  final String? label;
  const GenerateSecretKeyRequest({this.label});
  factory GenerateSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      GenerateSecretKeyRequest(
        label: json["label"] == null ? null : json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
      };
}
