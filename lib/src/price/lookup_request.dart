part of '../../price.dart';

/// Identifies the price to retrieve.
///
/// Carries [priceId].
final class LookupRequest implements InttegroValue {
  final String priceId;
  const LookupRequest({required this.priceId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": encodeValue(priceId)};
}
