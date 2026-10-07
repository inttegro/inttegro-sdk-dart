part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionRedirectLatestVisit implements _InttegroValue {
  final String userAgent;
  final String ipAddress;
  final DateTime at;
  const PaymentNextActionRedirectLatestVisit({
    required this.userAgent,
    required this.ipAddress,
    required this.at,
  });
  factory PaymentNextActionRedirectLatestVisit.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentNextActionRedirectLatestVisit(
        userAgent: json["user_agent"] as String,
        ipAddress: json["ip_address"] as String,
        at: _decodeDateTime(json["at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "user_agent": _encodeValue(userAgent),
        "ip_address": _encodeValue(ipAddress),
        "at": _encodeValue(at),
      };
}
