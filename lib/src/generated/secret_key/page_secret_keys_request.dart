part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageSecretKeysRequest implements _InttegroValue {
  final int? page;
  final int? number;
  final int? size;
  const PageSecretKeysRequest({this.page, this.number, this.size});
  factory PageSecretKeysRequest.fromJson(Map<String, Object?> json) =>
      PageSecretKeysRequest(
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (page != null) "page": _encodeValue(page),
        if (number != null) "number": _encodeValue(number),
        if (size != null) "size": _encodeValue(size),
      };
}
