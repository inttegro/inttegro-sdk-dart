part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PriceActionRequest implements _InttegroValue {
  final String priceId;
  const PriceActionRequest({required this.priceId});
  factory PriceActionRequest.fromJson(Map<String, Object?> json) =>
      PriceActionRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": _encodeValue(priceId)};
}
