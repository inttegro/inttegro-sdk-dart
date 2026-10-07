part of '../../upload_request.dart';

/// Constraints fields accepted by the upload request API.
///
/// Carries [minSize], [maxSize], [exactSize], and [contentTypes], among other
/// supported fields.
final class ConstraintsInput implements InttegroValue {
  final int? minSize;
  final int? maxSize;
  final int? exactSize;
  final List<String>? contentTypes;
  final List<String>? extensions;
  final String? filename;
  const ConstraintsInput({
    this.minSize,
    this.maxSize,
    this.exactSize,
    this.contentTypes,
    this.extensions,
    this.filename,
  });
  factory ConstraintsInput.fromJson(Map<String, Object?> json) =>
      ConstraintsInput(
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
        if (minSize != null) "min_size": encodeValue(minSize),
        if (maxSize != null) "max_size": encodeValue(maxSize),
        if (exactSize != null) "exact_size": encodeValue(exactSize),
        if (contentTypes != null) "content_types": encodeValue(contentTypes),
        if (extensions != null) "extensions": encodeValue(extensions),
        if (filename != null) "filename": encodeValue(filename),
      };
}
