part of '../../purchase_intent.dart';

/// Pagination and filtering parameters for listing purchase intents.
///
/// Carries [pageNumber] and [pageSize].
final class PageRequest implements InttegroValue {
  final int pageNumber;
  final int pageSize;
  const PageRequest({
    required this.pageNumber,
    required this.pageSize,
  });
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        pageNumber: (json["page_number"] as num).toInt(),
        pageSize: (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "page_number": encodeValue(pageNumber),
        "page_size": encodeValue(pageSize),
      };
}
