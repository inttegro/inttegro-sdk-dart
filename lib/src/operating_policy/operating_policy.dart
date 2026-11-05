part of '../../operating_policy.dart';

/// One immutable version of a reusable operating policy.
final class OperatingPolicy implements InttegroValue {
  final String id;
  final int version;
  final int activeVersion;
  final String name;
  final String? description;
  final Capabilities capabilities;
  final String childrenPolicyId;
  final int childrenPolicyVersion;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime versionCreatedAt;
  const OperatingPolicy({
    required this.id,
    required this.version,
    required this.activeVersion,
    required this.name,
    this.description,
    required this.capabilities,
    required this.childrenPolicyId,
    required this.childrenPolicyVersion,
    required this.createdAt,
    required this.updatedAt,
    required this.versionCreatedAt,
  });
  factory OperatingPolicy.fromJson(Map<String, Object?> json) =>
      OperatingPolicy(
        id: json['id'] as String,
        version: json['version'] as int,
        activeVersion: json['active_version'] as int,
        name: json['name'] as String,
        description: json['description'] as String?,
        capabilities: Capabilities.fromJson(
          (json['capabilities'] as Map).cast<String, Object?>(),
        ),
        childrenPolicyId: json['children_policy_id'] as String,
        childrenPolicyVersion: json['children_policy_version'] as int,
        createdAt: decodeDateTime(json['created_at']),
        updatedAt: decodeDateTime(json['updated_at']),
        versionCreatedAt: decodeDateTime(json['version_created_at']),
      );
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'version': version,
        'active_version': activeVersion,
        'name': name,
        if (description != null) 'description': description,
        'capabilities': encodeValue(capabilities),
        'children_policy_id': childrenPolicyId,
        'children_policy_version': childrenPolicyVersion,
        'created_at': encodeValue(createdAt),
        'updated_at': encodeValue(updatedAt),
        'version_created_at': encodeValue(versionCreatedAt),
      };
}
