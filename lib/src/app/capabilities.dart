part of '../../app.dart';

/// Current availability of an application capability.
final class CapabilityStatus implements InttegroValue {
  final String value;
  const CapabilityStatus(this.value);
  factory CapabilityStatus.fromJson(Object? json) => CapabilityStatus(json as String);
  static const enabled = CapabilityStatus('enabled');
  static const restricted = CapabilityStatus('restricted');
  static const pendingReview = CapabilityStatus('pending_review');
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is CapabilityStatus && other.value == value;
  @override
  int get hashCode => value.hashCode;
}

/// Public reason why an application capability is not enabled.
final class CapabilityStatusReason implements InttegroValue {
  final String value;
  const CapabilityStatusReason(this.value);
  factory CapabilityStatusReason.fromJson(Object? json) => CapabilityStatusReason(json as String);
  static const setupIncomplete = CapabilityStatusReason('setup_incomplete');
  static const accountUnderReview = CapabilityStatusReason('account_under_review');
  static const accountRestricted = CapabilityStatusReason('account_restricted');
  static const accountInactive = CapabilityStatusReason('account_inactive');
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is CapabilityStatusReason && other.value == value;
  @override
  int get hashCode => value.hashCode;
}

/// A setup item that must be completed before a capability can be enabled.
final class CapabilityRequirement implements InttegroValue {
  final String code;
  final String description;
  final DateTime? dueAt;
  const CapabilityRequirement({required this.code, required this.description, this.dueAt});
  factory CapabilityRequirement.fromJson(Map<String, Object?> json) => CapabilityRequirement(
        code: json['code'] as String,
        description: json['description'] as String,
        dueAt: json['due_at'] == null ? null : decodeDateTime(json['due_at']),
      );
  @override
  Map<String, Object?> toJson() => {
        'code': code,
        'description': description,
        'due_at': encodeValue(dueAt),
      };
}

/// Requirements that currently prevent a capability from being enabled.
final class CapabilityRequirements implements InttegroValue {
  final List<CapabilityRequirement> currentlyDue;
  const CapabilityRequirements({required this.currentlyDue});
  factory CapabilityRequirements.fromJson(Map<String, Object?> json) => CapabilityRequirements(
        currentlyDue: (json['currently_due'] as List)
            .map((value) => CapabilityRequirement.fromJson((value as Map).cast<String, Object?>()))
            .toList(growable: false),
      );
  @override
  Map<String, Object?> toJson() => {'currently_due': encodeValue(currentlyDue)};
}

/// The state of one commerce capability.
final class Capability implements InttegroValue {
  final CapabilityStatus status;
  final DateTime statusChangedAt;
  final CapabilityStatusReason? statusReason;
  final CapabilityRequirements? requirements;
  const Capability({
    required this.status,
    required this.statusChangedAt,
    this.statusReason,
    this.requirements,
  });
  factory Capability.fromJson(Map<String, Object?> json) => Capability(
        status: CapabilityStatus.fromJson(json['status']),
        statusChangedAt: decodeDateTime(json['status_changed_at']),
        statusReason: json['status_reason'] == null ? null : CapabilityStatusReason.fromJson(json['status_reason']),
        requirements: json['requirements'] == null
            ? null
            : CapabilityRequirements.fromJson((json['requirements'] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        'status': encodeValue(status),
        'status_changed_at': encodeValue(statusChangedAt),
        if (statusReason != null) 'status_reason': encodeValue(statusReason),
        if (requirements != null) 'requirements': encodeValue(requirements),
      };
}

/// Payment and payout capabilities available to the authenticated app.
final class Capabilities implements InttegroValue {
  final Capability payments;
  final Capability payouts;
  const Capabilities({required this.payments, required this.payouts});
  factory Capabilities.fromJson(Map<String, Object?> json) => Capabilities(
        payments: Capability.fromJson((json['payments'] as Map).cast<String, Object?>()),
        payouts: Capability.fromJson((json['payouts'] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {'payments': encodeValue(payments), 'payouts': encodeValue(payouts)};
}
