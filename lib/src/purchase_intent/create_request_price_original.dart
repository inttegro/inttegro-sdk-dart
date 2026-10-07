part of '../../purchase_intent.dart';

/// The original price referenced by an inline purchase-intent price.
final class CreateRequestPriceOriginal implements InttegroValue {
  final String? id;
  final inttegro_price.Params? nominal;
  const CreateRequestPriceOriginal({this.id, this.nominal});
  factory CreateRequestPriceOriginal.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestPriceOriginal(
        id: json["id"] == null ? null : json["id"] as String,
        nominal: json["nominal"] == null
            ? null
            : inttegro_price.Params.fromJson(
                (json["nominal"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (nominal != null) "nominal": encodeValue(nominal),
      };
}
