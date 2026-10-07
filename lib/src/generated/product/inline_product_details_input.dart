part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class InlineProductDetailsInput implements _InttegroValue {
  final String? about;
  final CustomDataInput? customData;
  final String? reference;
  final String? taxCode;
  final String name;
  final PriceParams price;
  final int quantity;
  final ProductType type;
  const InlineProductDetailsInput({
    this.about,
    this.customData,
    this.reference,
    this.taxCode,
    required this.name,
    required this.price,
    required this.quantity,
    required this.type,
  });
  factory InlineProductDetailsInput.fromJson(
    Map<String, Object?> json,
  ) =>
      InlineProductDetailsInput(
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomDataInput.fromJson(json["custom_data"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        price: PriceParams.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
        type: ProductType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": _encodeValue(about),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (reference != null) "reference": _encodeValue(reference),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "name": _encodeValue(name),
        "price": _encodeValue(price),
        "quantity": _encodeValue(quantity),
        "type": _encodeValue(type),
      };
}
