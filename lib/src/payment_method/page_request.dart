part of '../../payment_method.dart';

/// Pagination and filtering parameters for listing payment methods.
///
/// Carries [customerId], [pageNumber], and [pageSize].
final class PageRequest implements InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  const PageRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
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
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": encodeValue(customerId),
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
      };
}
