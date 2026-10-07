part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeSavedCustomerRecipientInput implements _InttegroValue {
  final String customerId;
  final ChimeTransport transport;
  const ChimeSavedCustomerRecipientInput({
    required this.customerId,
    required this.transport,
  });
  factory ChimeSavedCustomerRecipientInput.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeSavedCustomerRecipientInput(
        customerId: json["customer_id"] as String,
        transport: ChimeTransport.fromJson(json["transport"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "customer_id": _encodeValue(customerId),
        "transport": _encodeValue(transport),
      };
}
