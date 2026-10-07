part of '../../customer.dart';

/// Pagination and filtering parameters for listing customers.
///
/// Carries [pageSize] and [pageNumber].
final class PageRequest implements InttegroValue {
  final int? pageSize;
  final int pageNumber;
  const PageRequest({this.pageSize, required this.pageNumber});
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        pageNumber: (json["page_number"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (pageSize != null) "page_size": encodeValue(pageSize),
        "page_number": encodeValue(pageNumber),
      };
}
