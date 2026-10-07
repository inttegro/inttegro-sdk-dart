part of '../../file.dart';

/// Public-storage size and content-encoding metadata for a file.
///
/// Exposes [encoding] and [storedSize].
final class PublicStorage implements InttegroValue {
  final StorageEncoding encoding;
  final int storedSize;
  const PublicStorage({required this.encoding, required this.storedSize});
  factory PublicStorage.fromJson(Map<String, Object?> json) => PublicStorage(
        encoding: StorageEncoding.fromJson(json["encoding"]),
        storedSize: (json["stored_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "encoding": encodeValue(encoding),
        "stored_size": encodeValue(storedSize),
      };
}
