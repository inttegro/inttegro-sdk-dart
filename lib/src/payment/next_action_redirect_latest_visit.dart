part of '../../payment.dart';

/// The latest recorded visit to a payment redirect.
final class NextActionRedirectLatestVisit implements InttegroValue {
  final String userAgent;
  final String ipAddress;
  final DateTime at;
  const NextActionRedirectLatestVisit({
    required this.userAgent,
    required this.ipAddress,
    required this.at,
  });
  factory NextActionRedirectLatestVisit.fromJson(
    Map<String, Object?> json,
  ) =>
      NextActionRedirectLatestVisit(
        userAgent: json["user_agent"] as String,
        ipAddress: json["ip_address"] as String,
        at: decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "user_agent": encodeValue(userAgent),
        "ip_address": encodeValue(ipAddress),
        "at": encodeValue(at),
      };
}
