part of '../../financial_account.dart';

/// Identifies the financial account for an operation.
///
/// Carries [accountId].
final class IDRequest implements InttegroValue {
  final String accountId;
  const IDRequest({required this.accountId});
  factory IDRequest.fromJson(Map<String, Object?> json) =>
      IDRequest(accountId: json["account_id"] as String);
  @override
  Map<String, Object?> toJson() => {"account_id": encodeValue(accountId)};
}
