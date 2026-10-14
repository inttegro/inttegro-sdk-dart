part of '../../app.dart';

/// Current availability of an application capability.
final class CapabilityStatus implements InttegroValue {
  final String value;
  const CapabilityStatus(this.value);
  factory CapabilityStatus.fromJson(Object? json) =>
      CapabilityStatus(json as String);
  static const enabled = CapabilityStatus('enabled');
  static const restricted = CapabilityStatus('restricted');
  static const pendingReview = CapabilityStatus('pending_review');
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CapabilityStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
}
