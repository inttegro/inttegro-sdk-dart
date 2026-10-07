part of '../../payment.dart';

/// Customer projection returned with a payment.
final class Customer implements InttegroValue {
  final String id;
  final bool guest;
  final String name;
  final String? emailAddress;
  final String? phoneNumber;
  final inttegro_order.Address? billingAddress;
  final inttegro_order.Address? shippingAddress;
  const Customer({
    required this.id,
    required this.guest,
    required this.name,
    this.emailAddress,
    this.phoneNumber,
    this.billingAddress,
    this.shippingAddress,
  });
  factory Customer.fromJson(Map<String, Object?> json) => Customer(
        id: json["id"] as String,
        guest: json["guest"] as bool,
        name: json["name"] as String,
        emailAddress: json["email_address"] as String?,
        phoneNumber: json["phone_number"] as String?,
        billingAddress: json["billing_address"] == null
            ? null
            : inttegro_order.Address.fromJson(
                (json["billing_address"] as Map).cast<String, Object?>(),
              ),
        shippingAddress: json["shipping_address"] == null
            ? null
            : inttegro_order.Address.fromJson(
                (json["shipping_address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "guest": encodeValue(guest),
        "name": encodeValue(name),
        if (emailAddress != null) "email_address": encodeValue(emailAddress),
        if (phoneNumber != null) "phone_number": encodeValue(phoneNumber),
        if (billingAddress != null)
          "billing_address": encodeValue(billingAddress),
        if (shippingAddress != null)
          "shipping_address": encodeValue(shippingAddress),
      };
}
