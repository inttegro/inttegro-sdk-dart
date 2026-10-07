part of '../../../inttegro.dart';

/// A typed `FileLinkDeliveryMode` value used by the Inttegro API.
final class FileLinkDeliveryMode implements _InttegroValue {
  final String value;
  const FileLinkDeliveryMode(this.value);
  factory FileLinkDeliveryMode.fromJson(Object? json) =>
      FileLinkDeliveryMode(json as String);
  static const redirect = FileLinkDeliveryMode("redirect");
  static const download = FileLinkDeliveryMode("download");
  static const inline = FileLinkDeliveryMode("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileLinkDeliveryMode && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
