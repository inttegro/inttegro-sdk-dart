part of '../../financial_account.dart';

/// Parameters for disabling a financial account.
///
/// Carries [unsetAsPayoutDestination] and [accountId].
final class DisableRequest implements InttegroValue {
  final bool? unsetAsPayoutDestination;
  final String accountId;
  const DisableRequest({
    this.unsetAsPayoutDestination,
    required this.accountId,
  });
  factory DisableRequest.fromJson(Map<String, Object?> json) => DisableRequest(
        unsetAsPayoutDestination: json["unset_as_payout_destination"] == null
            ? null
            : json["unset_as_payout_destination"] as bool,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (unsetAsPayoutDestination != null)
          "unset_as_payout_destination": encodeValue(unsetAsPayoutDestination),
        "account_id": encodeValue(accountId),
      };
}
