part of '../../product.dart';

sealed class DetailsInput implements InttegroValue {
  const DetailsInput();
  factory DetailsInput.fromJson(Object? json) {
    try {
      return InlineDetailsVariant(
        InlineDetailsInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CatalogDataDetailsVariant(
        CatalogWithPriceDataInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return CatalogReferenceDetailsVariant(
        CatalogWithPriceReferenceInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported DetailsInput value');
  }
}
