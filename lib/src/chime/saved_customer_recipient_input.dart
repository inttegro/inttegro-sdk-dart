part of '../../chime.dart';

/// Saved customer recipient fields accepted by the Chime API.
///
/// Carries [customerId] and [transport].
final class SavedCustomerRecipientInput implements InttegroValue {
  final String customerId;
  final Transport transport;
  const SavedCustomerRecipientInput({
    required this.customerId,
    required this.transport,
  });
  factory SavedCustomerRecipientInput.fromJson(
    Map<String, Object?> json,
  ) =>
      SavedCustomerRecipientInput(
        customerId: json["customer_id"] as String,
        transport: Transport.fromJson(json["transport"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "customer_id": encodeValue(customerId),
        "transport": encodeValue(transport),
      };
}
