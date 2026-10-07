part of '../../file.dart';

/// A stored file and its processing, safety scan, storage, and delivery state.
///
/// Check [status] and [scanStatus] before assuming file contents are available.
final class File implements InttegroValue {
  final String id;
  final String purpose;
  final Status status;
  final ScanStatus scanStatus;
  final String? name;
  final String? filename;
  final String contentType;
  final int size;
  final String checksumSha256;
  final Actor createdBy;
  final Source source;
  final Media? media;
  final PublicStorage storage;
  final DeliveryDetails? delivery;
  final LatestError? latestError;
  final core.CustomData? customData;
  final core.FileMetadata? metadata;
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
        status: Status.fromJson(json["status"]),
        scanStatus: ScanStatus.fromJson(json["scan_status"]),
        name: json["name"] == null ? null : json["name"] as String,
        filename: json["filename"] == null ? null : json["filename"] as String,
        contentType: json["content_type"] as String,
        size: (json["size"] as num).toInt(),
        checksumSha256: json["checksum_sha256"] as String,
        createdBy: Actor.fromJson(
          (json["created_by"] as Map).cast<String, Object?>(),
        ),
        source: Source.fromJson(
          (json["source"] as Map).cast<String, Object?>(),
        ),
        media: json["media"] == null
            ? null
            : Media.fromJson((json["media"] as Map).cast<String, Object?>()),
        storage: PublicStorage.fromJson(
          (json["storage"] as Map).cast<String, Object?>(),
        ),
        delivery: json["delivery"] == null
            ? null
            : DeliveryDetails.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        latestError: json["latest_error"] == null
            ? null
            : LatestError.fromJson(
                (json["latest_error"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        metadata: json["metadata"] == null
            ? null
            : core.FileMetadata.fromJson(json["metadata"]),
        createdAt: decodeDateTime(json["created_at"]),
        updatedAt: decodeDateTime(json["updated_at"]),
        availableAt: json["available_at"] == null
            ? null
            : decodeDateTime(json["available_at"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "purpose": encodeValue(purpose),
        "status": encodeValue(status),
        "scan_status": encodeValue(scanStatus),
        if (name != null) "name": encodeValue(name),
        if (filename != null) "filename": encodeValue(filename),
        "content_type": encodeValue(contentType),
        "size": encodeValue(size),
        "checksum_sha256": encodeValue(checksumSha256),
        "created_by": encodeValue(createdBy),
        "source": encodeValue(source),
        if (media != null) "media": encodeValue(media),
        "storage": encodeValue(storage),
        if (delivery != null) "delivery": encodeValue(delivery),
        if (latestError != null) "latest_error": encodeValue(latestError),
        if (customData != null) "custom_data": encodeValue(customData),
        if (metadata != null) "metadata": encodeValue(metadata),
        "created_at": encodeValue(createdAt),
        "updated_at": encodeValue(updatedAt),
        if (availableAt != null) "available_at": encodeValue(availableAt),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
      };
}
