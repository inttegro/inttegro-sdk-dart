part of '../../../inttegro.dart';

final class ProductLineItemInputProductInlineProductDetailsInput
    extends ProductLineItemInputProduct {
  final InlineProductDetailsInput value;
  const ProductLineItemInputProductInlineProductDetailsInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
