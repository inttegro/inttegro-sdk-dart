part of '../../payment.dart';

/// A payment-confirmation challenge and its current attempt state.
///
/// Exposes [expiresAt], [scheme], [request], and [attempt], among other
/// contract fields.
final class NextActionConfirm implements InttegroValue {
  final DateTime expiresAt;
  final String scheme;
  final NextActionConfirmRequest? request;
  final NextActionConfirmAttempt? attempt;
  final bool confirmed;
  final String status;
  const NextActionConfirm({
    required this.expiresAt,
    required this.scheme,
    this.request,
    this.attempt,
    required this.confirmed,
    required this.status,
  });
  factory NextActionConfirm.fromJson(Map<String, Object?> json) =>
      NextActionConfirm(
        expiresAt: decodeDateTime(json["expires_at"]),
        scheme: json["scheme"] as String,
        request: json["request"] == null
            ? null
            : NextActionConfirmRequest.fromJson(
                (json["request"] as Map).cast<String, Object?>(),
              ),
        attempt: json["attempt"] == null
            ? null
            : NextActionConfirmAttempt.fromJson(
                (json["attempt"] as Map).cast<String, Object?>(),
              ),
        confirmed: json["confirmed"] as bool,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "expires_at": encodeValue(expiresAt),
        "scheme": encodeValue(scheme),
        if (request != null) "request": encodeValue(request),
        if (attempt != null) "attempt": encodeValue(attempt),
        "confirmed": encodeValue(confirmed),
        "status": encodeValue(status),
      };
}
