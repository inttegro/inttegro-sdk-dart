part of '../../purchase_intent.dart';

/// The axes and variants available for a purchase intent.
///
/// Exposes [active], [defaultProductId], [description], and [id], among other
/// contract fields.
final class VariantSet implements InttegroValue {
  final bool active;
  final String? defaultProductId;
  final String? description;
  final String id;
  final String name;
  final String? reference;
  final List<VariantAxis> variantAxes;
  final List<Variant> variants;
  const VariantSet({
    required this.active,
    this.defaultProductId,
    this.description,
    required this.id,
    required this.name,
    this.reference,
    required this.variantAxes,
    required this.variants,
  });
  factory VariantSet.fromJson(Map<String, Object?> json) => VariantSet(
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
              (item) => VariantAxis.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        variants: (json["variants"] as List)
            .map(
              (item) => Variant.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": encodeValue(active),
        if (defaultProductId != null)
          "default_product_id": encodeValue(defaultProductId),
        if (description != null) "description": encodeValue(description),
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (reference != null) "reference": encodeValue(reference),
        "variant_axes": encodeValue(variantAxes),
        "variants": encodeValue(variants),
      };
}
