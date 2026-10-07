part of '../../purchase_intent.dart';

/// One selection axis used to distinguish purchase-intent variants.
///
/// Exposes [key], [label], and [position].
final class VariantAxis implements InttegroValue {
  final String key;
  final String label;
  final int position;
  const VariantAxis({
    required this.key,
    required this.label,
    required this.position,
  });
  factory VariantAxis.fromJson(Map<String, Object?> json) => VariantAxis(
        key: json["key"] as String,
        label: json["label"] as String,
        position: (json["position"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": encodeValue(key),
        "label": encodeValue(label),
        "position": encodeValue(position),
      };
}
