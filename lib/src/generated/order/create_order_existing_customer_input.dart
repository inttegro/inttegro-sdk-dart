part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderExistingCustomerInput implements _InttegroValue {
  final String? paymentMethodId;
  final PaymentMethodDataInput? paymentMethodData;
  final String? receiptNumber;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final bool? executePayment;
  final bool? finalize;
  final CreateOrderExistingCustomerInputRequestMeta? requestMeta;
  final CreateOrderExistingCustomerInputCheckoutSettings? checkoutSettings;
  final InvoiceSettingsInput? invoiceSettings;
  final OrderPayoutSettingsRequest? payoutSettings;
  final CustomData? customData;
  final BillingDetailsInput? billingDetails;
  final ShippingInput? shipping;
  final String customerId;
  final List<LineItemInput> lineItems;
  const CreateOrderExistingCustomerInput({
    this.paymentMethodId,
    this.paymentMethodData,
    this.receiptNumber,
    this.statementDescriptor,
    this.statementDescriptorPrefix,
    this.executePayment,
    this.finalize,
    this.requestMeta,
    this.checkoutSettings,
    this.invoiceSettings,
    this.payoutSettings,
    this.customData,
    this.billingDetails,
    this.shipping,
    required this.customerId,
    required this.lineItems,
  });
  factory CreateOrderExistingCustomerInput.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateOrderExistingCustomerInput(
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        statementDescriptor: json["statement_descriptor"] == null
            ? null
            : json["statement_descriptor"] as String,
        statementDescriptorPrefix: json["statement_descriptor_prefix"] == null
            ? null
            : json["statement_descriptor_prefix"] as String,
        executePayment: json["execute_payment"] == null
            ? null
            : json["execute_payment"] as bool,
        finalize: json["finalize"] == null ? null : json["finalize"] as bool,
        requestMeta: json["request_meta"] == null
            ? null
            : CreateOrderExistingCustomerInputRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CreateOrderExistingCustomerInputCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        payoutSettings: json["payout_settings"] == null
            ? null
            : OrderPayoutSettingsRequest.fromJson(
                (json["payout_settings"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : CustomData.fromJson(json["custom_data"]),
        billingDetails: json["billing_details"] == null
            ? null
            : BillingDetailsInput.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        shipping: json["shipping"] == null
            ? null
            : ShippingInput.fromJson(
                (json["shipping"] as Map).cast<String, Object?>(),
              ),
        customerId: json["customer_id"] as String,
        lineItems:
            (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (paymentMethodId != null)
          "payment_method_id": _encodeValue(paymentMethodId),
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        if (receiptNumber != null)
          "receipt_number": _encodeValue(receiptNumber),
        if (statementDescriptor != null)
          "statement_descriptor": _encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix":
              _encodeValue(statementDescriptorPrefix),
        if (executePayment != null)
          "execute_payment": _encodeValue(executePayment),
        if (finalize != null) "finalize": _encodeValue(finalize),
        if (requestMeta != null) "request_meta": _encodeValue(requestMeta),
        if (checkoutSettings != null)
          "checkout_settings": _encodeValue(checkoutSettings),
        if (invoiceSettings != null)
          "invoice_settings": _encodeValue(invoiceSettings),
        if (payoutSettings != null)
          "payout_settings": _encodeValue(payoutSettings),
        if (customData != null) "custom_data": _encodeValue(customData),
        if (billingDetails != null)
          "billing_details": _encodeValue(billingDetails),
        if (shipping != null) "shipping": _encodeValue(shipping),
        "customer_id": _encodeValue(customerId),
        "line_items": _encodeValue(lineItems),
      };
}
