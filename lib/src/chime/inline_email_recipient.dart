part of '../../chime.dart';

final class InlineEmailRecipient extends InlineRecipientInput {
  final EmailRecipientInput value;
  const InlineEmailRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
