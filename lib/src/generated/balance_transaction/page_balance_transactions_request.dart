part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageBalanceTransactionsRequest implements _InttegroValue {
  final int pageNumber;
  final int pageSize;
  const PageBalanceTransactionsRequest({
    required this.pageNumber,
    required this.pageSize,
  });
  factory PageBalanceTransactionsRequest.fromJson(Map<String, Object?> json) =>
      PageBalanceTransactionsRequest(
        pageNumber: (json["page_number"] as num).toInt(),
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "page_number": _encodeValue(pageNumber),
        "page_size": _encodeValue(pageSize),
      };
}
