part of '../../../inttegro.dart';

final class ProductDetailsInputInlineProductDetailsInput
    extends ProductDetailsInput {
  final InlineProductDetailsInput value;
  const ProductDetailsInputInlineProductDetailsInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
