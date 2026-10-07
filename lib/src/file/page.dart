part of '../../file.dart';

/// A page of files returned by a list operation.
///
/// Exposes [number], [size], and [files].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<File> files;
  const Page({
    required this.number,
    required this.size,
    required this.files,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        files: (json["files"] as List)
            .map((item) => File.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "files": encodeValue(files),
      };
}
