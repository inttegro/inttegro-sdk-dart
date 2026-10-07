part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLinkDelivery implements _InttegroValue {
  final FileLinkDeliveryMode? mode;
  final String? filename;
  final String? contentType;
  final String? disposition;
  const FileLinkDelivery({
    this.mode,
    this.filename,
    this.contentType,
    this.disposition,
  });
  factory FileLinkDelivery.fromJson(Map<String, Object?> json) =>
      FileLinkDelivery(
        mode: json["mode"] == null
            ? null
            : FileLinkDeliveryMode.fromJson(json["mode"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] == null
            ? null
            : json["content_type"] as String,
        disposition:
            json["disposition"] == null ? null : json["disposition"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (mode != null) "mode": _encodeValue(mode),
        if (filename != null) "filename": _encodeValue(filename),
        if (contentType != null) "content_type": _encodeValue(contentType),
        if (disposition != null) "disposition": _encodeValue(disposition),
      };
}
