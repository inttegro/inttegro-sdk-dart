part of '../../chime.dart';

final class PhoneRecipient extends RecipientInput {
  final PhoneRecipientInput value;
  const PhoneRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
