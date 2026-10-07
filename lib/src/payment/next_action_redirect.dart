part of '../../payment.dart';

/// A redirect the payer must visit before a payment can advance.
///
/// Exposes [redirectUrl], [validUntil], and [latestVisit].
final class NextActionRedirect implements InttegroValue {
  final String redirectUrl;
  final DateTime validUntil;
  final NextActionRedirectLatestVisit? latestVisit;
  const NextActionRedirect({
    required this.redirectUrl,
    required this.validUntil,
    this.latestVisit,
  });
  factory NextActionRedirect.fromJson(Map<String, Object?> json) =>
      NextActionRedirect(
        redirectUrl: json["redirect_url"] as String,
        validUntil: decodeDateTime(json["valid_until"]),
        latestVisit: json["latest_visit"] == null
            ? null
            : NextActionRedirectLatestVisit.fromJson(
                (json["latest_visit"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "redirect_url": encodeValue(redirectUrl),
        "valid_until": encodeValue(validUntil),
        if (latestVisit != null) "latest_visit": encodeValue(latestVisit),
      };
}
