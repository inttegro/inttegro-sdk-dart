part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateFileLinkRequest implements _InttegroValue {
  final FileLinkDeliveryInput? delivery;
  final FileLinkAccessRequest? access;
  final FileActorInput? createdBy;
  final CustomData? customData;
  final DateTime? expiresAt;
  final String fileId;
  const CreateFileLinkRequest({
    this.delivery,
    this.access,
    this.createdBy,
    this.customData,
    this.expiresAt,
    required this.fileId,
  });
  factory CreateFileLinkRequest.fromJson(Map<String, Object?> json) =>
      CreateFileLinkRequest(
        delivery: json["delivery"] == null
            ? null
            : FileLinkDeliveryInput.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        access: json["access"] == null
            ? null
            : FileLinkAccessRequest.fromJson(
                (json["access"] as Map).cast<String, Object?>(),
              ),
        createdBy: json["created_by"] == null
            ? null
            : FileActorInput.fromJson(
                (json["created_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (access != null) "access": _encodeValue(access),
        if (createdBy != null) "created_by": _encodeValue(createdBy),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "file_id": _encodeValue(fileId),
      };
}
