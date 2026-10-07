part of '../../file_link.dart';

/// Parameters for creating a file link.
///
/// Carries [delivery], [access], [createdBy], and [customData], among other
/// supported fields.
final class CreateRequest implements InttegroValue {
  final DeliveryInput? delivery;
  final AccessRequest? access;
  final inttegro_file.ActorInput? createdBy;
  final core.CustomData? customData;
  final DateTime? expiresAt;
  final String fileId;
  const CreateRequest({
    this.delivery,
    this.access,
    this.createdBy,
    this.customData,
    this.expiresAt,
    required this.fileId,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        delivery: json["delivery"] == null
            ? null
            : DeliveryInput.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        access: json["access"] == null
            ? null
            : AccessRequest.fromJson(
                (json["access"] as Map).cast<String, Object?>(),
              ),
        createdBy: json["created_by"] == null
            ? null
            : inttegro_file.ActorInput.fromJson(
                (json["created_by"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": encodeValue(delivery),
        if (access != null) "access": encodeValue(access),
        if (createdBy != null) "created_by": encodeValue(createdBy),
        if (customData != null) "custom_data": encodeValue(customData),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        "file_id": encodeValue(fileId),
      };
}
