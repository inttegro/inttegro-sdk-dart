part of '../../order.dart';

final class ShippingLineItemInputVariant extends LineItemInput {
  final ShippingLineItemInput value;
  const ShippingLineItemInputVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
