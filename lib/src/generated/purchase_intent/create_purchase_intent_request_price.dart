part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestPrice implements _InttegroValue {
  final String? id;
  final PriceParams? nominal;
  final CreatePurchaseIntentRequestPriceOriginal? original;
  final String? originalId;
  const CreatePurchaseIntentRequestPrice({
    this.id,
    this.nominal,
    this.original,
    this.originalId,
  });
  factory CreatePurchaseIntentRequestPrice.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestPrice(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : PriceParams.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
        original: json["original"] == null
            ? null
            : CreatePurchaseIntentRequestPriceOriginal.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
        originalId:
            json["original_id"] == null ? null : json["original_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (nominal != null) "nominal": _encodeValue(nominal),
        if (original != null) "original": _encodeValue(original),
        if (originalId != null) "original_id": _encodeValue(originalId),
      };
}
