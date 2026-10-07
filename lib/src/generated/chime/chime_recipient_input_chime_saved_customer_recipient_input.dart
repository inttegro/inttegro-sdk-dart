part of '../../../inttegro.dart';

final class ChimeRecipientInputChimeSavedCustomerRecipientInput
    extends ChimeRecipientInput {
  final ChimeSavedCustomerRecipientInput value;
  const ChimeRecipientInputChimeSavedCustomerRecipientInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
