part of '../../../inttegro.dart';

/// Customer projection returned with a payment.
final class PaymentCustomer implements _InttegroValue {
  final String id;
  final bool guest;
  final String name;
  final String? emailAddress;
  final String? phoneNumber;
  final OrderAddress? billingAddress;
  final OrderAddress? shippingAddress;
  const PaymentCustomer({
    required this.id,
    required this.guest,
    required this.name,
    this.emailAddress,
    this.phoneNumber,
    this.billingAddress,
    this.shippingAddress,
  });
  factory PaymentCustomer.fromJson(Map<String, Object?> json) =>
      PaymentCustomer(
        id: json["id"] as String,
        guest: json["guest"] as bool,
        name: json["name"] as String,
        emailAddress: json["email_address"] as String?,
        phoneNumber: json["phone_number"] as String?,
        billingAddress: json["billing_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        shippingAddress: json["shipping_address"] == null
            ? null
            : OrderAddress.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "guest": _encodeValue(guest),
        "name": _encodeValue(name),
        if (emailAddress != null) "email_address": _encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": _encodeValue(phoneNumber),
        if (billingAddress != null)
          "billing_address": _encodeValue(billingAddress),
        if (shippingAddress != null)
          "shipping_address": _encodeValue(shippingAddress),
      };
}
