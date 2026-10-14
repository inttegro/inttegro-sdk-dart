part of '../../app.dart';

/// Public reason why an application capability is not enabled.
final class CapabilityStatusReason implements InttegroValue {
  final String value;
  const CapabilityStatusReason(this.value);
  factory CapabilityStatusReason.fromJson(Object? json) =>
      CapabilityStatusReason(json as String);
  static const setupIncomplete = CapabilityStatusReason('setup_incomplete');
  static const accountUnderReview =
      CapabilityStatusReason('account_under_review');
  static const accountRestricted = CapabilityStatusReason('account_restricted');
  static const accountInactive = CapabilityStatusReason('account_inactive');
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CapabilityStatusReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
}
