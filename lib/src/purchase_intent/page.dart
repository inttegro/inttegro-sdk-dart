part of '../../purchase_intent.dart';

/// A page of purchase intents returned by a list operation.
///
/// Exposes [number], [purchaseIntents], and [size].
final class Page implements InttegroValue {
  final int number;
  final List<PurchaseIntent> purchaseIntents;
  final int size;
  const Page({
    required this.number,
    required this.purchaseIntents,
    required this.size,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        purchaseIntents: (json["purchase_intents"] as List)
            .map(
              (item) => PurchaseIntent.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        size: (json["size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "purchase_intents": encodeValue(purchaseIntents),
        "size": encodeValue(size),
      };
}
