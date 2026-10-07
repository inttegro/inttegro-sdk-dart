part of '../../../inttegro.dart';

/// Settlement returned to the original payment method.
final class RefundPaymentMethodSettlement extends RefundSettlement {
  final RefundSettlementPaymentMethod paymentMethod;
  const RefundPaymentMethodSettlement({required this.paymentMethod});

  factory RefundPaymentMethodSettlement.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"type", "payment_method"},
      "payment-method refund settlement",
    );
    if (json["type"] != "payment_method") {
      throw const FormatException("Invalid payment-method refund settlement");
    }
    return RefundPaymentMethodSettlement(
      paymentMethod: RefundSettlementPaymentMethod.fromJson(
        json["payment_method"],
      ),
    );
  }

  String get type => "payment_method";

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "payment_method": _encodeValue(paymentMethod),
      };
}
