part of '../../../inttegro.dart';

final class RefundOrderLineItemAdjustment implements _InttegroValue {
  final String? label;
  final String? description;
  const RefundOrderLineItemAdjustment({this.label, this.description});

  factory RefundOrderLineItemAdjustment.fromJson(Map<String, Object?> json) {
    if (json.keys.any((key) => key != "label" && key != "description")) {
      throw const FormatException("Invalid refund order line item adjustment");
    }
    return RefundOrderLineItemAdjustment(
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
