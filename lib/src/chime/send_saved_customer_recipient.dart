part of '../../chime.dart';

final class SendSavedCustomerRecipient extends SendRequestRecipient {
  final SavedCustomerRecipientInput value;
  const SendSavedCustomerRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
