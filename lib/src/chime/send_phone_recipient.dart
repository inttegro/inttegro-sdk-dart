part of '../../chime.dart';

final class SendPhoneRecipient extends SendRequestRecipient {
  final PhoneRecipientInput value;
  const SendPhoneRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
