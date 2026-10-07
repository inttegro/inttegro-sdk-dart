part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountPageRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const FinancialAccountPageRequest({this.pageSize, required this.pageNumber});
  factory FinancialAccountPageRequest.fromJson(Map<String, Object?> json) =>
      FinancialAccountPageRequest(
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
