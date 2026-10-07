part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileLinkPage implements _InttegroValue {
  final int number;
  final int size;
  final List<FileLink> fileLinks;
  const FileLinkPage({
    required this.number,
    required this.size,
    required this.fileLinks,
  });
  factory FileLinkPage.fromJson(Map<String, Object?> json) => FileLinkPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        fileLinks: (json["file_links"] as List)
            .map((item) =>
                FileLink.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "file_links": _encodeValue(fileLinks),
      };
}
