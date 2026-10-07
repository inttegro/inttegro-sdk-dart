part of '../../order.dart';

/// The product, price, and quantity snapshot embedded in an order line item.
final class ProductLineItemProduct implements InttegroValue {
  final String id;
  final String? productId;
  final String? priceId;
  final String? reference;
  final String? about;
  final core.CustomData? customData;
  final String? taxCode;
  final String name;
  final String? category;
  final String? type;
  final inttegro_price.Price price;
  final int quantity;
  const ProductLineItemProduct({
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
  factory ProductLineItemProduct.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductLineItemProduct(
        id: json["id"] as String,
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        priceId: json["price_id"] == null ? null : json["price_id"] as String,
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        taxCode: json["tax_code"] == null ? null : json["tax_code"] as String,
        name: json["name"] as String,
        category: json["category"] == null ? null : json["category"] as String,
        type: json["type"] == null ? null : json["type"] as String,
        price: inttegro_price.Price.fromJson(
            (json["price"] as Map).cast<String, Object?>()),
        quantity: (json["quantity"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        if (productId != null) "product_id": encodeValue(productId),
        if (priceId != null) "price_id": encodeValue(priceId),
        if (reference != null) "reference": encodeValue(reference),
        if (about != null) "about": encodeValue(about),
        if (customData != null) "custom_data": encodeValue(customData),
        if (taxCode != null) "tax_code": encodeValue(taxCode),
        "name": encodeValue(name),
        if (category != null) "category": encodeValue(category),
        if (type != null) "type": encodeValue(type),
        "price": encodeValue(price),
        "quantity": encodeValue(quantity),
      };
}
