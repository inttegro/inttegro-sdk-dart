part of '../../file.dart';

/// Pagination and filtering parameters for listing files.
///
/// Carries [purpose], [status], [pageNumber], and [pageSize], among other
/// supported fields.
final class PageRequest implements InttegroValue {
  final String? purpose;
  final Status? status;
  final int? pageNumber;
  final int? pageSize;
  final DateTime? createdAfter;
  final DateTime? createdBefore;
  const PageRequest({
    this.purpose,
    this.status,
    this.pageNumber,
    this.pageSize,
    this.createdAfter,
    this.createdBefore,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        createdAfter: json["created_after"] == null
            ? null
            : decodeDateTime(json["created_after"]),
        createdBefore: json["created_before"] == null
            ? null
            : decodeDateTime(json["created_before"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (purpose != null) "purpose": encodeValue(purpose),
        if (status != null) "status": encodeValue(status),
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
        if (createdAfter != null) "created_after": encodeValue(createdAfter),
        if (createdBefore != null) "created_before": encodeValue(createdBefore),
      };
}
