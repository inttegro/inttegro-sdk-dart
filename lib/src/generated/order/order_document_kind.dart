part of '../../../inttegro.dart';

/// A typed `OrderDocumentKind` value used by the Inttegro API.
final class OrderDocumentKind implements _InttegroValue {
  final String value;
  const OrderDocumentKind(this.value);
  factory OrderDocumentKind.fromJson(Object? json) =>
      OrderDocumentKind(json as String);
  static const invoice = OrderDocumentKind("invoice");
  static const receipt = OrderDocumentKind("receipt");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is OrderDocumentKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
