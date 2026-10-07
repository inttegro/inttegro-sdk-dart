part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageCustomersRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageCustomersRequest({this.pageSize, required this.pageNumber});
  factory PageCustomersRequest.fromJson(Map<String, Object?> json) =>
      PageCustomersRequest(
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
