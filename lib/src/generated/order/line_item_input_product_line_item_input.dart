part of '../../../inttegro.dart';

final class LineItemInputProductLineItemInput extends LineItemInput {
  final ProductLineItemInput value;
  const LineItemInputProductLineItemInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
