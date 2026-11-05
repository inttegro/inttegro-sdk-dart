part of '../../operating_policy.dart';

/// Parameters for creating a new immutable operating-policy version.
final class UpdateRequest implements InttegroValue {
  final String operatingPolicyId;
  final int expectedVersion;
  final String? name;
  final String? description;
  final CapabilitiesInput? capabilities;
  const UpdateRequest({
    required this.operatingPolicyId,
    required this.expectedVersion,
    this.name,
    this.description,
    this.capabilities,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        operatingPolicyId: json['operating_policy_id'] as String,
        expectedVersion: json['expected_version'] as int,
        name: json['name'] as String?,
        description: json['description'] as String?,
        capabilities: json['capabilities'] == null
            ? null
            : CapabilitiesInput.fromJson(
                (json['capabilities'] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        'operating_policy_id': operatingPolicyId,
        'expected_version': expectedVersion,
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (capabilities != null) 'capabilities': encodeValue(capabilities),
      };
}
