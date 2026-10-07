part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageOrdersRequest implements _InttegroValue {
  final int? pageNumber;
  final String? customerId;
  final int pageSize;
  const PageOrdersRequest({
    this.pageNumber,
    this.customerId,
    required this.pageSize,
  });
  factory PageOrdersRequest.fromJson(Map<String, Object?> json) =>
      PageOrdersRequest(
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (customerId != null) "customer_id": _encodeValue(customerId),
        "page_size": _encodeValue(pageSize),
      };
}
