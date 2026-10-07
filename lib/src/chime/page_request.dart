part of '../../chime.dart';

/// Pagination and filtering parameters for listing Chimes.
///
/// Carries [customerId], [pageNumber], [pageSize], and [recipient].
final class PageRequest implements InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  final String? recipient;
  const PageRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
    this.recipient,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": encodeValue(customerId),
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
        if (recipient != null) "recipient": encodeValue(recipient),
      };
}
