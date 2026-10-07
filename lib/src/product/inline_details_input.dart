part of '../../product.dart';

/// Inline details fields accepted by the product API.
///
/// Carries [about], [customData], [reference], and [taxCode], among other
/// supported fields.
final class InlineDetailsInput implements InttegroValue {
  final String? about;
  final core.CustomDataInput? customData;
  final String? reference;
  final String? taxCode;
  final String name;
  final inttegro_price.Params price;
  final int quantity;
  final Type type;
  const InlineDetailsInput({
    this.about,
    this.customData,
    this.reference,
    this.taxCode,
    required this.name,
    required this.price,
    required this.quantity,
    required this.type,
  });
  factory InlineDetailsInput.fromJson(
    Map<String, Object?> json,
  ) =>
      InlineDetailsInput(
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataInput.fromJson(json["custom_data"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        price: inttegro_price.Params.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
        type: Type.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (about != null) "about": encodeValue(about),
        if (customData != null) "custom_data": encodeValue(customData),
        if (reference != null) "reference": encodeValue(reference),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        "name": encodeValue(name),
        "price": encodeValue(price),
        "quantity": encodeValue(quantity),
        "type": encodeValue(type),
      };
}
