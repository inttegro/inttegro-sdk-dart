part of '../../../inttegro.dart';

/// Customer-facing presentation settings for a purchase intent.
final class PurchaseIntentPresentation implements _InttegroValue {
  final PurchaseIntentBuyPagePresentation? buyPage;
  const PurchaseIntentPresentation({this.buyPage});
  factory PurchaseIntentPresentation.fromJson(Map<String, Object?> json) =>
      PurchaseIntentPresentation(
        buyPage: json["buy_page"] == null
            ? null
            : PurchaseIntentBuyPagePresentation.fromJson(
                (json["buy_page"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (buyPage != null) "buy_page": _encodeValue(buyPage),
      };
}
