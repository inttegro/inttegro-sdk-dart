part of '../../../inttegro.dart';

/// A typed `FileSourceType` value used by the Inttegro API.
final class FileSourceType implements _InttegroValue {
  final String value;
  const FileSourceType(this.value);
  factory FileSourceType.fromJson(Object? json) =>
      FileSourceType(json as String);
  static const direct = FileSourceType("direct");
  static const uploadRequest = FileSourceType("upload_request");
  static const service = FileSourceType("service");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileSourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
