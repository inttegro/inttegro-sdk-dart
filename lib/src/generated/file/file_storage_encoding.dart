part of '../../../inttegro.dart';

/// A typed `FileStorageEncoding` value used by the Inttegro API.
final class FileStorageEncoding implements _InttegroValue {
  final String value;
  const FileStorageEncoding(this.value);
  factory FileStorageEncoding.fromJson(Object? json) =>
      FileStorageEncoding(json as String);
  static const identity = FileStorageEncoding("identity");
  static const brotli = FileStorageEncoding("br");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileStorageEncoding && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
