part of '../../../inttegro.dart';

final class ProductLineItemInputProductCatalogProductWithPriceDataInput
    extends ProductLineItemInputProduct {
  final CatalogProductWithPriceDataInput value;
  const ProductLineItemInputProductCatalogProductWithPriceDataInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
