part of '../../chime.dart';

sealed class InlineRecipientInput implements InttegroValue {
  const InlineRecipientInput();
  factory InlineRecipientInput.fromJson(Object? json) {
    try {
      return InlinePhoneRecipient(
        PhoneRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return InlineEmailRecipient(
        EmailRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported InlineRecipientInput value');
  }
}
