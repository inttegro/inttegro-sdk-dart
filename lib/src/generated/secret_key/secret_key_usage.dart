part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class SecretKeyUsage implements _InttegroValue {
  final SecretKey key;
  final SecretKeyUsagePage usage;
  const SecretKeyUsage({required this.key, required this.usage});
  factory SecretKeyUsage.fromJson(Map<String, Object?> json) => SecretKeyUsage(
        key: SecretKey.fromJson((json["key"] as Map).cast<String, Object?>()),
        usage: SecretKeyUsagePage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": _encodeValue(key),
        "usage": _encodeValue(usage),
      };
}
