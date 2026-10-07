part of '../../purchase_intent.dart';

/// Customer-facing presentation settings for a purchase intent.
final class Presentation implements InttegroValue {
  final BuyPagePresentation? buyPage;
  const Presentation({this.buyPage});
  factory Presentation.fromJson(Map<String, Object?> json) => Presentation(
        buyPage: json["buy_page"] == null
            ? null
            : BuyPagePresentation.fromJson(
                (json["buy_page"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (buyPage != null) "buy_page": encodeValue(buyPage),
      };
}
