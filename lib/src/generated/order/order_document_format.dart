part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderDocumentFormat implements _InttegroValue {
  final String url;
  const OrderDocumentFormat({required this.url});
  factory OrderDocumentFormat.fromJson(Map<String, Object?> json) =>
      OrderDocumentFormat(url: json["url"] as String);
  @override
  Map<String, Object?> toJson() => {"url": _encodeValue(url)};
}
