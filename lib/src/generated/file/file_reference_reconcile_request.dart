part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileReferenceReconcileRequest implements _InttegroValue {
  final List<FileReferenceInput>? references;
  final String resourceType;
  final String resourceId;
  const FileReferenceReconcileRequest({
    this.references,
    required this.resourceType,
    required this.resourceId,
  });
  factory FileReferenceReconcileRequest.fromJson(Map<String, Object?> json) =>
      FileReferenceReconcileRequest(
        references: json["references"] == null
            ? null
            : (json["references"] as List)
                .map(
                  (item) => FileReferenceInput.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
        resourceType: json["resource_type"] as String,
        resourceId: json["resource_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (references != null) "references": _encodeValue(references),
        "resource_type": _encodeValue(resourceType),
        "resource_id": _encodeValue(resourceId),
      };
}
