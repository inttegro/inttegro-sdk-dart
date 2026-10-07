part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileDeliveryDetails implements _InttegroValue {
  final String? publicUrl;
  final String? cacheControl;
  final String? contentType;
  const FileDeliveryDetails({
    this.publicUrl,
    this.cacheControl,
    this.contentType,
  });
  factory FileDeliveryDetails.fromJson(Map<String, Object?> json) =>
      FileDeliveryDetails(
        publicUrl:
            json["public_url"] == null ? null : json["public_url"] as String,
        cacheControl: json["cache_control"] == null
            ? null
            : json["cache_control"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (publicUrl != null) "public_url": _encodeValue(publicUrl),
        if (cacheControl != null) "cache_control": _encodeValue(cacheControl),
        if (contentType != null) "content_type": _encodeValue(contentType),
      };
}
