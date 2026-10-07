part of '../../file_link.dart';

/// Pagination and filtering parameters for listing file links.
///
/// Carries [fileId], [status], [pageNumber], and [pageSize].
final class PageRequest implements InttegroValue {
  final String? fileId;
  final Status? status;
  final int? pageNumber;
  final int? pageSize;
  const PageRequest({
    this.fileId,
    this.status,
    this.pageNumber,
    this.pageSize,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        fileId: json["file_id"] == null ? null : json["file_id"] as String,
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (fileId != null) "file_id": encodeValue(fileId),
        if (status != null) "status": encodeValue(status),
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
      };
}
