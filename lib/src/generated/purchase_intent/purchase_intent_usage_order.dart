part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentUsageOrder implements _InttegroValue {
  final DateTime createdAt;
  final String id;
  const PurchaseIntentUsageOrder({required this.createdAt, required this.id});
  factory PurchaseIntentUsageOrder.fromJson(Map<String, Object?> json) =>
      PurchaseIntentUsageOrder(
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
      };
}
