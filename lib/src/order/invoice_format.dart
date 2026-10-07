part of '../../order.dart';

/// Links to the web and PDF forms of an invoice.
///
/// Exposes [web] and [pdf].
final class InvoiceFormat implements InttegroValue {
  final DocumentFormat web;
  final DocumentFormat pdf;
  const InvoiceFormat({
    required this.web,
    required this.pdf,
  });
  factory InvoiceFormat.fromJson(Map<String, Object?> json) => InvoiceFormat(
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
