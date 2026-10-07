part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdateOrderRequestPaymentMethodData implements _InttegroValue {
  final UpdateOrderRequestPaymentMethodDataMobileMoney? mobileMoney;
  final PaymentMethodType type;
  const UpdateOrderRequestPaymentMethodData({
    this.mobileMoney,
    required this.type,
  });
  factory UpdateOrderRequestPaymentMethodData.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateOrderRequestPaymentMethodData(
        mobileMoney: json["mobile_money"] == null
            ? null
            : UpdateOrderRequestPaymentMethodDataMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        type: PaymentMethodType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": _encodeValue(mobileMoney),
        "type": _encodeValue(type),
      };
}
