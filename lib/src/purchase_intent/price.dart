part of '../../purchase_intent.dart';

/// The active price and optional original price for a purchase intent.
///
/// Exposes [active], [id], [label], and [nominal], among other contract
/// fields.
final class Price implements InttegroValue {
  final bool active;
  final String? id;
  final String? label;
  final inttegro_money.Amount nominal;
  final OriginalPrice? original;
  const Price({
    required this.active,
    this.id,
    this.label,
    required this.nominal,
    this.original,
  });
  factory Price.fromJson(Map<String, Object?> json) => Price(
        active: json["active"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: inttegro_money.Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
        original: json["original"] == null
            ? null
            : OriginalPrice.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": encodeValue(active),
        if (id != null) "id": encodeValue(id),
        if (label != null) "label": encodeValue(label),
        "nominal": encodeValue(nominal),
        if (original != null) "original": encodeValue(original),
      };
}
