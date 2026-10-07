part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UploadRequestConstraintsInput implements _InttegroValue {
  final int? minSize;
  final int? maxSize;
  final int? exactSize;
  final List<String>? contentTypes;
  final List<String>? extensions;
  final String? filename;
  const UploadRequestConstraintsInput({
    this.minSize,
    this.maxSize,
    this.exactSize,
    this.contentTypes,
    this.extensions,
    this.filename,
  });
  factory UploadRequestConstraintsInput.fromJson(Map<String, Object?> json) =>
      UploadRequestConstraintsInput(
        minSize:
            json["min_size"] == null ? null : (json["min_size"] as num).toInt(),
        maxSize:
            json["max_size"] == null ? null : (json["max_size"] as num).toInt(),
        exactSize: json["exact_size"] == null
            ? null
            : (json["exact_size"] as num).toInt(),
        contentTypes: json["content_types"] == null
            ? null
            : (json["content_types"] as List)
                .map((item) => item as String)
                .toList(),
        extensions: json["extensions"] == null
            ? null
            : (json["extensions"] as List)
                .map((item) => item as String)
                .toList(),
        filename: json["filename"] == null ? null : json["filename"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (minSize != null) "min_size": _encodeValue(minSize),
        if (maxSize != null) "max_size": _encodeValue(maxSize),
        if (exactSize != null) "exact_size": _encodeValue(exactSize),
        if (contentTypes != null) "content_types": _encodeValue(contentTypes),
        if (extensions != null) "extensions": _encodeValue(extensions),
        if (filename != null) "filename": _encodeValue(filename),
      };
}
