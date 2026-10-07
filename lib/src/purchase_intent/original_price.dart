part of '../../purchase_intent.dart';

/// The original catalog price attached to a purchase intent.
///
/// Exposes [active], [id], [label], and [nominal].
final class OriginalPrice implements InttegroValue {
  final bool active;
  final String? id;
  final String? label;
  final inttegro_money.Amount nominal;
  const OriginalPrice({
    required this.active,
    this.id,
    this.label,
    required this.nominal,
  });
  factory OriginalPrice.fromJson(Map<String, Object?> json) => OriginalPrice(
        active: json["active"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: inttegro_money.Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": encodeValue(active),
        if (id != null) "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        "nominal": encodeValue(nominal),
      };
}
