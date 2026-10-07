part of '../../secret_key.dart';

/// The current lifecycle state of a [SecretKey].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const active = Status("active");
  static const revoked = Status("revoked");
  static const expired = Status("expired");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
