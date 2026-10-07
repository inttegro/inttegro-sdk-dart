part of '../../order.dart';

/// Inline payment-method data supplied while updating an order.
final class UpdateRequestPaymentMethodData implements InttegroValue {
  final UpdateRequestPaymentMethodDataMobileMoney? mobileMoney;
  final inttegro_payment_method.Type type;
  const UpdateRequestPaymentMethodData({
    this.mobileMoney,
    required this.type,
  });
  factory UpdateRequestPaymentMethodData.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateRequestPaymentMethodData(
        mobileMoney: json["mobile_money"] == null
            ? null
            : UpdateRequestPaymentMethodDataMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        type: inttegro_payment_method.Type.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
        "type": encodeValue(type),
      };
}
