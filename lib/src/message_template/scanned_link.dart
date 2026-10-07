part of '../../message_template.dart';

/// A link discovered and evaluated during template safety scanning.
///
/// Exposes [host], [raw], [reason], and [scheme], among other contract fields.
final class ScannedLink implements InttegroValue {
  final String? host;
  final String raw;
  final String? reason;
  final String scheme;
  final String status;
  const ScannedLink({
    this.host,
    required this.raw,
    this.reason,
    required this.scheme,
    required this.status,
  });
  factory ScannedLink.fromJson(Map<String, Object?> json) => ScannedLink(
        host: json["host"] == null ? null : json["host"] as String,
        raw: json["raw"] as String,
        reason: json["reason"] == null ? null : json["reason"] as String,
        scheme: json["scheme"] as String,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (host != null) "host": encodeValue(host),
        "raw": encodeValue(raw),
        if (reason != null) "reason": encodeValue(reason),
        "scheme": encodeValue(scheme),
        "status": encodeValue(status),
      };
}
