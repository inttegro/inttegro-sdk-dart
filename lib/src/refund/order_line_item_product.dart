part of '../../refund.dart';

final class OrderLineItemProduct implements InttegroValue {
  final String? id;
  final String name;
  const OrderLineItemProduct({this.id, required this.name});

  factory OrderLineItemProduct.fromJson(Map<String, Object?> json) {
    expectExactKeys(
      json,
      json.containsKey("id") ? const {"id", "name"} : const {"name"},
      "refund order line item product",
    );
    return OrderLineItemProduct(
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
