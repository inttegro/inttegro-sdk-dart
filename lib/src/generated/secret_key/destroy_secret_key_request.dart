part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class DestroySecretKeyRequest implements _InttegroValue {
  final String secretKeyId;
  const DestroySecretKeyRequest({required this.secretKeyId});
  factory DestroySecretKeyRequest.fromJson(Map<String, Object?> json) =>
      DestroySecretKeyRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": _encodeValue(secretKeyId)};
}
