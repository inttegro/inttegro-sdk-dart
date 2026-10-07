part of '../../purchase_intent.dart';

/// An order that consumed a purchase intent.
///
/// Exposes [createdAt] and [id].
final class UsageOrder implements InttegroValue {
  final DateTime createdAt;
  final String id;
  const UsageOrder({required this.createdAt, required this.id});
  factory UsageOrder.fromJson(Map<String, Object?> json) => UsageOrder(
        createdAt: decodeDateTime(json["created_at"]),
        id: json["id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": encodeValue(createdAt),
        "id": encodeValue(id),
      };
}
