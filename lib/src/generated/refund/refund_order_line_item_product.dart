part of '../../../inttegro.dart';

final class RefundOrderLineItemProduct implements _InttegroValue {
  final String? id;
  final String name;
  const RefundOrderLineItemProduct({this.id, required this.name});

  factory RefundOrderLineItemProduct.fromJson(Map<String, Object?> json) {
    _expectExactKeys(
      json,
      json.containsKey("id") ? const {"id", "name"} : const {"name"},
      "refund order line item product",
    );
    return RefundOrderLineItemProduct(
      id: json["id"] as String?,
      name: json["name"] as String,
    );
  }

  @override
  Map<String, Object?> toJson() => {
        if (id != null) "id": id,
        "name": name,
      };
}
