part of '../../../inttegro.dart';

/// A typed `FileStatus` value used by the Inttegro API.
final class FileStatus implements _InttegroValue {
  final String value;
  const FileStatus(this.value);
  factory FileStatus.fromJson(Object? json) => FileStatus(json as String);
  static const uploading = FileStatus("uploading");
  static const processing = FileStatus("processing");
  static const available = FileStatus("available");
  static const failed = FileStatus("failed");
  static const deleted = FileStatus("deleted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is FileStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
