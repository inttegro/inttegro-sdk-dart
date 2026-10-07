part of '../../secret_key.dart';

/// Identifies the secret key to destroy.
///
/// Carries [secretKeyId].
final class DestroyRequest implements InttegroValue {
  final String secretKeyId;
  const DestroyRequest({required this.secretKeyId});
  factory DestroyRequest.fromJson(Map<String, Object?> json) =>
      DestroyRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": encodeValue(secretKeyId)};
}
