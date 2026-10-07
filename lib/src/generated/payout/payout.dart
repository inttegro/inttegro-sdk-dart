part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Payout implements _InttegroValue {
  final Amount? amount;
  final String? balanceTransactionId;
  final List<PayoutBalanceTransaction>? balanceTransactions;
  final DateTime? canceledAt;
  final CustomData? customData;
  final String destinationId;
  final PayoutError? error;
  final DateTime executeAfter;
  final String? executedBy;
  final DateTime? expectedAt;
  final DateTime? failedAt;
  final PayoutFailure? failure;
  final String id;
  final DateTime initiatedAt;
  final String? initiatedBy;
  final Amount maxAmount;
  final String? reference;
  final String? scheduleId;
  final DateTime? scheduledAt;
  final String? scheduledBy;
  final DateTime? sentAt;
  final String? sourceId;
  final PayoutStatus status;
  final DateTime? succeededAt;
  const Payout({
    this.amount,
    this.balanceTransactionId,
    this.balanceTransactions,
    this.canceledAt,
    this.customData,
    required this.destinationId,
    this.error,
    required this.executeAfter,
    this.executedBy,
    this.expectedAt,
    this.failedAt,
    this.failure,
    required this.id,
    required this.initiatedAt,
    this.initiatedBy,
    required this.maxAmount,
    this.reference,
    this.scheduleId,
    this.scheduledAt,
    this.scheduledBy,
    this.sentAt,
    this.sourceId,
    required this.status,
    this.succeededAt,
  });
  factory Payout.fromJson(Map<String, Object?> json) => Payout(
        amount: json["amount"] == null
            ? null
            : Amount.fromJson((json["amount"] as Map).cast<String, Object?>()),
        balanceTransactionId: json["balance_transaction_id"] == null
            ? null
            : json["balance_transaction_id"] as String,
        balanceTransactions: json["balance_transactions"] == null
            ? null
            : (json["balance_transactions"] as List)
                .map((item) => PayoutBalanceTransaction.fromJson(
                      (item as Map).cast<String, Object?>(),
                    ))
                .toList(),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        destinationId: json["destination_id"] as String,
        error: json["error"] == null
            ? null
            : PayoutError.fromJson(
                (json["error"] as Map).cast<String, Object?>()),
        executeAfter: _decodeDateTime(json["execute_after"]),
        executedBy:
            json["executed_by"] == null ? null : json["executed_by"] as String,
        expectedAt: json["expected_at"] == null
            ? null
            : _decodeDateTime(json["expected_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        failure: json["failure"] == null
            ? null
            : PayoutFailure.fromJson(
                (json["failure"] as Map).cast<String, Object?>()),
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        initiatedBy: json["initiated_by"] == null
            ? null
            : json["initiated_by"] as String,
        maxAmount: Amount.fromJson(
          (json["max_amount"] as Map).cast<String, Object?>(),
        ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        scheduleId:
            json["schedule_id"] == null ? null : json["schedule_id"] as String,
        scheduledAt: json["scheduled_at"] == null
            ? null
            : _decodeDateTime(json["scheduled_at"]),
        scheduledBy: json["scheduled_by"] == null
            ? null
            : json["scheduled_by"] as String,
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sourceId:
            json["source_id"] == null ? null : json["source_id"] as String,
        status: PayoutStatus.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : _decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (amount != null) "amount": _encodeValue(amount),
        if (balanceTransactionId != null)
          "balance_transaction_id": _encodeValue(balanceTransactionId),
        if (balanceTransactions != null)
          "balance_transactions": _encodeValue(balanceTransactions),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (customData != null) "custom_data": _encodeValue(customData),
        "destination_id": _encodeValue(destinationId),
        if (error != null) "error": _encodeValue(error),
        "execute_after": _encodeValue(executeAfter),
        if (executedBy != null) "executed_by": _encodeValue(executedBy),
        if (expectedAt != null) "expected_at": _encodeValue(expectedAt),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        if (failure != null) "failure": _encodeValue(failure),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        if (initiatedBy != null) "initiated_by": _encodeValue(initiatedBy),
        "max_amount": _encodeValue(maxAmount),
        if (reference != null) "reference": _encodeValue(reference),
        if (scheduleId != null) "schedule_id": _encodeValue(scheduleId),
        if (scheduledAt != null) "scheduled_at": _encodeValue(scheduledAt),
        if (scheduledBy != null) "scheduled_by": _encodeValue(scheduledBy),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sourceId != null) "source_id": _encodeValue(sourceId),
        "status": _encodeValue(status),
        if (succeededAt != null) "succeeded_at": _encodeValue(succeededAt),
      };
}
