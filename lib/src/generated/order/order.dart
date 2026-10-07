part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class Order implements _InttegroValue {
  final DateTime? canceledAt;
  final OrderCheckoutSettings? checkoutSettings;
  final DateTime? completedAt;
  final OrderCreatedFrom? createdFrom;
  final CustomData? customData;
  final OrderCustomer customer;
  final DateTime? expiresAt;
  final String id;
  final DateTime initiatedAt;
  final OrderInvoice? invoice;
  final String? number;
  final String? receiptNumber;
  final List<Refund>? refunds;
  final InvoiceSettings? invoiceSettings;
  final OrderStatus status;
  final DateTime? sealedAt;
  final OrderLineItemGroup? lineItemGroup;
  final Payment? payment;
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
            : _decodeDateTime(json["canceled_at"]),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : OrderCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        completedAt: json["completed_at"] == null
            ? null
            : _decodeDateTime(json["completed_at"]),
        createdFrom: json["created_from"] == null
            ? null
            : OrderCreatedFrom.fromJson(
                (json["created_from"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        customer: OrderCustomer.fromJson(
          (json["customer"] as Map).cast<String, Object?>(),
        ),
        expiresAt: json["expires_at"] == null
            ? null
            : _decodeDateTime(json["expires_at"]),
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        invoice: json["invoice"] == null
            ? null
            : OrderInvoice.fromJson(
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
                  (item) =>
                      Refund.fromJson((item as Map).cast<String, Object?>()),
                )
                .toList(),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettings.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        status: OrderStatus.fromJson(json["status"]),
        sealedAt: json["sealed_at"] == null
            ? null
            : _decodeDateTime(json["sealed_at"]),
        lineItemGroup: json["line_item_group"] == null
            ? null
            : OrderLineItemGroup.fromJson(
                (json["line_item_group"] as Map).cast<String, Object?>(),
              ),
        payment: json["payment"] == null
            ? null
            : Payment.fromJson(
                (json["payment"] as Map).cast<String, Object?>()),
        paidAt:
            json["paid_at"] == null ? null : _decodeDateTime(json["paid_at"]),
        paymentDueAt: json["payment_due_at"] == null
            ? null
            : _decodeDateTime(json["payment_due_at"]),
        reference:
            json["reference"] == null ? null : json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        if (checkoutSettings != null)
          "checkout_settings": _encodeValue(checkoutSettings),
        if (completedAt != null) "completed_at": _encodeValue(completedAt),
        if (createdFrom != null) "created_from": _encodeValue(createdFrom),
        if (customData != null) "custom_data": _encodeValue(customData),
        "customer": _encodeValue(customer),
        if (expiresAt != null) "expires_at": _encodeValue(expiresAt),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        if (invoice != null) "invoice": _encodeValue(invoice),
        if (number != null) "number": _encodeValue(number),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (refunds != null) "refunds": _encodeValue(refunds),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        "status": _encodeValue(status),
        if (sealedAt != null) "sealed_at": _encodeValue(sealedAt),
        if (lineItemGroup != null)
          "line_item_group": _encodeValue(lineItemGroup),
        if (payment != null) "payment": _encodeValue(payment),
        if (paidAt != null) "paid_at": _encodeValue(paidAt),
        if (paymentDueAt != null) "payment_due_at": _encodeValue(paymentDueAt),
        if (reference != null) "reference": _encodeValue(reference),
      };
}
