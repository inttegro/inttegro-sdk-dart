part of '../../payout.dart';

/// A page of payouts returned by a list operation.
///
/// Exposes [number], [size], and [payouts].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<Payout>? payouts;
  const Page({required this.number, required this.size, this.payouts});
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        payouts: json["payouts"] == null
            ? null
            : (json["payouts"] as List)
                .map(
                  (item) =>
                      Payout.fromJson((item as Map).cast<String, Object?>()),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        if (payouts != null) "payouts": encodeValue(payouts),
      };
}
