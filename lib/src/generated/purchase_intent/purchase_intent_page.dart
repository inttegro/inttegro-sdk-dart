part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentPage implements _InttegroValue {
  final int number;
  final List<PurchaseIntent> purchaseIntents;
  final int size;
  const PurchaseIntentPage({
    required this.number,
    required this.purchaseIntents,
    required this.size,
  });
  factory PurchaseIntentPage.fromJson(Map<String, Object?> json) =>
      PurchaseIntentPage(
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
        "number": _encodeValue(number),
        "purchase_intents": _encodeValue(purchaseIntents),
        "size": _encodeValue(size),
      };
}
