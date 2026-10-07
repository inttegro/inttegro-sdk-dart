part of '../../file_link.dart';

/// How a file link presents its file to a recipient.
final class DeliveryMode implements InttegroValue {
  final String value;
  const DeliveryMode(this.value);
  factory DeliveryMode.fromJson(Object? json) => DeliveryMode(json as String);
  static const redirect = DeliveryMode("redirect");
  static const download = DeliveryMode("download");
  static const inline = DeliveryMode("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is DeliveryMode && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
