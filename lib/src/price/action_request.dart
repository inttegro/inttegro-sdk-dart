part of '../../price.dart';

/// Identifies the price targeted by an action.
///
/// Carries [priceId].
final class ActionRequest implements InttegroValue {
  final String priceId;
  const ActionRequest({required this.priceId});
  factory ActionRequest.fromJson(Map<String, Object?> json) =>
      ActionRequest(priceId: json["price_id"] as String);
  @override
  Map<String, Object?> toJson() => {"price_id": encodeValue(priceId)};
}
