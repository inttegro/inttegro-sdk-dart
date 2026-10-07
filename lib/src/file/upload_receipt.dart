part of '../../file.dart';

/// The receipt returned after a file upload is accepted.
///
/// Exposes [contentType], [createdAt], [filename], and [id], among other
/// contract fields.
final class UploadReceipt implements InttegroValue {
  final String contentType;
  final DateTime createdAt;
  final String? filename;
  final String id;
  final String? name;
  final int size;
  final Status status;
  const UploadReceipt({
    required this.contentType,
    required this.createdAt,
    this.filename,
    required this.id,
    this.name,
    required this.size,
    required this.status,
  });
  factory UploadReceipt.fromJson(Map<String, Object?> json) => UploadReceipt(
        contentType: json["content_type"] as String,
        createdAt: decodeDateTime(json["created_at"]),
        filename: json["filename"] == null ? null : json["filename"] as String,
        id: json["id"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        size: (json["size"] as num).toInt(),
        status: Status.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "content_type": encodeValue(contentType),
        "created_at": encodeValue(createdAt),
        if (filename != null) "filename": encodeValue(filename),
        "id": encodeValue(id),
        if (name != null) "name": encodeValue(name),
        "size": encodeValue(size),
        "status": encodeValue(status),
      };
}
