part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PaymentMethodDataInput implements _InttegroValue {
  final PaymentMethodDataInputMobileMoney? mobileMoney;
  final PaymentMethodType type;
  const PaymentMethodDataInput({this.mobileMoney, required this.type});
  factory PaymentMethodDataInput.fromJson(Map<String, Object?> json) =>
      PaymentMethodDataInput(
        mobileMoney: json["mobile_money"] == null
            ? null
            : PaymentMethodDataInputMobileMoney.fromJson(
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
