part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLinkCreation implements _InttegroValue {
  final FileLink fileLink;
  final String url;
  const FileLinkCreation({required this.fileLink, required this.url});
  factory FileLinkCreation.fromJson(Map<String, Object?> json) =>
      FileLinkCreation(
        fileLink: FileLink.fromJson(
          (json["file_link"] as Map).cast<String, Object?>(),
        ),
        url: json["url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "file_link": _encodeValue(fileLink),
        "url": _encodeValue(url),
      };
}
