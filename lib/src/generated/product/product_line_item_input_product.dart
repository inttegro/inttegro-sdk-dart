part of '../../../inttegro.dart';

sealed class ProductLineItemInputProduct implements _InttegroValue {
  const ProductLineItemInputProduct();
  factory ProductLineItemInputProduct.fromJson(Object? json) {
    try {
      return ProductLineItemInputProductInlineProductDetailsInput(
        InlineProductDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductLineItemInputProductCatalogProductWithPriceDataInput(
        CatalogProductWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductLineItemInputProductCatalogProductWithPriceReferenceInput(
        CatalogProductWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ProductLineItemInputProduct value');
  }
}
