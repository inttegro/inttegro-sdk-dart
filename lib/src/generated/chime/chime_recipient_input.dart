part of '../../../inttegro.dart';

sealed class ChimeRecipientInput implements _InttegroValue {
  const ChimeRecipientInput();
  factory ChimeRecipientInput.fromJson(Object? json) {
    try {
      return ChimeRecipientInputChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeRecipientInputChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeRecipientInputChimeSavedCustomerRecipientInput(
        ChimeSavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ChimeRecipientInput value');
  }
}
