part of '../../purchase_intent.dart';

/// Parameters for updating a purchase intent.
///
/// Carries [expiresAt], [id], [quantity], and [purchaseIntentId], among other
/// supported fields.
final class UpdateRequest implements InttegroValue {
  final DateTime? expiresAt;
  final String? id;
  final UpdateRequestQuantity? quantity;
  final String? purchaseIntentId;
  final bool? reactivate;
  final UpdatePresentation? presentation;
  const UpdateRequest({
    this.expiresAt,
    this.id,
    this.quantity,
    this.purchaseIntentId,
    this.reactivate,
    this.presentation,
  });
  factory UpdateRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateRequest(
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        id: json["id"] == null ? null : json["id"] as String,
        quantity: json["quantity"] == null
            ? null
            : UpdateRequestQuantity.fromJson(
                (json["quantity"] as Map).cast<String, Object?>(),
              ),
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
        reactivate:
            json["reactivate"] == null ? null : json["reactivate"] as bool,
        presentation: json["presentation"] == null
            ? null
            : UpdatePresentation.fromJson(
                (json["presentation"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        if (id != null) "id": encodeValue(id),
        if (quantity != null) "quantity": encodeValue(quantity),
        if (purchaseIntentId != null)
          "purchase_intent_id": encodeValue(purchaseIntentId),
        if (reactivate != null) "reactivate": encodeValue(reactivate),
        if (presentation != null) "presentation": encodeValue(presentation),
      };
}
