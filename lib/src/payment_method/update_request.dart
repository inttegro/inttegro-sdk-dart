part of '../../payment_method.dart';

/// Parameters for updating a payment method.
///
/// Carries [customData], [active], [archived], and [owner], among other
/// supported fields.
final class UpdateRequest implements InttegroValue {
  final core.CustomDataPatch? customData;
  final bool? active;
  final bool? archived;
  final UpdateRequestOwner? owner;
  final String paymentMethodId;
  const UpdateRequest({
    this.customData,
    this.active,
    this.archived,
    this.owner,
    required this.paymentMethodId,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomDataPatch.fromJson(json["custom_data"]),
        active: json["active"] == null ? null : json["active"] as bool,
        archived: json["archived"] == null ? null : json["archived"] as bool,
        owner: json["owner"] == null
            ? null
            : UpdateRequestOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        if (active != null) "active": encodeValue(active),
        if (archived != null) "archived": encodeValue(archived),
        if (owner != null) "owner": encodeValue(owner),
        "payment_method_id": encodeValue(paymentMethodId),
      };
}
