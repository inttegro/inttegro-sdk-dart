part of '../../../inttegro.dart';

/// Customer-facing presentation update for a purchase intent.
final class UpdatePurchaseIntentPresentation implements _InttegroValue {
  final UpdatePurchaseIntentBuyPagePresentation buyPage;
  const UpdatePurchaseIntentPresentation({required this.buyPage});
  factory UpdatePurchaseIntentPresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentPresentation(
        buyPage: UpdatePurchaseIntentBuyPagePresentation.fromJson(
          (json["buy_page"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"buy_page": _encodeValue(buyPage)};
}
