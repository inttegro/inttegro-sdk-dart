part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PagePurchaseIntentsRequest implements _InttegroValue {
  final int pageNumber;
  final int pageSize;
  const PagePurchaseIntentsRequest({
    required this.pageNumber,
    required this.pageSize,
  });
  factory PagePurchaseIntentsRequest.fromJson(Map<String, Object?> json) =>
      PagePurchaseIntentsRequest(
        pageNumber: (json["page_number"] as num).toInt(),
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "page_number": _encodeValue(pageNumber),
        "page_size": _encodeValue(pageSize),
      };
}
