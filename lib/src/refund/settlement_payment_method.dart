part of '../../refund.dart';

/// Caller-safe original payment-method snapshot for a refund.
sealed class SettlementPaymentMethod implements InttegroValue {
  const SettlementPaymentMethod();

  factory SettlementPaymentMethod.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "mobile_money" => SettlementMobileMoneyPaymentMethod.fromJson(value),
      "bank_account" => SettlementBankAccountPaymentMethod.fromJson(value),
      _ => throw const FormatException(
          "Unsupported refund settlement payment-method type",
        ),
    };
  }

  String get id;
  String get type;
}
