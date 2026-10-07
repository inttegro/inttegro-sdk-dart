part of '../../refund.dart';

/// A page of refunds returned by a list operation.
///
/// Exposes [number], [refunds], and [size].
final class Page implements InttegroValue {
  final int number;
  final List<Refund> refunds;
  final int size;
  const Page({
    required this.number,
    required this.refunds,
    required this.size,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        refunds: (json["refunds"] as List)
            .map((item) =>
                Refund.fromJson((item as Map).cast<String, Object?>()))
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "refunds": encodeValue(refunds),
        "size": encodeValue(size),
      };
}
