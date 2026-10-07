part of '../../file_link.dart';

/// Access limits and observed usage for a file link.
///
/// Exposes [maxAccesses], [accessCount], [lastAccessedAt], and
/// [allowDownload], among other contract fields.
final class Access implements InttegroValue {
  final int? maxAccesses;
  final int? accessCount;
  final DateTime? lastAccessedAt;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  const Access({
    this.maxAccesses,
    this.accessCount,
    this.lastAccessedAt,
    this.allowDownload,
    this.allowedOrigins,
  });
  factory Access.fromJson(Map<String, Object?> json) => Access(
        maxAccesses: json["max_accesses"] == null
            ? null
            : (json["max_accesses"] as num).toInt(),
        accessCount: json["access_count"] == null
            ? null
            : (json["access_count"] as num).toInt(),
        lastAccessedAt: json["last_accessed_at"] == null
            ? null
            : decodeDateTime(json["last_accessed_at"]),
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
        if (maxAccesses != null) "max_accesses": encodeValue(maxAccesses),
        if (accessCount != null) "access_count": encodeValue(accessCount),
        if (lastAccessedAt != null)
          "last_accessed_at": encodeValue(lastAccessedAt),
        if (allowDownload != null) "allow_download": encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": encodeValue(allowedOrigins),
      };
}
