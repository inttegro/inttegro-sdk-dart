part of '../../financial_account.dart';

/// The recorded mandate that authorized financial-account pulls.
///
/// Exposes [createdAt], [id], [ipAddress], and [userAgent].
final class PullConfigurationMandate implements InttegroValue {
  final DateTime createdAt;
  final String id;
  final String ipAddress;
  final String userAgent;
  const PullConfigurationMandate({
    required this.createdAt,
    required this.id,
    required this.ipAddress,
    required this.userAgent,
  });
  factory PullConfigurationMandate.fromJson(
    Map<String, Object?> json,
  ) =>
      PullConfigurationMandate(
        createdAt: decodeDateTime(json["created_at"]),
        id: json["id"] as String,
        ipAddress: json["ip_address"] as String,
        userAgent: json["user_agent"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "created_at": encodeValue(createdAt),
        "id": encodeValue(id),
        "ip_address": encodeValue(ipAddress),
        "user_agent": encodeValue(userAgent),
      };
}
