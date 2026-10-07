part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class TokenizeMobileMoneyPaymentMethodRequest implements _InttegroValue {
  final CustomData? customData;
  final String customerId;
  final PaymentMethodType type;
  final TokenizeMobileMoneyPaymentMethodRequestMobileMoney mobileMoney;
  final PaymentMethodOwnerInput owner;
  const TokenizeMobileMoneyPaymentMethodRequest({
    this.customData,
    required this.customerId,
    required this.type,
    required this.mobileMoney,
    required this.owner,
  });
  factory TokenizeMobileMoneyPaymentMethodRequest.fromJson(
    Map<String, Object?> json,
  ) =>
      TokenizeMobileMoneyPaymentMethodRequest(
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customerId: json["customer_id"] as String,
        type: PaymentMethodType.fromJson(json["type"]),
        mobileMoney:
            TokenizeMobileMoneyPaymentMethodRequestMobileMoney.fromJson(
          (json["mobile_money"] as Map).cast<String, Object?>(),
        ),
        owner: PaymentMethodOwnerInput.fromJson(
          (json["owner"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer_id": _encodeValue(customerId),
        "type": _encodeValue(type),
        "mobile_money": _encodeValue(mobileMoney),
        "owner": _encodeValue(owner),
      };
}
