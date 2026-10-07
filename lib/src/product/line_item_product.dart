part of '../../product.dart';

sealed class LineItemProduct implements InttegroValue {
  const LineItemProduct();
  factory LineItemProduct.fromJson(Object? json) {
    try {
      return InlineLineItemProduct(
        InlineDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CatalogDataLineItemProduct(
        CatalogWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CatalogReferenceLineItemProduct(
        CatalogWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported LineItemProduct value');
  }
}
