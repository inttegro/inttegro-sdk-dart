part of '../../secret_key.dart';

/// Pagination parameters for retrieving secret-key usage.
///
/// Carries [number], [page], [size], and [secretKeyId].
final class UsageRequest implements InttegroValue {
  final int? number;
  final int? page;
  final int? size;
  final String secretKeyId;
  const UsageRequest({
    this.number,
    this.page,
    this.size,
    required this.secretKeyId,
  });
  factory UsageRequest.fromJson(Map<String, Object?> json) => UsageRequest(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": encodeValue(number),
        if (page != null) "page": encodeValue(page),
        if (size != null) "size": encodeValue(size),
        "secret_key_id": encodeValue(secretKeyId),
      };
}
