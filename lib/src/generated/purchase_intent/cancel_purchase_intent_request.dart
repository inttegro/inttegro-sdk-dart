part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelPurchaseIntentRequest implements _InttegroValue {
  final String? id;
  final String? purchaseIntentId;
  const CancelPurchaseIntentRequest({this.id, this.purchaseIntentId});
  factory CancelPurchaseIntentRequest.fromJson(Map<String, Object?> json) =>
      CancelPurchaseIntentRequest(
        id: json["id"] == null ? null : json["id"] as String,
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": _encodeValue(id),
        if (purchaseIntentId != null)
          "purchase_intent_id": _encodeValue(purchaseIntentId),
      };
}
