part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentVariantSet implements _InttegroValue {
  final bool active;
  final String? defaultProductId;
  final String? description;
  final String id;
  final String name;
  final String? reference;
  final List<PurchaseIntentVariantAxis> variantAxes;
  final List<PurchaseIntentVariant> variants;
  const PurchaseIntentVariantSet({
    required this.active,
    this.defaultProductId,
    this.description,
    required this.id,
    required this.name,
    this.reference,
    required this.variantAxes,
    required this.variants,
  });
  factory PurchaseIntentVariantSet.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariantSet(
        active: json["active"] as bool,
        defaultProductId: json["default_product_id"] == null
            ? null
            : json["default_product_id"] as String,
        description:
            json["description"] == null ? null : json["description"] as String,
        id: json["id"] as String,
        name: json["name"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        variantAxes: (json["variant_axes"] as List)
            .map(
              (item) => PurchaseIntentVariantAxis.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        variants: (json["variants"] as List)
            .map(
              (item) => PurchaseIntentVariant.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (defaultProductId != null)
          "default_product_id": _encodeValue(defaultProductId),
        if (description != null) "description": _encodeValue(description),
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (reference != null) "reference": _encodeValue(reference),
        "variant_axes": _encodeValue(variantAxes),
        "variants": _encodeValue(variants),
      };
}
