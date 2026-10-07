part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupPriceRequest implements _InttegroValue {
  final String priceId;
  const LookupPriceRequest({required this.priceId});
  factory LookupPriceRequest.fromJson(Map<String, Object?> json) =>
      LookupPriceRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": _encodeValue(priceId)};
}
