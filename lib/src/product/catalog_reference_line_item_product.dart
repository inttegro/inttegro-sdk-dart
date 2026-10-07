part of '../../product.dart';

final class CatalogReferenceLineItemProduct extends LineItemProduct {
  final CatalogWithPriceReferenceInput value;
  const CatalogReferenceLineItemProduct(
    this.value,
  );
  @override
  Object? toJson() => encodeValue(value);
}
