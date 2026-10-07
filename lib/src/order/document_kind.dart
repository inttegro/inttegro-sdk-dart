part of '../../order.dart';

/// The kind of customer-facing document associated with an order.
final class DocumentKind implements InttegroValue {
  final String value;
  const DocumentKind(this.value);
  factory DocumentKind.fromJson(Object? json) => DocumentKind(json as String);
  static const invoice = DocumentKind("invoice");
  static const receipt = DocumentKind("receipt");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is DocumentKind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
