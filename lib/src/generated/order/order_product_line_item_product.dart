part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderProductLineItemProduct implements _InttegroValue {
  final String id;
  final String? productId;
  final String? priceId;
  final String? reference;
  final String? about;
  final CustomData? customData;
  final String? taxCode;
  final String name;
  final String? category;
  final String? type;
  final Price price;
  final int quantity;
  const OrderProductLineItemProduct({
    required this.id,
    this.productId,
    this.priceId,
    this.reference,
    this.about,
    this.customData,
    this.taxCode,
    required this.name,
    this.category,
    this.type,
    required this.price,
    required this.quantity,
  });
  factory OrderProductLineItemProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      OrderProductLineItemProduct(
        id: json["id"] as String,
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        type: json["type"] == null ? null : json["type"] as String,
        price: Price.fromJson((json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        if (productId != null) "product_id": _encodeValue(productId),
        if (priceId != null) "price_id": _encodeValue(priceId),
        if (reference != null) "reference": _encodeValue(reference),
        if (about != null) "about": _encodeValue(about),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (taxCode != null) "tax_code": _encodeValue(taxCode),
        "name": _encodeValue(name),
        if (category != null) "category": _encodeValue(category),
        if (type != null) "type": _encodeValue(type),
        "price": _encodeValue(price),
        "quantity": _encodeValue(quantity),
      };
}
