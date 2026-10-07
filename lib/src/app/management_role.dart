part of '../../app.dart';

/// The parent or child role an application has in a managed relationship.
final class ManagementRole implements InttegroValue {
  final String value;
  const ManagementRole(this.value);
  factory ManagementRole.fromJson(Object? json) =>
      ManagementRole(json as String);
  static const parent = ManagementRole("parent");
  static const child = ManagementRole("child");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ManagementRole && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
