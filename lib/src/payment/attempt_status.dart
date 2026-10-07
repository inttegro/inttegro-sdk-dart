part of '../../payment.dart';

/// The execution state of one payment attempt.
final class AttemptStatus implements InttegroValue {
  final String value;
  const AttemptStatus(this.value);
  factory AttemptStatus.fromJson(Object? json) => AttemptStatus(json as String);
  static const initiated = AttemptStatus("initiated");
  static const executed = AttemptStatus("executed");
  static const succeeded = AttemptStatus("succeeded");
  static const canceled = AttemptStatus("canceled");
  static const expired = AttemptStatus("expired");
  static const failed = AttemptStatus("failed");
  static const unknown = AttemptStatus("unknown");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is AttemptStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
