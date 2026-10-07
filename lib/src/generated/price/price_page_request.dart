part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PricePageRequest implements _InttegroValue {
  final int? pageNumber;
  final int? pageSize;
  final String? productId;
  const PricePageRequest({this.pageNumber, this.pageSize, this.productId});
  factory PricePageRequest.fromJson(Map<String, Object?> json) =>
      PricePageRequest(
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
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (productId != null) "product_id": _encodeValue(productId),
      };
}
