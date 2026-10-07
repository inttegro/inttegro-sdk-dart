part of '../../order.dart';

/// Pagination and filtering parameters for listing orders.
///
/// Carries [pageNumber], [customerId], and [pageSize].
final class PageRequest implements InttegroValue {
  final int? pageNumber;
  final String? customerId;
  final int pageSize;
  const PageRequest({
    this.pageNumber,
    this.customerId,
    required this.pageSize,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (customerId != null) "customer_id": encodeValue(customerId),
        "page_size": encodeValue(pageSize),
      };
}
