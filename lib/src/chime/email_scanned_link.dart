part of '../../chime.dart';

/// A link discovered and evaluated during an email safety scan.
///
/// Exposes [raw], [scheme], [host], and [status], among other contract fields.
final class EmailScannedLink implements InttegroValue {
  final String? raw;
  final String? scheme;
  final String? host;
  final inttegro_shared.ContentSafetyStatus? status;
  final String? reason;
  const EmailScannedLink({
    this.raw,
    this.scheme,
    this.host,
    this.status,
    this.reason,
  });
  factory EmailScannedLink.fromJson(Map<String, Object?> json) =>
      EmailScannedLink(
        raw: json["raw"] == null ? null : json["raw"] as String,
        scheme: json["scheme"] == null ? null : json["scheme"] as String,
        host: json["host"] == null ? null : json["host"] as String,
        status: json["status"] == null
            ? null
            : inttegro_shared.ContentSafetyStatus.fromJson(json["status"]),
        reason: json["reason"] == null ? null : json["reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (raw != null) "raw": encodeValue(raw),
        if (scheme != null) "scheme": encodeValue(scheme),
        if (host != null) "host": encodeValue(host),
        if (status != null) "status": encodeValue(status),
        if (reason != null) "reason": encodeValue(reason),
      };
}
