part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class UploadRequestPage implements _InttegroValue {
  final int number;
  final int size;
  final List<UploadRequest> uploadRequests;
  const UploadRequestPage({
    required this.number,
    required this.size,
    required this.uploadRequests,
  });
  factory UploadRequestPage.fromJson(Map<String, Object?> json) =>
      UploadRequestPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        uploadRequests: (json["upload_requests"] as List)
            .map(
              (item) =>
                  UploadRequest.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "upload_requests": _encodeValue(uploadRequests),
      };
}
