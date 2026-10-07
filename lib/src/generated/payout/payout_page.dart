part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Payout>? payouts;
  const PayoutPage({required this.number, required this.size, this.payouts});
  factory PayoutPage.fromJson(Map<String, Object?> json) => PayoutPage(
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
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        if (payouts != null) "payouts": _encodeValue(payouts),
      };
}
