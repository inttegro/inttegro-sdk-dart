part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PublicFileStorage implements _InttegroValue {
  final FileStorageEncoding encoding;
  final int storedSize;
  const PublicFileStorage({required this.encoding, required this.storedSize});
  factory PublicFileStorage.fromJson(Map<String, Object?> json) =>
      PublicFileStorage(
        encoding: FileStorageEncoding.fromJson(json["encoding"]),
        storedSize: (json["stored_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "encoding": _encodeValue(encoding),
        "stored_size": _encodeValue(storedSize),
      };
}
