part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class RefundPage implements _InttegroValue {
  final int number;
  final List<Refund> refunds;
  final int size;
  const RefundPage({
    required this.number,
    required this.refunds,
    required this.size,
  });
  factory RefundPage.fromJson(Map<String, Object?> json) => RefundPage(
        number: (json["number"] as num).toInt(),
        refunds: (json["refunds"] as List)
            .map((item) =>
                Refund.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "refunds": _encodeValue(refunds),
        "size": _encodeValue(size),
      };
}
