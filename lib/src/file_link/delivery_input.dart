part of '../../file_link.dart';

/// Delivery fields accepted by the file link API.
///
/// Carries [mode], [filename], [contentType], and [disposition].
final class DeliveryInput implements InttegroValue {
  final DeliveryMode? mode;
  final String? filename;
  final String? contentType;
  final String? disposition;
  const DeliveryInput({
    this.mode,
    this.filename,
    this.contentType,
    this.disposition,
  });
  factory DeliveryInput.fromJson(Map<String, Object?> json) => DeliveryInput(
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
