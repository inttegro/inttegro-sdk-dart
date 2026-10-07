part of '../../file.dart';

/// How file contents are delivered to a caller.
final class Delivery implements InttegroValue {
  final String value;
  const Delivery(this.value);
  factory Delivery.fromJson(Object? json) => Delivery(json as String);
  static const stream = Delivery("stream");
  static const redirect = Delivery("redirect");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Delivery && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
