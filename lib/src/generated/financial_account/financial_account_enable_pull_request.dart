part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountEnablePullRequest implements _InttegroValue {
  final String? ipAddress;
  final String? userAgent;
  final String accountId;
  const FinancialAccountEnablePullRequest({
    this.ipAddress,
    this.userAgent,
    required this.accountId,
  });
  factory FinancialAccountEnablePullRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountEnablePullRequest(
        ipAddress:
            json["ip_address"] == null ? null : json["ip_address"] as String,
        userAgent:
            json["user_agent"] == null ? null : json["user_agent"] as String,
        accountId: json["account_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (ipAddress != null) "ip_address": _encodeValue(ipAddress),
        if (userAgent != null) "user_agent": _encodeValue(userAgent),
        "account_id": _encodeValue(accountId),
      };
}
