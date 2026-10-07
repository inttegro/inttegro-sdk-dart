part of '../../../inttegro.dart';

sealed class LineItemInput implements _InttegroValue {
  const LineItemInput();
  factory LineItemInput.fromJson(Object? json) {
    try {
      return LineItemInputProductLineItemInput(
        ProductLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return LineItemInputFeeLineItemInput(
        FeeLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return LineItemInputShippingLineItemInput(
        ShippingLineItemInput.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported LineItemInput value');
  }
}
