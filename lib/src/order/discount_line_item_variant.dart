part of '../../order.dart';

final class DiscountLineItemVariant extends LineItem {
  final DiscountLineItem value;
  const DiscountLineItemVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
