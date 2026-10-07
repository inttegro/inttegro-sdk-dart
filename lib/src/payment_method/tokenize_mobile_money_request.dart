part of '../../payment_method.dart';

/// Parameters for tokenizing a mobile-money payment method.
///
/// Carries [customData], [customerId], [type], and [mobileMoney], among other
/// supported fields.
final class TokenizeMobileMoneyRequest implements InttegroValue {
  final core.CustomData? customData;
  final String customerId;
  final Type type;
  final TokenizeMobileMoneyRequestMobileMoney mobileMoney;
  final OwnerInput owner;
  const TokenizeMobileMoneyRequest({
    this.customData,
    required this.customerId,
    required this.type,
    required this.mobileMoney,
    required this.owner,
  });
  factory TokenizeMobileMoneyRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyRequest(
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        type: Type.fromJson(json["type"]),
        mobileMoney: TokenizeMobileMoneyRequestMobileMoney.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
        owner: OwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": encodeValue(customData),
        "customer_id": encodeValue(customerId),
        "type": encodeValue(type),
        "mobile_money": encodeValue(mobileMoney),
        "owner": encodeValue(owner),
      };
}
