part of '../../payout.dart';

/// A transfer of balance funds to a configured financial-account destination.
///
/// [status] and the lifecycle timestamps describe execution progress. [failure]
/// and [error] provide caller-safe failure information when the payout does not
/// complete.
final class Payout implements InttegroValue {
  final inttegro_money.Amount? amount;
  final String? balanceTransactionId;
  final List<BalanceTransaction>? balanceTransactions;
  final DateTime? canceledAt;
  final core.CustomData? customData;
  final String destinationId;
  final Error? error;
  final DateTime executeAfter;
  final String? executedBy;
  final DateTime? expectedAt;
  final DateTime? failedAt;
  final Failure? failure;
  final String id;
  final DateTime initiatedAt;
  final String? initiatedBy;
  final inttegro_money.Amount maxAmount;
  final String? reference;
  final String? scheduleId;
  final DateTime? scheduledAt;
  final String? scheduledBy;
  final DateTime? sentAt;
  final String? sourceId;
  final Status status;
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
            : inttegro_money.Amount.fromJson(
                (json["amount"] as Map).cast<String, Object?>()),
        balanceTransactionId: json["balance_transaction_id"] == null
            ? null
            : json["balance_transaction_id"] as String,
        balanceTransactions: json["balance_transactions"] == null
            ? null
            : (json["balance_transactions"] as List)
                .map((item) => BalanceTransaction.fromJson(
                      (item as Map).cast<String, Object?>(),
                    ))
                .toList(),
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        destinationId: json["destination_id"] as String,
        error: json["error"] == null
            ? null
            : Error.fromJson((json["error"] as Map).cast<String, Object?>()),
        executeAfter: decodeDateTime(json["execute_after"]),
        executedBy:
            json["executed_by"] == null ? null : json["executed_by"] as String,
        expectedAt: json["expected_at"] == null
            ? null
            : decodeDateTime(json["expected_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : decodeDateTime(json["failed_at"]),
        failure: json["failure"] == null
            ? null
            : Failure.fromJson(
                (json["failure"] as Map).cast<String, Object?>()),
        id: json["id"] as String,
        initiatedAt: decodeDateTime(json["initiated_at"]),
        initiatedBy: json["initiated_by"] == null
            ? null
            : json["initiated_by"] as String,
        maxAmount: inttegro_money.Amount.fromJson(
          (json["max_amount"] as Map).cast<String, Object?>(),
        ),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        scheduleId:
            json["schedule_id"] == null ? null : json["schedule_id"] as String,
        scheduledAt: json["scheduled_at"] == null
            ? null
            : decodeDateTime(json["scheduled_at"]),
        scheduledBy: json["scheduled_by"] == null
            ? null
            : json["scheduled_by"] as String,
        sentAt:
            json["sent_at"] == null ? null : decodeDateTime(json["sent_at"]),
        sourceId:
            json["source_id"] == null ? null : json["source_id"] as String,
        status: Status.fromJson(json["status"]),
        succeededAt: json["succeeded_at"] == null
            ? null
            : decodeDateTime(json["succeeded_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (amount != null) "amount": encodeValue(amount),
        if (balanceTransactionId != null)
          "balance_transaction_id": encodeValue(balanceTransactionId),
        if (balanceTransactions != null)
          "balance_transactions": encodeValue(balanceTransactions),
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        if (customData != null) "custom_data": encodeValue(customData),
        "destination_id": encodeValue(destinationId),
        if (error != null) "error": encodeValue(error),
        "execute_after": encodeValue(executeAfter),
        if (executedBy != null) "executed_by": encodeValue(executedBy),
        if (expectedAt != null) "expected_at": encodeValue(expectedAt),
        if (failedAt != null) "failed_at": encodeValue(failedAt),
        if (failure != null) "failure": encodeValue(failure),
        "id": encodeValue(id),
        "initiated_at": encodeValue(initiatedAt),
        if (initiatedBy != null) "initiated_by": encodeValue(initiatedBy),
        "max_amount": encodeValue(maxAmount),
        if (reference != null) "reference": encodeValue(reference),
        if (scheduleId != null) "schedule_id": encodeValue(scheduleId),
        if (scheduledAt != null) "scheduled_at": encodeValue(scheduledAt),
        if (scheduledBy != null) "scheduled_by": encodeValue(scheduledBy),
        if (sentAt != null) "sent_at": encodeValue(sentAt),
        if (sourceId != null) "source_id": encodeValue(sourceId),
        "status": encodeValue(status),
        if (succeededAt != null) "succeeded_at": encodeValue(succeededAt),
      };
}
