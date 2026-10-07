part of '../../chime.dart';

sealed class RecipientInput implements InttegroValue {
  const RecipientInput();
  factory RecipientInput.fromJson(Object? json) {
    try {
      return PhoneRecipient(
        PhoneRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return EmailRecipient(
        EmailRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SavedCustomerRecipient(
        SavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported RecipientInput value');
  }
}
