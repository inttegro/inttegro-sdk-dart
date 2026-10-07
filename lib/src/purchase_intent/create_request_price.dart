part of '../../purchase_intent.dart';

/// Inline price selection supplied when creating a purchase intent.
final class CreateRequestPrice implements InttegroValue {
  final String? id;
  final inttegro_price.Params? nominal;
  final CreateRequestPriceOriginal? original;
  final String? originalId;
  const CreateRequestPrice({
    this.id,
    this.nominal,
    this.original,
    this.originalId,
  });
  factory CreateRequestPrice.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestPrice(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : inttegro_price.Params.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
        original: json["original"] == null
            ? null
            : CreateRequestPriceOriginal.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
        originalId:
            json["original_id"] == null ? null : json["original_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (nominal != null) "nominal": encodeValue(nominal),
        if (original != null) "original": encodeValue(original),
        if (originalId != null) "original_id": encodeValue(originalId),
      };
}
