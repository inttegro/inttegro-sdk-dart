part of '../../price.dart';

/// Pagination and filtering parameters for listing prices.
///
/// Carries [pageNumber], [pageSize], and [productId].
final class PageRequest implements InttegroValue {
  final int? pageNumber;
  final int? pageSize;
  final String? productId;
  const PageRequest({this.pageNumber, this.pageSize, this.productId});
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageNumber != null) "page_number": encodeValue(pageNumber),
        if (pageSize != null) "page_size": encodeValue(pageSize),
        if (productId != null) "product_id": encodeValue(productId),
      };
}
