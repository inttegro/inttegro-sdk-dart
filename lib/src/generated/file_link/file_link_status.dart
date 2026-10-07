part of '../../../inttegro.dart';

/// A typed `FileLinkStatus` value used by the Inttegro API.
final class FileLinkStatus implements _InttegroValue {
  final String value;
  const FileLinkStatus(this.value);
  factory FileLinkStatus.fromJson(Object? json) =>
      FileLinkStatus(json as String);
  static const active = FileLinkStatus("active");
  static const revoked = FileLinkStatus("revoked");
  static const expired = FileLinkStatus("expired");
  static const disabled = FileLinkStatus("disabled");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
