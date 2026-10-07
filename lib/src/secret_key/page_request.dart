part of '../../secret_key.dart';

/// Pagination and filtering parameters for listing secret keys.
///
/// Carries [page], [number], and [size].
final class PageRequest implements InttegroValue {
  final int? page;
  final int? number;
  final int? size;
  const PageRequest({this.page, this.number, this.size});
  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (page != null) "page": encodeValue(page),
        if (number != null) "number": encodeValue(number),
        if (size != null) "size": encodeValue(size),
      };
}
