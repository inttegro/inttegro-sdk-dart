part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadFulfillment implements _InttegroValue {
  final UploadRequest uploadRequest;
  final FileUploadReceipt file;
  const UploadFulfillment({required this.uploadRequest, required this.file});
  factory UploadFulfillment.fromJson(Map<String, Object?> json) =>
      UploadFulfillment(
        uploadRequest: UploadRequest.fromJson(
          (json["upload_request"] as Map).cast<String, Object?>(),
        ),
        file: FileUploadReceipt.fromJson(
          (json["file"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "upload_request": _encodeValue(uploadRequest),
        "file": _encodeValue(file),
      };
}
