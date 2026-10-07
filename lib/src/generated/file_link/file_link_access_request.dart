part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileLinkAccessRequest implements _InttegroValue {
  final int? maxAccesses;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  final List<String>? allowedIpRanges;
  const FileLinkAccessRequest({
    this.maxAccesses,
    this.allowDownload,
    this.allowedOrigins,
    this.allowedIpRanges,
  });
  factory FileLinkAccessRequest.fromJson(Map<String, Object?> json) =>
      FileLinkAccessRequest(
        maxAccesses: json["max_accesses"] == null
            ? null
            : (json["max_accesses"] as num).toInt(),
        allowDownload: json["allow_download"] == null
            ? null
            : json["allow_download"] as bool,
        allowedOrigins: json["allowed_origins"] == null
            ? null
            : (json["allowed_origins"] as List)
                .map((item) => item as String)
                .toList(),
        allowedIpRanges: json["allowed_ip_ranges"] == null
            ? null
            : (json["allowed_ip_ranges"] as List)
                .map((item) => item as String)
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (maxAccesses != null) "max_accesses": _encodeValue(maxAccesses),
        if (allowDownload != null)
          "allow_download": _encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": _encodeValue(allowedOrigins),
        if (allowedIpRanges != null)
          "allowed_ip_ranges": _encodeValue(allowedIpRanges),
      };
}
