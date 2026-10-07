part of '../../secret_key.dart';

/// The authorization scheme used with a secret key.
final class TokenType implements InttegroValue {
  final String value;
  const TokenType(this.value);
  factory TokenType.fromJson(Object? json) => TokenType(json as String);
  static const bearer = TokenType("bearer");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is TokenType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
