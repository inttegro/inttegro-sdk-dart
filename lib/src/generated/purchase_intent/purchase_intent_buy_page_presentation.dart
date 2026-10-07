part of '../../../inttegro.dart';

/// Presentation settings for the hosted Buy page.
final class PurchaseIntentBuyPagePresentation implements _InttegroValue {
  final PurchaseIntentBuyPageText? text;
  const PurchaseIntentBuyPagePresentation({this.text});
  factory PurchaseIntentBuyPagePresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      PurchaseIntentBuyPagePresentation(
        text: json["text"] == null
            ? null
            : PurchaseIntentBuyPageText.fromJson(
                (json["text"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (text != null) "text": _encodeValue(text),
      };
}
