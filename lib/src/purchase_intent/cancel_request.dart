part of '../../purchase_intent.dart';

/// Identifies the purchase intent to cancel and supplies any cancellation
/// options.
///
/// Carries [id] and [purchaseIntentId].
final class CancelRequest implements InttegroValue {
  final String? id;
  final String? purchaseIntentId;
  const CancelRequest({this.id, this.purchaseIntentId});
  factory CancelRequest.fromJson(Map<String, Object?> json) => CancelRequest(
        id: json["id"] == null ? null : json["id"] as String,
        purchaseIntentId: json["purchase_intent_id"] == null
            ? null
            : json["purchase_intent_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": encodeValue(id),
        if (purchaseIntentId != null)
          "purchase_intent_id": encodeValue(purchaseIntentId),
      };
}
