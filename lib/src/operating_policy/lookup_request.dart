part of '../../operating_policy.dart';

/// Parameters for looking up the latest active operating-policy version.
final class LookupRequest implements InttegroValue {
  final String operatingPolicyId;
  const LookupRequest({required this.operatingPolicyId});
  factory LookupRequest.fromJson(Map<String, Object?> json) => LookupRequest(
        operatingPolicyId: json['operating_policy_id'] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        'operating_policy_id': operatingPolicyId,
      };
}
