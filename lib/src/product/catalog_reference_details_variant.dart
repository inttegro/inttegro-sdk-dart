part of '../../product.dart';

final class CatalogReferenceDetailsVariant extends DetailsInput {
  final CatalogWithPriceReferenceInput value;
  const CatalogReferenceDetailsVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
