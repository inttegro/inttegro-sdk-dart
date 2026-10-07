part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateSecretKeyRequest implements _InttegroValue {
  final String label;
  final String secretKeyId;
  const UpdateSecretKeyRequest({
    required this.label,
    required this.secretKeyId,
  });
  factory UpdateSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      UpdateSecretKeyRequest(
        label: json["label"] as String,
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "label": _encodeValue(label),
        "secret_key_id": _encodeValue(secretKeyId),
      };
}
