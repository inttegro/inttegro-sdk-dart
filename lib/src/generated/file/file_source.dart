part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileSource implements _InttegroValue {
  final FileSourceType? type;
  final String? service;
  final String? uploadRequestId;
  const FileSource({this.type, this.service, this.uploadRequestId});
  factory FileSource.fromJson(Map<String, Object?> json) => FileSource(
        type:
            json["type"] == null ? null : FileSourceType.fromJson(json["type"]),
        service: json["service"] == null ? null : json["service"] as String,
        uploadRequestId: json["upload_request_id"] == null
            ? null
            : json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": _encodeValue(type),
        if (service != null) "service": _encodeValue(service),
        if (uploadRequestId != null)
          "upload_request_id": _encodeValue(uploadRequestId),
      };
}
