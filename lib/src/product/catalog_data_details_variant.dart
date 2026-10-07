part of '../../product.dart';

final class CatalogDataDetailsVariant extends DetailsInput {
  final CatalogWithPriceDataInput value;
  const CatalogDataDetailsVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
