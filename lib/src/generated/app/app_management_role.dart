part of '../../../inttegro.dart';

/// A typed `AppManagementRole` value used by the Inttegro API.
final class AppManagementRole implements _InttegroValue {
  final String value;
  const AppManagementRole(this.value);
  factory AppManagementRole.fromJson(Object? json) =>
      AppManagementRole(json as String);
  static const parent = AppManagementRole("parent");
  static const child = AppManagementRole("child");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AppManagementRole && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
