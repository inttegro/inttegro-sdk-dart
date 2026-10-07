part of '../../payment.dart';

/// A payment and its current processing state.
///
/// The model includes the amount, lifecycle timestamps, payment-method
/// snapshot, latest attempt, and any [nextAction] the customer or merchant must
/// complete. Compare [status] with the constants on [Status] instead of parsing
/// its wire value directly.
final class Payment implements InttegroValue {
  final String id;
  final Status status;
  final String statementDescriptor;
  final inttegro_money.Amount amount;
  final BillingDetails? billingDetails;
  final inttegro_balance_transaction.BalanceTransaction? balanceTransaction;
  final inttegro_payment_method.Snapshot? paymentMethod;
  final Customer? customer;
  final inttegro_order.Receipt? receipt;
  final Attempt? latestAttempt;
  final NextAction? nextAction;
  final Error? latestError;
  final DateTime initiatedAt;
  final DateTime? executedAt;
  final DateTime? paidAt;
  final DateTime? canceledAt;
  final DateTime? dueAt;
  final DateTime? expiredAt;
  final DateTime? failedAt;
  final bool? paidOffline;
  final List<String>? paymentMethodTypes;
  final inttegro_payout.PaymentConfiguration? payoutConfiguration;
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
        status: Status.fromJson(json["status"]),
        statementDescriptor: json["statement_descriptor"] as String,
        amount: inttegro_money.Amount.fromJson(
            (json["amount"] as Map).cast<String, Object?>()),
        billingDetails: json["billing_details"] == null
            ? null
            : BillingDetails.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        balanceTransaction: json["balance_transaction"] == null
            ? null
            : inttegro_balance_transaction.BalanceTransaction.fromJson(
                (json["balance_transaction"] as Map).cast<String, Object?>(),
              ),
        paymentMethod: json["payment_method"] == null
            ? null
            : inttegro_payment_method.Snapshot.fromJson(
                (json["payment_method"] as Map).cast<String, Object?>(),
              ),
        customer: json["customer"] == null
            ? null
            : Customer.fromJson(
                (json["customer"] as Map).cast<String, Object?>(),
              ),
        receipt: json["receipt"] == null
            ? null
            : inttegro_order.Receipt.fromJson(
                (json["receipt"] as Map).cast<String, Object?>(),
              ),
        latestAttempt: json["latest_attempt"] == null
            ? null
            : Attempt.fromJson(
                (json["latest_attempt"] as Map).cast<String, Object?>(),
              ),
        nextAction: json["next_action"] == null
            ? null
            : NextAction.fromJson(
                (json["next_action"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : Error.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        initiatedAt: decodeDateTime(json["initiated_at"]),
        executedAt: json["executed_at"] == null
            ? null
            : decodeDateTime(json["executed_at"]),
        paidAt:
            json["paid_at"] == null ? null : decodeDateTime(json["paid_at"]),
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        dueAt: json["due_at"] == null ? null : decodeDateTime(json["due_at"]),
        expiredAt: json["expired_at"] == null
            ? null
            : decodeDateTime(json["expired_at"]),
        failedAt: json["failed_at"] == null
            ? null
            : decodeDateTime(json["failed_at"]),
        paidOffline:
            json["paid_offline"] == null ? null : json["paid_offline"] as bool,
        paymentMethodTypes: json["payment_method_types"] == null
            ? null
            : (json["payment_method_types"] as List)
                .map((item) => item as String)
                .toList(),
        payoutConfiguration: json["payout_configuration"] == null
            ? null
            : inttegro_payout.PaymentConfiguration.fromJson(
                (json["payout_configuration"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "status": encodeValue(status),
        "statement_descriptor": encodeValue(statementDescriptor),
        "amount": encodeValue(amount),
        if (billingDetails != null)
          "billing_details": encodeValue(billingDetails),
        if (balanceTransaction != null)
          "balance_transaction": encodeValue(balanceTransaction),
        if (paymentMethod != null) "payment_method": encodeValue(paymentMethod),
        if (customer != null) "customer": encodeValue(customer),
        if (receipt != null) "receipt": encodeValue(receipt),
        if (latestAttempt != null) "latest_attempt": encodeValue(latestAttempt),
        if (nextAction != null) "next_action": encodeValue(nextAction),
        if (latestError != null) "latest_error": encodeValue(latestError),
        "initiated_at": encodeValue(initiatedAt),
        if (executedAt != null) "executed_at": encodeValue(executedAt),
        if (paidAt != null) "paid_at": encodeValue(paidAt),
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        if (dueAt != null) "due_at": encodeValue(dueAt),
        if (expiredAt != null) "expired_at": encodeValue(expiredAt),
        if (failedAt != null) "failed_at": encodeValue(failedAt),
        if (paidOffline != null) "paid_offline": encodeValue(paidOffline),
        if (paymentMethodTypes != null)
          "payment_method_types": encodeValue(paymentMethodTypes),
        if (payoutConfiguration != null)
          "payout_configuration": encodeValue(payoutConfiguration),
      };
}
