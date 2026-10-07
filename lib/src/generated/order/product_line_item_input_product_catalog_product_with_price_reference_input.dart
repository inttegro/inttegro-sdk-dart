part of '../../../inttegro.dart';

final class ProductLineItemInputProductCatalogProductWithPriceReferenceInput
    extends ProductLineItemInputProduct {
  final CatalogProductWithPriceReferenceInput value;
  const ProductLineItemInputProductCatalogProductWithPriceReferenceInput(
    this.value,
  );
  @override
  Object? toJson() => _encodeValue(value);
}
