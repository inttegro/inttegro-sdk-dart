part of '../../chime.dart';

/// The address type used to reach a Chime recipient.
final class RecipientType implements InttegroValue {
  final String value;
  const RecipientType(this.value);
  factory RecipientType.fromJson(Object? json) => RecipientType(json as String);
  static const phone = RecipientType("phone");
  static const email = RecipientType("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is RecipientType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
