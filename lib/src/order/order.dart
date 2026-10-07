part of '../../order.dart';

/// An order, its customer, line items, payment, and issued documents.
///
/// [status] describes the order lifecycle. Payment-specific state remains on
/// [payment], while [invoice] and the payment receipt describe customer-facing
/// documents when the API has created them.
final class Order implements InttegroValue {
  final DateTime? canceledAt;
  final CheckoutSettings? checkoutSettings;
  final DateTime? completedAt;
  final CreatedFrom? createdFrom;
  final core.CustomData? customData;
  final Customer customer;
  final DateTime? expiresAt;
  final String id;
  final DateTime initiatedAt;
  final Invoice? invoice;
  final String? number;
  final String? receiptNumber;
  final List<inttegro_refund.Refund>? refunds;
  final inttegro_checkout.InvoiceSettings? invoiceSettings;
  final Status status;
  final DateTime? sealedAt;
  final LineItemGroup? lineItemGroup;
  final inttegro_payment.Payment? payment;
  final DateTime? paidAt;
  final DateTime? paymentDueAt;
  final String? reference;
  const Order({
    this.canceledAt,
    this.checkoutSettings,
    this.completedAt,
    this.createdFrom,
    this.customData,
    required this.customer,
    this.expiresAt,
    required this.id,
    required this.initiatedAt,
    this.invoice,
    this.number,
    this.receiptNumber,
    this.refunds,
    this.invoiceSettings,
    required this.status,
    this.sealedAt,
    this.lineItemGroup,
    this.payment,
    this.paidAt,
    this.paymentDueAt,
    this.reference,
  });
  factory Order.fromJson(Map<String, Object?> json) => Order(
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        completedAt: json["completed_at"] == null
            ? null
            : decodeDateTime(json["completed_at"]),
        createdFrom: json["created_from"] == null
            ? null
            : CreatedFrom.fromJson(
                (json["created_from"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        customer: Customer.fromJson(
          (json["customer"] as Map).cast<String, Object?>(),
        ),
        expiresAt: json["expires_at"] == null
            ? null
            : decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        initiatedAt: decodeDateTime(json["initiated_at"]),
        invoice: json["invoice"] == null
            ? null
            : Invoice.fromJson(
                (json["invoice"] as Map).cast<String, Object?>(),
              ),
        number: json["number"] == null ? null : json["number"] as String,
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        refunds: json["refunds"] == null
            ? null
            : (json["refunds"] as List)
                .map(
                  (item) => inttegro_refund.Refund.fromJson(
                      (item as Map).cast<String, Object?>()),
                )
                .toList(),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : inttegro_checkout.InvoiceSettings.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        status: Status.fromJson(json["status"]),
        sealedAt: json["sealed_at"] == null
            ? null
            : decodeDateTime(json["sealed_at"]),
        lineItemGroup: json["line_item_group"] == null
            ? null
            : LineItemGroup.fromJson(
                (json["line_item_group"] as Map).cast<String, Object?>(),
              ),
        payment: json["payment"] == null
            ? null
            : inttegro_payment.Payment.fromJson(
                (json["payment"] as Map).cast<String, Object?>()),
        paidAt:
            json["paid_at"] == null ? null : decodeDateTime(json["paid_at"]),
        paymentDueAt: json["payment_due_at"] == null
            ? null
            : decodeDateTime(json["payment_due_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        if (checkoutSettings != null)
          "checkout_settings": encodeValue(checkoutSettings),
        if (completedAt != null) "completed_at": encodeValue(completedAt),
        if (createdFrom != null) "created_from": encodeValue(createdFrom),
        if (customData != null) "custom_data": encodeValue(customData),
        "customer": encodeValue(customer),
        if (expiresAt != null) "expires_at": encodeValue(expiresAt),
        "id": encodeValue(id),
        "initiated_at": encodeValue(initiatedAt),
        if (invoice != null) "invoice": encodeValue(invoice),
        if (number != null) "number": encodeValue(number),
        if (receiptNumber != null) "receipt_number": encodeValue(receiptNumber),
        if (refunds != null) "refunds": encodeValue(refunds),
        if (invoiceSettings != null)
          "invoice_settings": encodeValue(invoiceSettings),
        "status": encodeValue(status),
        if (sealedAt != null) "sealed_at": encodeValue(sealedAt),
        if (lineItemGroup != null)
          "line_item_group": encodeValue(lineItemGroup),
        if (payment != null) "payment": encodeValue(payment),
        if (paidAt != null) "paid_at": encodeValue(paidAt),
        if (paymentDueAt != null) "payment_due_at": encodeValue(paymentDueAt),
        if (reference != null) "reference": encodeValue(reference),
      };
}
