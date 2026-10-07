part of '../../chime.dart';

final class InlinePhoneRecipient extends InlineRecipientInput {
  final PhoneRecipientInput value;
  const InlinePhoneRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
