part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentPayoutConfigurationDestination implements _InttegroValue {
  final String financialAccountId;
  const PaymentPayoutConfigurationDestination({
    required this.financialAccountId,
  });
  factory PaymentPayoutConfigurationDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentPayoutConfigurationDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": _encodeValue(financialAccountId),
      };
}
