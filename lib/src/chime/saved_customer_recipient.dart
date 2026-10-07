part of '../../chime.dart';

final class SavedCustomerRecipient extends RecipientInput {
  final SavedCustomerRecipientInput value;
  const SavedCustomerRecipient(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
