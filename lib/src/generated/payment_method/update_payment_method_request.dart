part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdatePaymentMethodRequest implements _InttegroValue {
  final CustomDataPatch? customData;
  final bool? active;
  final bool? archived;
  final UpdatePaymentMethodRequestOwner? owner;
  final String paymentMethodId;
  const UpdatePaymentMethodRequest({
    this.customData,
    this.active,
    this.archived,
    this.owner,
    required this.paymentMethodId,
  });
  factory UpdatePaymentMethodRequest.fromJson(Map<String, Object?> json) =>
      UpdatePaymentMethodRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomDataPatch.fromJson(json["custom_data"]),
        active: json["active"] == null ? null : json["active"] as bool,
        archived: json["archived"] == null ? null : json["archived"] as bool,
        owner: json["owner"] == null
            ? null
            : UpdatePaymentMethodRequestOwner.fromJson(
                (json["owner"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        if (active != null) "active": _encodeValue(active),
        if (archived != null) "archived": _encodeValue(archived),
        if (owner != null) "owner": _encodeValue(owner),
        "payment_method_id": _encodeValue(paymentMethodId),
      };
}
