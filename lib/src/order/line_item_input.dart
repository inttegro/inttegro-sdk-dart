part of '../../order.dart';

sealed class LineItemInput implements InttegroValue {
  const LineItemInput();
  factory LineItemInput.fromJson(Object? json) {
    try {
      return ProductLineItemInputVariant(
        inttegro_product.LineItemInput.fromJson(
            (json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return FeeLineItemInputVariant(
        FeeLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return ShippingLineItemInputVariant(
        ShippingLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported LineItemInput value');
  }
}
