part of '../../order.dart';

/// Hosted document formats for a payment receipt.
final class ReceiptFormat implements InttegroValue {
  final DocumentFormat web;
  final DocumentFormat pdf;
  const ReceiptFormat({required this.web, required this.pdf});
  factory ReceiptFormat.fromJson(Map<String, Object?> json) => ReceiptFormat(
        web: DocumentFormat.fromJson(
          (json["web"] as Map).cast<String, Object?>(),
        ),
        pdf: DocumentFormat.fromJson(
          (json["pdf"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "web": encodeValue(web),
        "pdf": encodeValue(pdf),
      };
}
