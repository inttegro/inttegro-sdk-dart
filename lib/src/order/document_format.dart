part of '../../order.dart';

/// The URL of one available order-document format.
final class DocumentFormat implements InttegroValue {
  final String url;
  const DocumentFormat({required this.url});
  factory DocumentFormat.fromJson(Map<String, Object?> json) =>
      DocumentFormat(url: json["url"] as String);
  @override
  Map<String, Object?> toJson() => {"url": encodeValue(url)};
}
