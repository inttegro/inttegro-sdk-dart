part of '../../../inttegro.dart';

final class ProductDetailsInputCatalogProductWithPriceReferenceInput
    extends ProductDetailsInput {
  final CatalogProductWithPriceReferenceInput value;
  const ProductDetailsInputCatalogProductWithPriceReferenceInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
