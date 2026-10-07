part of '../../file.dart';

/// The result of reconciling file references with a resource.
///
/// Exposes [reconciled].
final class ReferenceReconciliation implements InttegroValue {
  final bool reconciled;
  const ReferenceReconciliation({required this.reconciled});
  factory ReferenceReconciliation.fromJson(Map<String, Object?> json) =>
      ReferenceReconciliation(reconciled: json["reconciled"] as bool);
  @override
  Map<String, Object?> toJson() => {"reconciled": encodeValue(reconciled)};
}
