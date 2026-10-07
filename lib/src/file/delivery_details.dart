part of '../../file.dart';

/// Public delivery metadata for an available file.
///
/// Exposes [publicUrl], [cacheControl], and [contentType].
final class DeliveryDetails implements InttegroValue {
  final String? publicUrl;
  final String? cacheControl;
  final String? contentType;
  const DeliveryDetails({
    this.publicUrl,
    this.cacheControl,
    this.contentType,
  });
  factory DeliveryDetails.fromJson(Map<String, Object?> json) =>
      DeliveryDetails(
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
        if (publicUrl != null) "public_url": encodeValue(publicUrl),
        if (cacheControl != null) "cache_control": encodeValue(cacheControl),
        if (contentType != null) "content_type": encodeValue(contentType),
      };
}
