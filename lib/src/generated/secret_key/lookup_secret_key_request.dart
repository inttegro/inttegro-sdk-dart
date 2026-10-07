part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupSecretKeyRequest implements _InttegroValue {
  final String secretKeyId;
  const LookupSecretKeyRequest({required this.secretKeyId});
  factory LookupSecretKeyRequest.fromJson(Map<String, Object?> json) =>
      LookupSecretKeyRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": _encodeValue(secretKeyId)};
}
