part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Payment implements _InttegroValue {
  final String id;
  final PaymentStatus status;
  final String statementDescriptor;
  final Amount amount;
  final PaymentBillingDetails? billingDetails;
  final BalanceTransaction? balanceTransaction;
  final PaymentMethodSnapshot? paymentMethod;
  final PaymentCustomer? customer;
  final OrderReceipt? receipt;
  final PaymentAttempt? latestAttempt;
  final PaymentNextAction? nextAction;
  final PaymentError? latestError;
  final DateTime initiatedAt;
  final DateTime? executedAt;
  final DateTime? paidAt;
  final DateTime? canceledAt;
  final DateTime? dueAt;
  final DateTime? expiredAt;
  final DateTime? failedAt;
  final bool? paidOffline;
  final List<String>? paymentMethodTypes;
  final PaymentPayoutConfiguration? payoutConfiguration;
  const Payment({
    required this.id,
    required this.status,
    required this.statementDescriptor,
    required this.amount,
    this.billingDetails,
    this.balanceTransaction,
    this.paymentMethod,
    this.customer,
    this.receipt,
    this.latestAttempt,
    this.nextAction,
    this.latestError,
    required this.initiatedAt,
    this.executedAt,
    this.paidAt,
    this.canceledAt,
    this.dueAt,
    this.expiredAt,
    this.failedAt,
    this.paidOffline,
    this.paymentMethodTypes,
    this.payoutConfiguration,
  });
  factory Payment.fromJson(Map<String, Object?> json) => Payment(
        id: json["id"] as String,
        status: PaymentStatus.fromJson(json["status"]),
        statementDescriptor: json["statement_descriptor"] as String,
        amount:
            Amount.fromJson((json["amount"] as Map).cast<String, Object?>()),
        billingDetails: json["billing_details"] == null
            ? null
            : PaymentBillingDetails.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        balanceTransaction: json["balance_transaction"] == null
            ? null
            : BalanceTransaction.fromJson(
                (json["balance_transaction"] as Map).cast<String, Object?>(),
              ),
        paymentMethod: json["payment_method"] == null
            ? null
            : PaymentMethodSnapshot.fromJson(
                (json["payment_method"] as Map).cast<String, Object?>(),
              ),
        customer: json["customer"] == null
            ? null
            : PaymentCustomer.fromJson(
                (json["customer"] as Map).cast<String, Object?>(),
              ),
        receipt: json["receipt"] == null
            ? null
            : OrderReceipt.fromJson(
                (json["receipt"] as Map).cast<String, Object?>(),
              ),
        latestAttempt: json["latest_attempt"] == null
            ? null
            : PaymentAttempt.fromJson(
                (json["latest_attempt"] as Map).cast<String, Object?>(),
              ),
        nextAction: json["next_action"] == null
            ? null
            : PaymentNextAction.fromJson(
                (json["next_action"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : PaymentError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        executedAt: json["executed_at"] == null
            ? null
            : _decodeDateTime(json["executed_at"]),
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        dueAt: json["due_at"] == null ? null : _decodeDateTime(json["due_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : _decodeDateTime(json["expired_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : _decodeDateTime(json["failed_at"]),
        paidOffline:
            json["paid_offline"] == null ? null : json["paid_offline"] as bool,
        paymentMethodTypes: json["payment_method_types"] == null
            ? null
            : (json["payment_method_types"] as List)
                .map((item) => item as String)
                .toList(),
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : PaymentPayoutConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "status": _encodeValue(status),
        "statement_descriptor": _encodeValue(statementDescriptor),
        "amount": _encodeValue(amount),
        if (billingDetails != null)
          "billing_details": _encodeValue(billingDetails),
        if (balanceTransaction != null)
          "balance_transaction": _encodeValue(balanceTransaction),
        if (paymentMethod != null)
          "payment_method": _encodeValue(paymentMethod),
        if (customer != null) "customer": _encodeValue(customer),
        if (receipt != null) "receipt": _encodeValue(receipt),
        if (latestAttempt != null)
          "latest_attempt": _encodeValue(latestAttempt),
        if (nextAction != null) "next_action": _encodeValue(nextAction),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        "initiated_at": _encodeValue(initiatedAt),
        if (executedAt != null) "executed_at": _encodeValue(executedAt),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (dueAt != null) "due_at": _encodeValue(dueAt),
        if (expiredAt != null) "expired_at": _encodeValue(expiredAt),
        if (failedAt != null) "failed_at": _encodeValue(failedAt),
        if (paidOffline != null) "paid_offline": _encodeValue(paidOffline),
        if (paymentMethodTypes != null)
          "payment_method_types": _encodeValue(paymentMethodTypes),
        if (payoutConfiguration != null)
          "payout_configuration": _encodeValue(payoutConfiguration),
      };
}
