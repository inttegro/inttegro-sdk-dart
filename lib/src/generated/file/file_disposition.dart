part of '../../../inttegro.dart';

/// A typed `FileDisposition` value used by the Inttegro API.
final class FileDisposition implements _InttegroValue {
  final String value;
  const FileDisposition(this.value);
  factory FileDisposition.fromJson(Object? json) =>
      FileDisposition(json as String);
  static const attachment = FileDisposition("attachment");
  static const inline = FileDisposition("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileDisposition && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
