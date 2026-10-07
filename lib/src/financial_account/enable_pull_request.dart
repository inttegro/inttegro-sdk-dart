part of '../../financial_account.dart';

/// Parameters for enabling pulls from a financial account.
///
/// Carries [ipAddress], [userAgent], and [accountId].
final class EnablePullRequest implements InttegroValue {
  final String? ipAddress;
  final String? userAgent;
  final String accountId;
  const EnablePullRequest({
    this.ipAddress,
    this.userAgent,
    required this.accountId,
  });
  factory EnablePullRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      EnablePullRequest(
        ipAddress:
            json["ip_address"] == null ? null : json["ip_address"] as String,
        userAgent:
            json["user_agent"] == null ? null : json["user_agent"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (ipAddress != null) "ip_address": encodeValue(ipAddress),
        if (userAgent != null) "user_agent": encodeValue(userAgent),
        "account_id": encodeValue(accountId),
      };
}
