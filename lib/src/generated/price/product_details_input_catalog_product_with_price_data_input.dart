part of '../../../inttegro.dart';

final class ProductDetailsInputCatalogProductWithPriceDataInput
    extends ProductDetailsInput {
  final CatalogProductWithPriceDataInput value;
  const ProductDetailsInputCatalogProductWithPriceDataInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
