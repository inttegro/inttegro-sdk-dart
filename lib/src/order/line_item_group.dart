part of '../../order.dart';

/// An order's line items and their aggregate total.
///
/// Exposes [lineItems] and [total].
final class LineItemGroup implements InttegroValue {
  final List<LineItem> lineItems;
  final inttegro_money.Amount total;
  const LineItemGroup({required this.lineItems, required this.total});
  factory LineItemGroup.fromJson(Map<String, Object?> json) => LineItemGroup(
        lineItems: (json["line_items"] as List)
            .map((item) => LineItem.fromJson(item))
            .toList(),
        total: inttegro_money.Amount.fromJson(
            (json["total"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        "line_items": encodeValue(lineItems),
        "total": encodeValue(total),
      };
}
