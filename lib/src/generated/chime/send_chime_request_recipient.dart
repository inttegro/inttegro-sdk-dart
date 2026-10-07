part of '../../../inttegro.dart';

sealed class SendChimeRequestRecipient implements _InttegroValue {
  const SendChimeRequestRecipient();
  factory SendChimeRequestRecipient.fromJson(Object? json) {
    try {
      return SendChimeRequestRecipientChimeInlineRecipientInputVariant1(
        ChimeInlineRecipientInputVariant1.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendChimeRequestRecipientChimeInlineRecipientInputVariant2(
        ChimeInlineRecipientInputVariant2.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendChimeRequestRecipientChimeSavedCustomerRecipientInput(
        ChimeSavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported SendChimeRequestRecipient value');
  }
}
