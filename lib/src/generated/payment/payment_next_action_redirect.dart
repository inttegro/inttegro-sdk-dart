part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentNextActionRedirect implements _InttegroValue {
  final String redirectUrl;
  final DateTime validUntil;
  final PaymentNextActionRedirectLatestVisit? latestVisit;
  const PaymentNextActionRedirect({
    required this.redirectUrl,
    required this.validUntil,
    this.latestVisit,
  });
  factory PaymentNextActionRedirect.fromJson(Map<String, Object?> json) =>
      PaymentNextActionRedirect(
        redirectUrl: json["redirect_url"] as String,
        validUntil: _decodeDateTime(json["valid_until"]),
        latestVisit: json["latest_visit"] == null
            ? null
            : PaymentNextActionRedirectLatestVisit.fromJson(
                (json["latest_visit"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "redirect_url": _encodeValue(redirectUrl),
        "valid_until": _encodeValue(validUntil),
        if (latestVisit != null) "latest_visit": _encodeValue(latestVisit),
      };
}
