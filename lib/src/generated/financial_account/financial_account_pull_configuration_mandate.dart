part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountPullConfigurationMandate implements _InttegroValue {
  final DateTime createdAt;
  final String id;
  final String ipAddress;
  final String userAgent;
  const FinancialAccountPullConfigurationMandate({
    required this.createdAt,
    required this.id,
    required this.ipAddress,
    required this.userAgent,
  });
  factory FinancialAccountPullConfigurationMandate.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPullConfigurationMandate(
        createdAt: _decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        ipAddress: json["ip_address"] as String,
        userAgent: json["user_agent"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": _encodeValue(createdAt),
        "id": _encodeValue(id),
        "ip_address": _encodeValue(ipAddress),
        "user_agent": _encodeValue(userAgent),
      };
}
