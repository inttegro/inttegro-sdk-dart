part of '../../file_link.dart';

/// Access limits and origin restrictions supplied when creating a file link.
final class AccessRequest implements InttegroValue {
  final int? maxAccesses;
  final bool? allowDownload;
  final List<String>? allowedOrigins;
  final List<String>? allowedIpRanges;
  const AccessRequest({
    this.maxAccesses,
    this.allowDownload,
    this.allowedOrigins,
    this.allowedIpRanges,
  });
  factory AccessRequest.fromJson(Map<String, Object?> json) => AccessRequest(
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
        if (maxAccesses != null) "max_accesses": encodeValue(maxAccesses),
        if (allowDownload != null) "allow_download": encodeValue(allowDownload),
        if (allowedOrigins != null)
          "allowed_origins": encodeValue(allowedOrigins),
        if (allowedIpRanges != null)
          "allowed_ip_ranges": encodeValue(allowedIpRanges),
      };
}
