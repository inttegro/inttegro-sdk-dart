part of '../../../inttegro.dart';

/// A typed `AppCredentialOwner` value used by the Inttegro API.
final class AppCredentialOwner implements _InttegroValue {
  final String value;
  const AppCredentialOwner(this.value);
  factory AppCredentialOwner.fromJson(Object? json) =>
      AppCredentialOwner(json as String);
  static const child = AppCredentialOwner("child");
  static const parent = AppCredentialOwner("parent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppCredentialOwner && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
