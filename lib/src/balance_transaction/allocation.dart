part of '../../balance_transaction.dart';

/// Caller-safe allocation of part of a payment balance transaction.
final class Allocation implements InttegroValue {
  final String id;
  final AllocationType type;
  final AllocationStatus status;
  final AllocationUse? refund;
  final AllocationUse? payout;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? completedAt;
  const Allocation({
    required this.id,
    required this.type,
    required this.status,
    this.refund,
    this.payout,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
  });
  factory Allocation.fromJson(Map<String, Object?> json) => Allocation(
        id: json["id"] as String,
        type: AllocationType.fromJson(json["type"]),
        status: AllocationStatus.fromJson(json["status"]),
        refund: json["refund"] == null
            ? null
            : AllocationUse.fromJson(
                (json["refund"] as Map).cast<String, Object?>(),
              ),
        payout: json["payout"] == null
            ? null
            : AllocationUse.fromJson(
                (json["payout"] as Map).cast<String, Object?>(),
              ),
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: decodeDateTime(json["updated_at"]),
        completedAt: json["completed_at"] == null
            ? null
            : decodeDateTime(json["completed_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "type": encodeValue(type),
        "status": encodeValue(status),
        if (refund != null) "refund": encodeValue(refund),
        if (payout != null) "payout": encodeValue(payout),
        "created_at": encodeValue(createdAt),
        "updated_at": encodeValue(updatedAt),
        if (completedAt != null) "completed_at": encodeValue(completedAt),
      };
}
