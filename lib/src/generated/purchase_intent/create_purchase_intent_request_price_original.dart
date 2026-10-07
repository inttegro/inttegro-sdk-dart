part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreatePurchaseIntentRequestPriceOriginal implements _InttegroValue {
  final String? id;
  final PriceParams? nominal;
  const CreatePurchaseIntentRequestPriceOriginal({this.id, this.nominal});
  factory CreatePurchaseIntentRequestPriceOriginal.fromJson(
    Map<String, Object?> json,
  ) =>
      CreatePurchaseIntentRequestPriceOriginal(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : PriceParams.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (nominal != null) "nominal": _encodeValue(nominal),
      };
}
