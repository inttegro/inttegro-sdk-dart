part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileContentsRequest implements _InttegroValue {
  final FileDisposition? disposition;
  final FileDelivery? delivery;
  final String fileId;
  const FileContentsRequest({
    this.disposition,
    this.delivery,
    required this.fileId,
  });
  factory FileContentsRequest.fromJson(Map<String, Object?> json) =>
      FileContentsRequest(
        disposition: json["disposition"] == null
            ? null
            : FileDisposition.fromJson(json["disposition"]),
        delivery: json["delivery"] == null
            ? null
            : FileDelivery.fromJson(json["delivery"]),
        fileId: json["file_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (disposition != null) "disposition": _encodeValue(disposition),
        if (delivery != null) "delivery": _encodeValue(delivery),
        "file_id": _encodeValue(fileId),
      };
}
