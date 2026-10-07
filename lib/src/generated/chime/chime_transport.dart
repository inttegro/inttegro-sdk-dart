part of '../../../inttegro.dart';

/// A typed `ChimeTransport` value used by the Inttegro API.
final class ChimeTransport implements _InttegroValue {
  final String value;
  const ChimeTransport(this.value);
  factory ChimeTransport.fromJson(Object? json) =>
      ChimeTransport(json as String);
  static const sms = ChimeTransport("sms");
  static const email = ChimeTransport("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ChimeTransport && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
