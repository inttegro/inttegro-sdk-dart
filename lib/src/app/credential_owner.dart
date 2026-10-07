part of '../../app.dart';

/// Which side of an application relationship owns a credential.
final class CredentialOwner implements InttegroValue {
  final String value;
  const CredentialOwner(this.value);
  factory CredentialOwner.fromJson(Object? json) =>
      CredentialOwner(json as String);
  static const child = CredentialOwner("child");
  static const parent = CredentialOwner("parent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CredentialOwner && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
