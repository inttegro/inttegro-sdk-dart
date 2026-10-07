part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class SecretKeyUsageRequest implements _InttegroValue {
  final int? number;
  final int? page;
  final int? size;
  final String secretKeyId;
  const SecretKeyUsageRequest({
    this.number,
    this.page,
    this.size,
    required this.secretKeyId,
  });
  factory SecretKeyUsageRequest.fromJson(Map<String, Object?> json) =>
      SecretKeyUsageRequest(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        page: json["page"] == null ? null : (json["page"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        secretKeyId: json["secret_key_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (page != null) "page": _encodeValue(page),
        if (size != null) "size": _encodeValue(size),
        "secret_key_id": _encodeValue(secretKeyId),
      };
}
