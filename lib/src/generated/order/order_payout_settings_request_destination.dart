part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class OrderPayoutSettingsRequestDestination implements _InttegroValue {
  final String financialAccountId;
  const OrderPayoutSettingsRequestDestination({
    required this.financialAccountId,
  });
  factory OrderPayoutSettingsRequestDestination.fromJson(
    Map<String, Object?> json,
  ) =>
      OrderPayoutSettingsRequestDestination(
        financialAccountId: json["financial_account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "financial_account_id": _encodeValue(financialAccountId),
      };
}
