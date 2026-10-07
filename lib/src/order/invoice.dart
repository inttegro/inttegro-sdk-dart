part of '../../order.dart';

/// Invoice metadata and available document formats for an order.
///
/// Exposes [number] and [format].
final class Invoice implements InttegroValue {
  final String? number;
  final InvoiceFormat format;
  const Invoice({this.number, required this.format});
  factory Invoice.fromJson(Map<String, Object?> json) => Invoice(
        number: json["number"] == null ? null : json["number"] as String,
        format: InvoiceFormat.fromJson(
          (json["format"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": encodeValue(number),
        "format": encodeValue(format),
      };
}
