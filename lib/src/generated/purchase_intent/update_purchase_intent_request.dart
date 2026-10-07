part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdatePurchaseIntentRequest implements _InttegroValue {
  final DateTime? expiresAt;
  final String? id;
  final UpdatePurchaseIntentRequestQuantity? quantity;
  final String? purchaseIntentId;
  final bool? reactivate;
  final UpdatePurchaseIntentPresentation? presentation;
  const UpdatePurchaseIntentRequest({
    this.expiresAt,
    this.id,
    this.quantity,
    this.purchaseIntentId,
    this.reactivate,
    this.presentation,
  });
  factory UpdatePurchaseIntentRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentRequest(
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] == null ? null : json["id"] as String,
        quantity: json["quantity"] == null
            ? null
            : UpdatePurchaseIntentRequestQuantity.fromJson(
                (json["quantity"] as Map).cast<String, Object?>(),
              ),
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
        reactivate:
            json["reactivate"] == null ? null : json["reactivate"] as bool,
        presentation: json["presentation"] == null
            ? null
            : UpdatePurchaseIntentPresentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        if (id != null) "id": _encodeValue(id),
        if (quantity != null) "quantity": _encodeValue(quantity),
        if (purchaseIntentId != null)
          "purchase_intent_id": _encodeValue(purchaseIntentId),
        if (reactivate != null) "reactivate": _encodeValue(reactivate),
        if (presentation != null) "presentation": _encodeValue(presentation),
      };
}
