part of '../../app.dart';

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
        statusReason: json['status_reason'] == null
            ? null
            : CapabilityStatusReason.fromJson(json['status_reason']),
        requirements: json['requirements'] == null
            ? null
            : CapabilityRequirements.fromJson(
                (json['requirements'] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        'status': encodeValue(status),
        'status_changed_at': encodeValue(statusChangedAt),
        if (statusReason != null) 'status_reason': encodeValue(statusReason),
        if (requirements != null) 'requirements': encodeValue(requirements),
      };
}
