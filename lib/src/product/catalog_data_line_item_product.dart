part of '../../product.dart';

final class CatalogDataLineItemProduct extends LineItemProduct {
  final CatalogWithPriceDataInput value;
  const CatalogDataLineItemProduct(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
