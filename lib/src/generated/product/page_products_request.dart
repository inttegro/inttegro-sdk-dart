part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageProductsRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageProductsRequest({this.pageSize, required this.pageNumber});
  factory PageProductsRequest.fromJson(Map<String, Object?> json) =>
      PageProductsRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        "page_number": _encodeValue(pageNumber),
      };
}
