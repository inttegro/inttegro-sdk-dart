part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class File implements _InttegroValue {
  final String id;
  final String purpose;
  final FileStatus status;
  final FileScanStatus scanStatus;
  final String? name;
  final String? filename;
  final String contentType;
  final int size;
  final String checksumSha256;
  final FileActor createdBy;
  final FileSource source;
  final FileMedia? media;
  final PublicFileStorage storage;
  final FileDeliveryDetails? delivery;
  final FileLatestError? latestError;
  final CustomData? customData;
  final FileMetadata? metadata;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? availableAt;
  final DateTime? expiresAt;
  const File({
    required this.id,
    required this.purpose,
    required this.status,
    required this.scanStatus,
    this.name,
    this.filename,
    required this.contentType,
    required this.size,
    required this.checksumSha256,
    required this.createdBy,
    required this.source,
    this.media,
    required this.storage,
    this.delivery,
    this.latestError,
    this.customData,
    this.metadata,
    required this.createdAt,
    required this.updatedAt,
    this.availableAt,
    this.expiresAt,
  });
  factory File.fromJson(Map<String, Object?> json) => File(
        id: json["id"] as String,
        purpose: json["purpose"] as String,
        status: FileStatus.fromJson(json["status"]),
        scanStatus: FileScanStatus.fromJson(json["scan_status"]),
        name: json["name"] == null ? null : json["name"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] as String,
        size: (json["size"] as num).toInt(),
        checksumSha256: json["checksum_sha256"] as String,
        createdBy: FileActor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        source: FileSource.fromJson(
          (json["source"] as Map).cast<String, Object?>(),
        ),
        media: json["media"] == null
            ? null
            : FileMedia.fromJson(
                (json["media"] as Map).cast<String, Object?>()),
        storage: PublicFileStorage.fromJson(
          (json["storage"] as Map).cast<String, Object?>(),
        ),
        delivery: json["delivery"] == null
            ? null
            : FileDeliveryDetails.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : FileLatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : FileMetadata.fromJson(json["metadata"]),
        createdAt: _decodeDateTime(json["created_at"]),
        updatedAt: _decodeDateTime(json["updated_at"]),
        availableAt: json["available_at"] == null
            ? null
            : _decodeDateTime(json["available_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "purpose": _encodeValue(purpose),
        "status": _encodeValue(status),
        "scan_status": _encodeValue(scanStatus),
        if (name != null) "name": _encodeValue(name),
        if (filename != null) "filename": _encodeValue(filename),
        "content_type": _encodeValue(contentType),
        "size": _encodeValue(size),
        "checksum_sha256": _encodeValue(checksumSha256),
        "created_by": _encodeValue(createdBy),
        "source": _encodeValue(source),
        if (media != null) "media": _encodeValue(media),
        "storage": _encodeValue(storage),
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (latestError != null) "latest_error": _encodeValue(latestError),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (metadata != null) "metadata": _encodeValue(metadata),
        "created_at": _encodeValue(createdAt),
        "updated_at": _encodeValue(updatedAt),
        if (availableAt != null) "available_at": _encodeValue(availableAt),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
      };
}
