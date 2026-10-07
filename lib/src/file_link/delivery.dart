part of '../../file_link.dart';

/// How a file link presents its file to a recipient.
///
/// Exposes [mode], [filename], [contentType], and [disposition].
final class Delivery implements InttegroValue {
  final DeliveryMode? mode;
  final String? filename;
  final String? contentType;
  final String? disposition;
  const Delivery({
    this.mode,
    this.filename,
    this.contentType,
    this.disposition,
  });
  factory Delivery.fromJson(Map<String, Object?> json) => Delivery(
        mode: json["mode"] == null ? null : DeliveryMode.fromJson(json["mode"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        disposition:
            json["disposition"] == null ? null : json["disposition"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (mode != null) "mode": encodeValue(mode),
        if (filename != null) "filename": encodeValue(filename),
        if (contentType != null) "content_type": encodeValue(contentType),
        if (disposition != null) "disposition": encodeValue(disposition),
      };
}
