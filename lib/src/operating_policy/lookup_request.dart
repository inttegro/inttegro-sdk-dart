part of '../../operating_policy.dart';

/// Parameters for looking up the latest or an exact operating-policy version.
final class LookupRequest implements InttegroValue {
  final String operatingPolicyId;
  final int? version;
  const LookupRequest({required this.operatingPolicyId, this.version})
      : assert(version == null || version >= 1, 'version must be at least 1');
  factory LookupRequest.fromJson(Map<String, Object?> json) => LookupRequest(
        operatingPolicyId: json['operating_policy_id'] as String,
        version: (json['version'] as num?)?.toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        'operating_policy_id': operatingPolicyId,
        if (version != null) 'version': version,
      };
}
