part of '../../../inttegro.dart';

/// A typed `FileDelivery` value used by the Inttegro API.
final class FileDelivery implements _InttegroValue {
  final String value;
  const FileDelivery(this.value);
  factory FileDelivery.fromJson(Object? json) => FileDelivery(json as String);
  static const stream = FileDelivery("stream");
  static const redirect = FileDelivery("redirect");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is FileDelivery && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
