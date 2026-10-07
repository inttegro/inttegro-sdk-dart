part of '../../../inttegro.dart';

final class SendChimeRequestRecipientChimeSavedCustomerRecipientInput
    extends SendChimeRequestRecipient {
  final ChimeSavedCustomerRecipientInput value;
  const SendChimeRequestRecipientChimeSavedCustomerRecipientInput(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
