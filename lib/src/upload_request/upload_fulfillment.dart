part of '../../upload_request.dart';

/// An upload request paired with the file that fulfilled it.
///
/// Exposes [uploadRequest] and [file].
final class UploadFulfillment implements InttegroValue {
  final UploadRequest uploadRequest;
  final inttegro_file.UploadReceipt file;
  const UploadFulfillment({required this.uploadRequest, required this.file});
  factory UploadFulfillment.fromJson(Map<String, Object?> json) =>
      UploadFulfillment(
        uploadRequest: UploadRequest.fromJson(
          (json["upload_request"] as Map).cast<String, Object?>(),
        ),
        file: inttegro_file.UploadReceipt.fromJson(
          (json["file"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "upload_request": encodeValue(uploadRequest),
        "file": encodeValue(file),
      };
}
