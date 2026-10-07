part of '../../upload_request.dart';

/// A page of upload requests returned by a list operation.
///
/// Exposes [number], [size], and [uploadRequests].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<UploadRequest> uploadRequests;
  const Page({
    required this.number,
    required this.size,
    required this.uploadRequests,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
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
        "number": encodeValue(number),
        "size": encodeValue(size),
        "upload_requests": encodeValue(uploadRequests),
      };
}
