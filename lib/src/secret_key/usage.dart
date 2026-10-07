part of '../../secret_key.dart';

/// A secret key paired with its recent usage records.
///
/// Exposes [key] and [usage].
final class Usage implements InttegroValue {
  final SecretKey key;
  final UsagePage usage;
  const Usage({required this.key, required this.usage});
  factory Usage.fromJson(Map<String, Object?> json) => Usage(
        key: SecretKey.fromJson((json["key"] as Map).cast<String, Object?>()),
        usage: UsagePage.fromJson(
          (json["usage"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": encodeValue(key),
        "usage": encodeValue(usage),
      };
}
