part of '../../children_policy.dart';

/// Complete authority granted by a children policy.
final class Capabilities implements InttegroValue {
  final PaymentsCapabilities? payments;
  final PayoutsCapabilities? payouts;
  final PaymentMethodsCapabilities? paymentMethods;
  const Capabilities({this.payments, this.payouts, this.paymentMethods});
  factory Capabilities.fromJson(Map<String, Object?> json) => Capabilities(
        payments: json['payments'] == null
            ? null
            : PaymentsCapabilities.fromJson(
                (json['payments'] as Map).cast<String, Object?>(),
              ),
        payouts: json['payouts'] == null
            ? null
            : PayoutsCapabilities.fromJson(
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
