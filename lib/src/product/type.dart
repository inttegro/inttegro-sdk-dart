part of '../../product.dart';

/// The commercial kind of a [Product].
final class Type implements InttegroValue {
  final String value;
  const Type(this.value);
  factory Type.fromJson(Object? json) => Type(json as String);
  static const physical = Type("physical");
  static const digital = Type("digital");
  static const service = Type("service");
  static const voucher = Type("voucher");
  static const custom = Type("custom");
  static const cause = Type("cause");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Type && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
