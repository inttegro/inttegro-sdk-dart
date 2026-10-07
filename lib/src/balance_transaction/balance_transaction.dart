part of '../../balance_transaction.dart';

/// A ledger transaction and the amounts allocated, available, pending, or spent.
///
/// Resource identifiers connect the transaction to its originating payment,
/// refund, payout, or order when the API provides that relationship.
final class BalanceTransaction implements InttegroValue {
  final Amount amount;
  final List<Allocation>? allocations;
  final Amount? availableAmount;
  final Amount? pendingAmount;
  final Amount? spentAmount;
  final DateTime? availableAt;
  final DateTime? claimedAt;
  final DateTime createdAt;
  final String id;
  final String? orderId;
  final DateTime? paidAt;
  final String? paymentId;
  final String? payoutId;
  final inttegro_payout.PaymentConfiguration? payoutConfiguration;
  final String? refundId;
  final Type type;
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
        amount: Amount.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
        allocations: json["allocations"] == null
            ? null
            : (json["allocations"] as List)
                .map(
                  (item) => Allocation.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        availableAmount: json["available_amount"] == null
            ? null
            : Amount.fromJson(
                (json["available_amount"] as Map).cast<String, Object?>(),
              ),
        pendingAmount: json["pending_amount"] == null
            ? null
            : Amount.fromJson(
                (json["pending_amount"] as Map).cast<String, Object?>(),
              ),
        spentAmount: json["spent_amount"] == null
            ? null
            : Amount.fromJson(
                (json["spent_amount"] as Map).cast<String, Object?>(),
              ),
        availableAt: json["available_at"] == null
            ? null
            : decodeDateTime(json["available_at"]),
        claimedAt: json["claimed_at"] == null
            ? null
            : decodeDateTime(json["claimed_at"]),
        createdAt: decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        orderId: json["order_id"] == null ? null : json["order_id"] as String,
        paidAt:
            json["paid_at"] == null ? null : decodeDateTime(json["paid_at"]),
        paymentId:
            json["payment_id"] == null ? null : json["payment_id"] as String,
        payoutId:
            json["payout_id"] == null ? null : json["payout_id"] as String,
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : inttegro_payout.PaymentConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
        refundId:
            json["refund_id"] == null ? null : json["refund_id"] as String,
        type: Type.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "amount": encodeValue(amount),
        if (allocations != null) "allocations": encodeValue(allocations),
        if (availableAmount != null)
          "available_amount": encodeValue(availableAmount),
        if (pendingAmount != null) "pending_amount": encodeValue(pendingAmount),
        if (spentAmount != null) "spent_amount": encodeValue(spentAmount),
        if (availableAt != null) "available_at": encodeValue(availableAt),
        if (claimedAt != null) "claimed_at": encodeValue(claimedAt),
        "created_at": encodeValue(createdAt),
        "id": encodeValue(id),
        if (orderId != null) "order_id": encodeValue(orderId),
        if (paidAt != null) "paid_at": encodeValue(paidAt),
        if (paymentId != null) "payment_id": encodeValue(paymentId),
        if (payoutId != null) "payout_id": encodeValue(payoutId),
        if (payoutConfiguration != null)
          "payout_configuration": encodeValue(payoutConfiguration),
        if (refundId != null) "refund_id": encodeValue(refundId),
        "type": encodeValue(type),
      };
}
