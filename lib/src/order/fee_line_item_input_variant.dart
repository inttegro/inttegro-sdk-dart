part of '../../order.dart';

final class FeeLineItemInputVariant extends LineItemInput {
  final FeeLineItemInput value;
  const FeeLineItemInputVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
