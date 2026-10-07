part of '../../chime.dart';

/// The delivery transport used for a Chime message.
final class Transport implements InttegroValue {
  final String value;
  const Transport(this.value);
  factory Transport.fromJson(Object? json) => Transport(json as String);
  static const sms = Transport("sms");
  static const email = Transport("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Transport && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
