part of '../../order.dart';

/// The resource type from which an order was created.
final class CreatedFromResourceType implements InttegroValue {
  final String value;
  const CreatedFromResourceType(this.value);
  factory CreatedFromResourceType.fromJson(Object? json) =>
      CreatedFromResourceType(json as String);
  static const purchaseIntent = CreatedFromResourceType("purchase_intent");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is CreatedFromResourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
