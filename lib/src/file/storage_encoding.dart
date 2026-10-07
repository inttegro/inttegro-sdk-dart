part of '../../file.dart';

/// The encoding applied to stored file contents.
final class StorageEncoding implements InttegroValue {
  final String value;
  const StorageEncoding(this.value);
  factory StorageEncoding.fromJson(Object? json) =>
      StorageEncoding(json as String);
  static const identity = StorageEncoding("identity");
  static const brotli = StorageEncoding("br");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is StorageEncoding && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
