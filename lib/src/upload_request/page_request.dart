part of '../../upload_request.dart';

/// Pagination and filtering parameters for listing upload requests.
///
/// Carries [purpose], [status], [resource], and [pageNumber], among other
/// supported fields.
final class PageRequest implements InttegroValue {
  final String? purpose;
  final Status? status;
  final inttegro_file.ResourceInput? resource;
  final int? pageNumber;
  final int? pageSize;
  const PageRequest({
    this.purpose,
    this.status,
    this.resource,
    this.pageNumber,
    this.pageSize,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        resource: json["resource"] == null
            ? null
            : inttegro_file.ResourceInput.fromJson(
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
        if (purpose != null) "purpose": encodeValue(purpose),
        if (status != null) "status": encodeValue(status),
        if (resource != null) "resource": encodeValue(resource),
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
      };
}
