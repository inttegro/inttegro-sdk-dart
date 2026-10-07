part of '../../payment.dart';

/// The outcome state returned after a payment operation.
final class ResultStatus implements InttegroValue {
  final String value;
  const ResultStatus(this.value);
  factory ResultStatus.fromJson(Object? json) => ResultStatus(json as String);
  static const pending = ResultStatus("pending");
  static const requiresConfirmation = ResultStatus(
    "requires_confirmation",
  );
  static const processing = ResultStatus("processing");
  static const succeeded = ResultStatus("succeeded");
  static const failed = ResultStatus("failed");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResultStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
