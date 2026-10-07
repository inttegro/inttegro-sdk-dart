part of '../../../inttegro.dart';

sealed class ChimeInlineRecipientInput implements _InttegroValue {
  const ChimeInlineRecipientInput();
  factory ChimeInlineRecipientInput.fromJson(Object? json) {
    try {
      return ChimeInlineRecipientInputChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return ChimeInlineRecipientInputChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported ChimeInlineRecipientInput value');
  }
}
