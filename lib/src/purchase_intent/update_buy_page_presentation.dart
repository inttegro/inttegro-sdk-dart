part of '../../purchase_intent.dart';

/// Hosted Buy page presentation update for a purchase intent.
final class UpdateBuyPagePresentation implements InttegroValue {
  final UpdateBuyPageText text;
  const UpdateBuyPagePresentation({required this.text});
  factory UpdateBuyPagePresentation.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateBuyPagePresentation(
        text: UpdateBuyPageText.fromJson(
          (json["text"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {"text": encodeValue(text)};
}
