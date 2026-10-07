part of '../../../inttegro.dart';

sealed class ProductDetailsInput implements _InttegroValue {
  const ProductDetailsInput();
  factory ProductDetailsInput.fromJson(Object? json) {
    try {
      return ProductDetailsInputInlineProductDetailsInput(
        InlineProductDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductDetailsInputCatalogProductWithPriceDataInput(
        CatalogProductWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ProductDetailsInputCatalogProductWithPriceReferenceInput(
        CatalogProductWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ProductDetailsInput value');
  }
}
