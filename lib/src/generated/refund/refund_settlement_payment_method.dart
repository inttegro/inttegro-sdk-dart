part of '../../../inttegro.dart';

/// Caller-safe original payment-method snapshot for a refund.
sealed class RefundSettlementPaymentMethod implements _InttegroValue {
  const RefundSettlementPaymentMethod();

  factory RefundSettlementPaymentMethod.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "mobile_money" =>
        RefundSettlementMobileMoneyPaymentMethod.fromJson(value),
      "bank_account" =>
        RefundSettlementBankAccountPaymentMethod.fromJson(value),
      _ => throw const FormatException(
          "Unsupported refund settlement payment-method type",
        ),
    };
  }

  String get id;
  String get type;
}
