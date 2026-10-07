part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageFileLinksRequest implements _InttegroValue {
  final String? fileId;
  final FileLinkStatus? status;
  final int? pageNumber;
  final int? pageSize;
  const PageFileLinksRequest({
    this.fileId,
    this.status,
    this.pageNumber,
    this.pageSize,
  });
  factory PageFileLinksRequest.fromJson(Map<String, Object?> json) =>
      PageFileLinksRequest(
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        status: json["status"] == null
            ? null
            : FileLinkStatus.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fileId != null) "file_id": _encodeValue(fileId),
        if (status != null) "status": _encodeValue(status),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}
