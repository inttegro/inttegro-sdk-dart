part of '../../purchase_intent.dart';

/// Presentation settings for the hosted Buy page.
final class BuyPagePresentation implements InttegroValue {
  final BuyPageText? text;
  const BuyPagePresentation({this.text});
  factory BuyPagePresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      BuyPagePresentation(
        text: json["text"] == null
            ? null
            : BuyPageText.fromJson(
                (json["text"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (text != null) "text": encodeValue(text),
      };
}
