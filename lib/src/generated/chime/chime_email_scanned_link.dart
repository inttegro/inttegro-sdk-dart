part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeEmailScannedLink implements _InttegroValue {
  final String? raw;
  final String? scheme;
  final String? host;
  final ContentSafetyStatus? status;
  final String? reason;
  const ChimeEmailScannedLink({
    this.raw,
    this.scheme,
    this.host,
    this.status,
    this.reason,
  });
  factory ChimeEmailScannedLink.fromJson(Map<String, Object?> json) =>
      ChimeEmailScannedLink(
        raw: json["raw"] == null ? null : json["raw"] as String,
        scheme: json["scheme"] == null ? null : json["scheme"] as String,
        host: json["host"] == null ? null : json["host"] as String,
        status: json["status"] == null
            ? null
            : ContentSafetyStatus.fromJson(json["status"]),
        reason: json["reason"] == null ? null : json["reason"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (raw != null) "raw": _encodeValue(raw),
        if (scheme != null) "scheme": _encodeValue(scheme),
        if (host != null) "host": _encodeValue(host),
        if (status != null) "status": _encodeValue(status),
        if (reason != null) "reason": _encodeValue(reason),
      };
}
