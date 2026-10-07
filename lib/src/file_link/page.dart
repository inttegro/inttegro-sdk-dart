part of '../../file_link.dart';

/// A page of file links returned by a list operation.
///
/// Exposes [number], [size], and [fileLinks].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<FileLink> fileLinks;
  const Page({
    required this.number,
    required this.size,
    required this.fileLinks,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        fileLinks: (json["file_links"] as List)
            .map((item) =>
                FileLink.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "file_links": encodeValue(fileLinks),
      };
}
