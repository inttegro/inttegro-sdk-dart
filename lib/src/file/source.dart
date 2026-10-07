part of '../../file.dart';

/// How a file entered Inttegro storage.
///
/// Exposes [type], [service], and [uploadRequestId].
final class Source implements InttegroValue {
  final SourceType? type;
  final String? service;
  final String? uploadRequestId;
  const Source({this.type, this.service, this.uploadRequestId});
  factory Source.fromJson(Map<String, Object?> json) => Source(
        type: json["type"] == null ? null : SourceType.fromJson(json["type"]),
        service: json["service"] == null ? null : json["service"] as String,
        uploadRequestId: json["upload_request_id"] == null
            ? null
            : json["upload_request_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (type != null) "type": encodeValue(type),
        if (service != null) "service": encodeValue(service),
        if (uploadRequestId != null)
          "upload_request_id": encodeValue(uploadRequestId),
      };
}
