part of '../../secret_key.dart';

/// Parameters for generating a secret key.
///
/// Carries [label].
final class GenerateRequest implements InttegroValue {
  final String? label;
  const GenerateRequest({this.label});
  factory GenerateRequest.fromJson(Map<String, Object?> json) =>
      GenerateRequest(
        label: json["label"] == null ? null : json["label"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": encodeValue(label),
      };
}
