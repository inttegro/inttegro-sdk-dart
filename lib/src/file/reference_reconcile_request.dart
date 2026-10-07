part of '../../file.dart';

/// Parameters for reconciling file references with a resource.
///
/// Carries [references], [resourceType], and [resourceId].
final class ReferenceReconcileRequest implements InttegroValue {
  final List<ReferenceInput>? references;
  final String resourceType;
  final String resourceId;
  const ReferenceReconcileRequest({
    this.references,
    required this.resourceType,
    required this.resourceId,
  });
  factory ReferenceReconcileRequest.fromJson(Map<String, Object?> json) =>
      ReferenceReconcileRequest(
        references: json["references"] == null
            ? null
            : (json["references"] as List)
                .map(
                  (item) => ReferenceInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        resourceType: json["resource_type"] as String,
        resourceId: json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (references != null) "references": encodeValue(references),
        "resource_type": encodeValue(resourceType),
        "resource_id": encodeValue(resourceId),
      };
}
