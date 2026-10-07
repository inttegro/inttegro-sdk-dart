part of '../../../inttegro.dart';

/// A typed `Currency` value used by the Inttegro API.
final class Currency implements _InttegroValue {
  final String value;
  const Currency(this.value);
  factory Currency.fromJson(Object? json) => Currency(json as String);
  static const ghs = Currency("ghs");
  static const usd = Currency("usd");
  static const gbp = Currency("gbp");
  static const eur = Currency("eur");
  static const cny = Currency("cny");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Currency && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
