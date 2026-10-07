part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileUploadReceipt implements _InttegroValue {
  final String contentType;
  final DateTime createdAt;
  final String? filename;
  final String id;
  final String? name;
  final int size;
  final FileStatus status;
  const FileUploadReceipt({
    required this.contentType,
    required this.createdAt,
    this.filename,
    required this.id,
    this.name,
    required this.size,
    required this.status,
  });
  factory FileUploadReceipt.fromJson(Map<String, Object?> json) =>
      FileUploadReceipt(
        contentType: json["content_type"] as String,
        createdAt: _decodeDateTime(json["created_at"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        size: (json["size"] as num).toInt(),
        status: FileStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_type": _encodeValue(contentType),
        "created_at": _encodeValue(createdAt),
        if (filename != null) "filename": _encodeValue(filename),
        "id": _encodeValue(id),
        if (name != null) "name": _encodeValue(name),
        "size": _encodeValue(size),
        "status": _encodeValue(status),
      };
}
