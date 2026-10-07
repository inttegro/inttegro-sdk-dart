part of '../../order.dart';

/// The financial account selected as an order's payout destination.
final class PayoutSettingsRequestDestination implements InttegroValue {
  final String financialAccountId;
  const PayoutSettingsRequestDestination({
    required this.financialAccountId,
  });
  factory PayoutSettingsRequestDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      PayoutSettingsRequestDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": encodeValue(financialAccountId),
      };
}
