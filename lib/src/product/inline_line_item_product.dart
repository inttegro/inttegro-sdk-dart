part of '../../product.dart';

final class InlineLineItemProduct extends LineItemProduct {
  final InlineDetailsInput value;
  const InlineLineItemProduct(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
