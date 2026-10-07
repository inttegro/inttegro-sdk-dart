part of '../../secret_key.dart';

/// Parameters for updating a secret key.
///
/// Carries [label] and [secretKeyId].
final class UpdateRequest implements InttegroValue {
  final String label;
  final String secretKeyId;
  const UpdateRequest({
    required this.label,
    required this.secretKeyId,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        label: json["label"] as String,
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "label": encodeValue(label),
        "secret_key_id": encodeValue(secretKeyId),
      };
}
