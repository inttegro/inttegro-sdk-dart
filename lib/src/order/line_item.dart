part of '../../order.dart';

sealed class LineItem implements InttegroValue {
  const LineItem();
  factory LineItem.fromJson(Object? json) {
    try {
      return ProductLineItemVariant(
        ProductLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return FeeLineItemVariant(
        FeeLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return ShippingLineItemVariant(
        ShippingLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return DiscountLineItemVariant(
        DiscountLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported LineItem value');
  }
}
