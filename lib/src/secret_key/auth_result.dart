part of '../../secret_key.dart';

/// Whether a secret-key authentication attempt succeeded.
final class AuthResult implements InttegroValue {
  final String value;
  const AuthResult(this.value);
  factory AuthResult.fromJson(Object? json) => AuthResult(json as String);
  static const succeeded = AuthResult("succeeded");
  static const failed = AuthResult("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is AuthResult && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
