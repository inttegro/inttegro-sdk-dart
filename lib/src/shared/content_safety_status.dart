part of '../../shared.dart';

/// The outcome of a content-safety evaluation.
final class ContentSafetyStatus implements InttegroValue {
  final String value;
  const ContentSafetyStatus(this.value);
  factory ContentSafetyStatus.fromJson(Object? json) =>
      ContentSafetyStatus(json as String);
  static const allowed = ContentSafetyStatus("allowed");
  static const rejected = ContentSafetyStatus("rejected");
  static const quarantined = ContentSafetyStatus("quarantined");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ContentSafetyStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
