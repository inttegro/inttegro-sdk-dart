part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestProduct implements _InttegroValue {
  final String? variantSetId;
  final String id;
  const CreatePurchaseIntentRequestProduct({
    this.variantSetId,
    required this.id,
  });
  factory CreatePurchaseIntentRequestProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestProduct(
        variantSetId: json["variant_set_id"] == null
            ? null
            : json["variant_set_id"] as String,
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (variantSetId != null) "variant_set_id": _encodeValue(variantSetId),
        "id": _encodeValue(id),
      };
}
