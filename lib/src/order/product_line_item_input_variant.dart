part of '../../order.dart';

final class ProductLineItemInputVariant extends LineItemInput {
  final inttegro_product.LineItemInput value;
  const ProductLineItemInputVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
