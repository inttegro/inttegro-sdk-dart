part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FilePage implements _InttegroValue {
  final int number;
  final int size;
  final List<File> files;
  const FilePage({
    required this.number,
    required this.size,
    required this.files,
  });
  factory FilePage.fromJson(Map<String, Object?> json) => FilePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        files: (json["files"] as List)
            .map((item) => File.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "files": _encodeValue(files),
      };
}
