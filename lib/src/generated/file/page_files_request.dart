part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageFilesRequest implements _InttegroValue {
  final String? purpose;
  final FileStatus? status;
  final int? pageNumber;
  final int? pageSize;
  final DateTime? createdAfter;
  final DateTime? createdBefore;
  const PageFilesRequest({
    this.purpose,
    this.status,
    this.pageNumber,
    this.pageSize,
    this.createdAfter,
    this.createdBefore,
  });
  factory PageFilesRequest.fromJson(Map<String, Object?> json) =>
      PageFilesRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status:
            json["status"] == null ? null : FileStatus.fromJson(json["status"]),
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        createdAfter: json["created_after"] == null
            ? null
            : _decodeDateTime(json["created_after"]),
        createdBefore: json["created_before"] == null
            ? null
            : _decodeDateTime(json["created_before"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (purpose != null) "purpose": _encodeValue(purpose),
        if (status != null) "status": _encodeValue(status),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (createdAfter != null) "created_after": _encodeValue(createdAfter),
        if (createdBefore != null)
          "created_before": _encodeValue(createdBefore),
      };
}
