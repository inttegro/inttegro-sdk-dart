part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FileReferenceReconciliation implements _InttegroValue {
  final bool reconciled;
  const FileReferenceReconciliation({required this.reconciled});
  factory FileReferenceReconciliation.fromJson(Map<String, Object?> json) =>
      FileReferenceReconciliation(reconciled: json["reconciled"] as bool);
  @override
  Map<String, Object?> toJson() => {"reconciled": _encodeValue(reconciled)};
}
