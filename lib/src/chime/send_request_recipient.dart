part of '../../chime.dart';

sealed class SendRequestRecipient implements InttegroValue {
  const SendRequestRecipient();
  factory SendRequestRecipient.fromJson(Object? json) {
    try {
      return SendPhoneRecipient(
        PhoneRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendEmailRecipient(
        EmailRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return SendSavedCustomerRecipient(
        SavedCustomerRecipientInput.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported SendRequestRecipient value');
  }
}
