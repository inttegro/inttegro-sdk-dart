part of '../../refund.dart';

final class OrderLineItemAdjustment implements InttegroValue {
  final String? label;
  final String? description;
  const OrderLineItemAdjustment({this.label, this.description});

  factory OrderLineItemAdjustment.fromJson(Map<String, Object?> json) {
    if (json.keys.any((key) => key != "label" && key != "description")) {
      throw const FormatException("Invalid refund order line item adjustment");
    }
    return OrderLineItemAdjustment(
      label: json["label"] as String?,
      description: json["description"] as String?,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": label,
        if (description != null) "description": description,
      };
}
