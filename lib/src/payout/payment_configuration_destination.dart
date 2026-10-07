part of '../../payout.dart';

/// The financial account selected as a payment's payout destination.
final class PaymentConfigurationDestination implements InttegroValue {
  final String financialAccountId;
  const PaymentConfigurationDestination({
    required this.financialAccountId,
  });
  factory PaymentConfigurationDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentConfigurationDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": encodeValue(financialAccountId),
      };
}
