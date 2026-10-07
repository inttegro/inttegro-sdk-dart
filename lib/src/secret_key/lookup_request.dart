part of '../../secret_key.dart';

/// Identifies the secret key to retrieve.
///
/// Carries [secretKeyId].
final class LookupRequest implements InttegroValue {
  final String secretKeyId;
  const LookupRequest({required this.secretKeyId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(secretKeyId: json["secret_key_id"] as String);
  @override
  Map<String, Object?> toJson() => {"secret_key_id": encodeValue(secretKeyId)};
}
