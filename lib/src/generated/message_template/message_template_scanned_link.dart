part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class MessageTemplateScannedLink implements _InttegroValue {
  final String? host;
  final String raw;
  final String? reason;
  final String scheme;
  final String status;
  const MessageTemplateScannedLink({
    this.host,
    required this.raw,
    this.reason,
    required this.scheme,
    required this.status,
  });
  factory MessageTemplateScannedLink.fromJson(Map<String, Object?> json) =>
      MessageTemplateScannedLink(
        host: json["host"] == null ? null : json["host"] as String,
        raw: json["raw"] as String,
        reason: json["reason"] == null ? null : json["reason"] as String,
        scheme: json["scheme"] as String,
        status: json["status"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (host != null) "host": _encodeValue(host),
        "raw": _encodeValue(raw),
        if (reason != null) "reason": _encodeValue(reason),
        "scheme": _encodeValue(scheme),
        "status": _encodeValue(status),
      };
}
