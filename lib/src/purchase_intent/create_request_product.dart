part of '../../purchase_intent.dart';

/// Product and variant-set selection for a new purchase intent.
final class CreateRequestProduct implements InttegroValue {
  final String? variantSetId;
  final String id;
  const CreateRequestProduct({
    this.variantSetId,
    required this.id,
  });
  factory CreateRequestProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestProduct(
        variantSetId: json["variant_set_id"] == null
            ? null
            : json["variant_set_id"] as String,
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variantSetId != null) "variant_set_id": encodeValue(variantSetId),
        "id": encodeValue(id),
      };
}
