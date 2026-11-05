part of '../../operating_policy.dart';

/// Complete operating configuration accepted in create, update, and inline requests.
final class CapabilitiesInput implements InttegroValue {
  final PaymentsCapabilitiesInput? payments;
  final PayoutsCapabilitiesInput? payouts;
  final PaymentMethodsCapabilities? paymentMethods;
  const CapabilitiesInput({this.payments, this.payouts, this.paymentMethods});
  factory CapabilitiesInput.fromJson(Map<String, Object?> json) =>
      CapabilitiesInput(
        payments: json['payments'] == null
            ? null
            : PaymentsCapabilitiesInput.fromJson(
                (json['payments'] as Map).cast<String, Object?>(),
              ),
        payouts: json['payouts'] == null
            ? null
            : PayoutsCapabilitiesInput.fromJson(
                (json['payouts'] as Map).cast<String, Object?>(),
              ),
        paymentMethods: json['payment_methods'] == null
            ? null
            : PaymentMethodsCapabilities.fromJson(
                (json['payment_methods'] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (payments != null) 'payments': encodeValue(payments),
        if (payouts != null) 'payouts': encodeValue(payouts),
        if (paymentMethods != null)
          'payment_methods': encodeValue(paymentMethods),
      };
}
