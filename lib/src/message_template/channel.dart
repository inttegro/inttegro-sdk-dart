part of '../../message_template.dart';

/// The delivery channel a message template renders for.
final class Channel implements InttegroValue {
  final String value;
  const Channel(this.value);
  factory Channel.fromJson(Object? json) => Channel(json as String);
  static const sms = Channel("sms");
  static const email = Channel("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Channel && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
