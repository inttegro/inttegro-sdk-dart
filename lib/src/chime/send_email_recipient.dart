part of '../../chime.dart';

final class SendEmailRecipient extends SendRequestRecipient {
  final EmailRecipientInput value;
  const SendEmailRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
