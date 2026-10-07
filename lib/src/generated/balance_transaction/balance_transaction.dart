part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class BalanceTransaction implements _InttegroValue {
  final BalanceTransactionAmount amount;
  final List<BalanceTransactionAllocation>? allocations;
  final BalanceTransactionAmount? availableAmount;
  final BalanceTransactionAmount? pendingAmount;
  final BalanceTransactionAmount? spentAmount;
  final DateTime? availableAt;
  final DateTime? claimedAt;
  final DateTime createdAt;
  final String id;
  final String? orderId;
  final DateTime? paidAt;
  final String? paymentId;
  final String? payoutId;
  final PaymentPayoutConfiguration? payoutConfiguration;
  final String? refundId;
  final BalanceTransactionType type;
  const BalanceTransaction({
    required this.amount,
    this.allocations,
    this.availableAmount,
    this.pendingAmount,
    this.spentAmount,
    this.availableAt,
    this.claimedAt,
    required this.createdAt,
    required this.id,
    this.orderId,
    this.paidAt,
    this.paymentId,
    this.payoutId,
    this.payoutConfiguration,
    this.refundId,
    required this.type,
  });
  factory BalanceTransaction.fromJson(
    Map<String, Object?> json,
  ) =>
      BalanceTransaction(
        amount: BalanceTransactionAmount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        allocations: json["allocations"] == null
            ? null
            : (json["allocations"] as List)
                .map(
                  (item) => BalanceTransactionAllocation.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        availableAmount: json["available_amount"] == null
            ? null
            : BalanceTransactionAmount.fromJson(
                (json["available_amount"] as Map).cast<String, Object?>(),
              ),
        pendingAmount: json["pending_amount"] == null
            ? null
            : BalanceTransactionAmount.fromJson(
                (json["pending_amount"] as Map).cast<String, Object?>(),
              ),
        spentAmount: json["spent_amount"] == null
            ? null
            : BalanceTransactionAmount.fromJson(
                (json["spent_amount"] as Map).cast<String, Object?>(),
              ),
        availableAt: json["available_at"] == null
            ? null
            : _decodeDateTime(json["available_at"]),
        claimedAt: json["claimed_at"] == null
            ? null
            : _decodeDateTime(json["claimed_at"]),
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        orderId: json["order_id"] == null ? null : json["order_id"] as String,
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        paymentId:
            json["payment_id"] == null ? null : json["payment_id"] as String,
        payoutId:
            json["payout_id"] == null ? null : json["payout_id"] as String,
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : PaymentPayoutConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
        refundId:
            json["refund_id"] == null ? null : json["refund_id"] as String,
        type: BalanceTransactionType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "amount": _encodeValue(amount),
        if (allocations != null) "allocations": _encodeValue(allocations),
        if (availableAmount != null)
          "available_amount": _encodeValue(availableAmount),
        if (pendingAmount != null)
          "pending_amount": _encodeValue(pendingAmount),
        if (spentAmount != null) "spent_amount": _encodeValue(spentAmount),
        if (availableAt != null) "available_at": _encodeValue(availableAt),
        if (claimedAt != null) "claimed_at": _encodeValue(claimedAt),
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
        if (orderId != null) "order_id": _encodeValue(orderId),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (paymentId != null) "payment_id": _encodeValue(paymentId),
        if (payoutId != null) "payout_id": _encodeValue(payoutId),
        if (payoutConfiguration != null)
          "payout_configuration": _encodeValue(payoutConfiguration),
        if (refundId != null) "refund_id": _encodeValue(refundId),
        "type": _encodeValue(type),
      };
}
