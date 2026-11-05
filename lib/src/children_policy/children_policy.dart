part of '../../children_policy.dart';

/// Latest active children policy assigned to an application.
final class ChildrenPolicy implements InttegroValue {
  final String id;
  final String ownerApplicationId;
  final int version;
  final int activeVersion;
  final String name;
  final String? description;
  final Capabilities capabilities;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime versionCreatedAt;
  const ChildrenPolicy({
    required this.id,
    required this.ownerApplicationId,
    required this.version,
    required this.activeVersion,
    required this.name,
    this.description,
    required this.capabilities,
    required this.createdAt,
    required this.updatedAt,
    required this.versionCreatedAt,
  });
  factory ChildrenPolicy.fromJson(Map<String, Object?> json) => ChildrenPolicy(
        id: json['id'] as String,
        ownerApplicationId: json['owner_application_id'] as String,
        version: json['version'] as int,
        activeVersion: json['active_version'] as int,
        name: json['name'] as String,
        description: json['description'] as String?,
        capabilities: Capabilities.fromJson(
          (json['capabilities'] as Map).cast<String, Object?>(),
        ),
        createdAt: decodeDateTime(json['created_at']),
        updatedAt: decodeDateTime(json['updated_at']),
        versionCreatedAt: decodeDateTime(json['version_created_at']),
      );
  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'owner_application_id': ownerApplicationId,
        'version': version,
        'active_version': activeVersion,
        'name': name,
        if (description != null) 'description': description,
        'capabilities': encodeValue(capabilities),
        'created_at': encodeValue(createdAt),
        'updated_at': encodeValue(updatedAt),
        'version_created_at': encodeValue(versionCreatedAt),
      };
}
