part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PagePayoutsRequest implements _InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PagePayoutsRequest({this.pageSize, required this.pageNumber});
  factory PagePayoutsRequest.fromJson(Map<String, Object?> json) =>
      PagePayoutsRequest(
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
