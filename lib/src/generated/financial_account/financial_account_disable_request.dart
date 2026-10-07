part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountDisableRequest implements _InttegroValue {
  final bool? unsetAsPayoutDestination;
  final String accountId;
  const FinancialAccountDisableRequest({
    this.unsetAsPayoutDestination,
    required this.accountId,
  });
  factory FinancialAccountDisableRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountDisableRequest(
        unsetAsPayoutDestination: json["unset_as_payout_destination"] == null
            ? null
            : json["unset_as_payout_destination"] as bool,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (unsetAsPayoutDestination != null)
          "unset_as_payout_destination": _encodeValue(unsetAsPayoutDestination),
        "account_id": _encodeValue(accountId),
      };
}
