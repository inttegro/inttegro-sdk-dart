part of '../../../inttegro.dart';

final class LineItemInputShippingLineItemInput extends LineItemInput {
  final ShippingLineItemInput value;
  const LineItemInputShippingLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
