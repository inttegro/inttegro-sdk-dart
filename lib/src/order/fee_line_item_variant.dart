part of '../../order.dart';

final class FeeLineItemVariant extends LineItem {
  final FeeLineItem value;
  const FeeLineItemVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
