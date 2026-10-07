part of '../../refund.dart';

/// Settlement returned to the original payment method.
final class PaymentMethodSettlement extends Settlement {
  final SettlementPaymentMethod paymentMethod;
  const PaymentMethodSettlement({required this.paymentMethod});

  factory PaymentMethodSettlement.fromJson(
    Map<String, Object?> json,
  ) {
    expectExactKeys(
      json,
      const {"type", "payment_method"},
      "payment-method refund settlement",
    );
    if (json["type"] != "payment_method") {
      throw const FormatException("Invalid payment-method refund settlement");
    }
    return PaymentMethodSettlement(
      paymentMethod: SettlementPaymentMethod.fromJson(
        json["payment_method"],
      ),
    );
  }

  String get type => "payment_method";

  @override
  Map<String, Object?> toJson() => {
        "type": type,
        "payment_method": encodeValue(paymentMethod),
      };
}
