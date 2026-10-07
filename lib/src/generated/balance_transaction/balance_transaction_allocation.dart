part of '../../../inttegro.dart';

/// Caller-safe allocation of part of a payment balance transaction.
final class BalanceTransactionAllocation implements _InttegroValue {
  final String id;
  final BalanceTransactionAllocationType type;
  final BalanceTransactionAllocationStatus status;
  final BalanceTransactionAllocationUse? refund;
  final BalanceTransactionAllocationUse? payout;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? completedAt;
  const BalanceTransactionAllocation({
    required this.id,
    required this.type,
    required this.status,
    this.refund,
    this.payout,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
  });
  factory BalanceTransactionAllocation.fromJson(Map<String, Object?> json) =>
      BalanceTransactionAllocation(
        id: json["id"] as String,
        type: BalanceTransactionAllocationType.fromJson(json["type"]),
        status: BalanceTransactionAllocationStatus.fromJson(json["status"]),
        refund: json["refund"] == null
            ? null
            : BalanceTransactionAllocationUse.fromJson(
                (json["refund"] as Map).cast<String, Object?>(),
              ),
        payout: json["payout"] == null
            ? null
            : BalanceTransactionAllocationUse.fromJson(
                (json["payout"] as Map).cast<String, Object?>(),
              ),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        completedAt: json["completed_at"] == null
            ? null
            : _decodeDateTime(json["completed_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "type": _encodeValue(type),
        "status": _encodeValue(status),
        if (refund != null) "refund": _encodeValue(refund),
        if (payout != null) "payout": _encodeValue(payout),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        if (completedAt != null) "completed_at": _encodeValue(completedAt),
      };
}
