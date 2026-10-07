part of '../../purchase_intent.dart';

/// Customer-facing presentation update for a purchase intent.
final class UpdatePresentation implements InttegroValue {
  final UpdateBuyPagePresentation buyPage;
  const UpdatePresentation({required this.buyPage});
  factory UpdatePresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePresentation(
        buyPage: UpdateBuyPagePresentation.fromJson(
          (json["buy_page"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"buy_page": encodeValue(buyPage)};
}
