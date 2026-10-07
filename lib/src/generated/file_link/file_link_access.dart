part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLinkAccess implements _InttegroValue {
  final int? maxAccesses;
  final int? accessCount;
  final DateTime? lastAccessedAt;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  const FileLinkAccess({
    this.maxAccesses,
    this.accessCount,
    this.lastAccessedAt,
    this.allowDownload,
    this.allowedOrigins,
  });
  factory FileLinkAccess.fromJson(Map<String, Object?> json) => FileLinkAccess(
        maxAccesses: json["max_accesses"] == null
            ? null
            : (json["max_accesses"] as num).toInt(),
        accessCount: json["access_count"] == null
            ? null
            : (json["access_count"] as num).toInt(),
        lastAccessedAt: json["last_accessed_at"] == null
            ? null
            : _decodeDateTime(json["last_accessed_at"]),
        allowDownload: json["allow_download"] == null
            ? null
            : json["allow_download"] as bool,
        allowedOrigins: json["allowed_origins"] == null
            ? null
            : (json["allowed_origins"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAccesses != null) "max_accesses": _encodeValue(maxAccesses),
        if (accessCount != null) "access_count": _encodeValue(accessCount),
        if (lastAccessedAt != null)
          "last_accessed_at": _encodeValue(lastAccessedAt),
        if (allowDownload != null)
          "allow_download": _encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": _encodeValue(allowedOrigins),
      };
}
