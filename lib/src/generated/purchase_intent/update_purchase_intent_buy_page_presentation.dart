part of '../../../inttegro.dart';

/// Hosted Buy page presentation update for a purchase intent.
final class UpdatePurchaseIntentBuyPagePresentation implements _InttegroValue {
  final UpdatePurchaseIntentBuyPageText text;
  const UpdatePurchaseIntentBuyPagePresentation({required this.text});
  factory UpdatePurchaseIntentBuyPagePresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentBuyPagePresentation(
        text: UpdatePurchaseIntentBuyPageText.fromJson(
          (json["text"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"text": _encodeValue(text)};
}
