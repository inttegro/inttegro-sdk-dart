part of '../../order.dart';

final class ProductLineItemVariant extends LineItem {
  final ProductLineItem value;
  const ProductLineItemVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
