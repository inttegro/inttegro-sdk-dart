part of '../../file.dart';

/// Reference fields accepted by the file API.
///
/// Carries [reference], [referenceKind], [purpose], and [fileId], among other
/// supported fields.
final class ReferenceInput implements InttegroValue {
  final String? reference;
  final String? referenceKind;
  final String? purpose;
  final String fileId;
  final String field;
  const ReferenceInput({
    this.reference,
    this.referenceKind,
    this.purpose,
    required this.fileId,
    required this.field,
  });
  factory ReferenceInput.fromJson(Map<String, Object?> json) => ReferenceInput(
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
        if (reference != null) "reference": encodeValue(reference),
        if (referenceKind != null) "reference_kind": encodeValue(referenceKind),
        if (purpose != null) "purpose": encodeValue(purpose),
        "file_id": encodeValue(fileId),
        "field": encodeValue(field),
      };
}
