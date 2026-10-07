part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FileReferenceInput implements _InttegroValue {
  final String? reference;
  final String? referenceKind;
  final String? purpose;
  final String fileId;
  final String field;
  const FileReferenceInput({
    this.reference,
    this.referenceKind,
    this.purpose,
    required this.fileId,
    required this.field,
  });
  factory FileReferenceInput.fromJson(Map<String, Object?> json) =>
      FileReferenceInput(
        reference:
            json["reference"] == null ? null : json["reference"] as String,
        referenceKind: json["reference_kind"] == null
            ? null
            : json["reference_kind"] as String,
        purpose: json["purpose"] == null ? null : json["purpose"] as String,
        fileId: json["file_id"] as String,
        field: json["field"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (reference != null) "reference": _encodeValue(reference),
        if (referenceKind != null)
          "reference_kind": _encodeValue(referenceKind),
        if (purpose != null) "purpose": _encodeValue(purpose),
        "file_id": _encodeValue(fileId),
        "field": _encodeValue(field),
      };
}
