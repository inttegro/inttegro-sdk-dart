part of '../../order.dart';

/// A discount line item attached to an order.
final class DiscountLineItem implements InttegroValue {
  final String type;
  final Discount discount;
  const DiscountLineItem({required this.type, required this.discount});
  factory DiscountLineItem.fromJson(Map<String, Object?> json) =>
      DiscountLineItem(
        type: json["type"] as String,
        discount: Discount.fromJson(
          (json["discount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "discount": encodeValue(discount),
      };
}
