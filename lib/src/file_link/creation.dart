part of '../../file_link.dart';

/// A newly created file link and the URL used to open it.
///
/// Exposes [fileLink] and [url].
final class Creation implements InttegroValue {
  final FileLink fileLink;
  final String url;
  const Creation({required this.fileLink, required this.url});
  factory Creation.fromJson(Map<String, Object?> json) => Creation(
        fileLink: FileLink.fromJson(
          (json["file_link"] as Map).cast<String, Object?>(),
        ),
        url: json["url"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "file_link": encodeValue(fileLink),
        "url": encodeValue(url),
      };
}
