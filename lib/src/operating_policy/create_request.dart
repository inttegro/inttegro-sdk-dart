part of '../../operating_policy.dart';

/// Parameters for creating the first version of an operating policy.
final class CreateRequest implements InttegroValue {
  final String name;
  final String? description;
  final CapabilitiesInput capabilities;
  const CreateRequest({
    required this.name,
    this.description,
    required this.capabilities,
  });
  factory CreateRequest.fromJson(Map<String, Object?> json) => CreateRequest(
        name: json['name'] as String,
        description: json['description'] as String?,
        capabilities: CapabilitiesInput.fromJson(
          (json['capabilities'] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        'name': name,
        if (description != null) 'description': description,
        'capabilities': encodeValue(capabilities),
      };
}
