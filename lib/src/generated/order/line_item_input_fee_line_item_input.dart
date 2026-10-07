part of '../../../inttegro.dart';

final class LineItemInputFeeLineItemInput extends LineItemInput {
  final FeeLineItemInput value;
  const LineItemInputFeeLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
