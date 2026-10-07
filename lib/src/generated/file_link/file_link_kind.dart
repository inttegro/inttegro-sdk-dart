part of '../../../inttegro.dart';

/// A typed `FileLinkKind` value used by the Inttegro API.
final class FileLinkKind implements _InttegroValue {
  final String value;
  const FileLinkKind(this.value);
  factory FileLinkKind.fromJson(Object? json) => FileLinkKind(json as String);
  static const public = FileLinkKind("public");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
