part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageUploadRequestsRequest implements _InttegroValue {
  final String? purpose;
  final UploadRequestStatus? status;
  final FileResourceInput? resource;
  final int? pageNumber;
  final int? pageSize;
  const PageUploadRequestsRequest({
    this.purpose,
    this.status,
    this.resource,
    this.pageNumber,
    this.pageSize,
  });
  factory PageUploadRequestsRequest.fromJson(Map<String, Object?> json) =>
      PageUploadRequestsRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status: json["status"] == null
            ? null
            : UploadRequestStatus.fromJson(json["status"]),
        resource: json["resource"] == null
            ? null
            : FileResourceInput.fromJson(
                (json["resource"] as Map).cast<String, Object?>(),
              ),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (status != null) "status": _encodeValue(status),
        if (resource != null) "resource": _encodeValue(resource),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}
