part of '../../chime.dart';

final class EmailRecipient extends RecipientInput {
  final EmailRecipientInput value;
  const EmailRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
