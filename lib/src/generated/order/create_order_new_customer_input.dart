part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CreateOrderNewCustomerInput implements _InttegroValue {
  final String? number;
  final String? receiptNumber;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final bool? executePayment;
  final bool? finalize;
  final CreateOrderNewCustomerInputRequestMeta? requestMeta;
  final CreateOrderNewCustomerInputCheckoutSettings? checkoutSettings;
  final InvoiceSettingsInput? invoiceSettings;
  final OrderPayoutSettingsRequest? payoutSettings;
  final CustomData? customData;
  final BillingDetailsInput? billingDetails;
  final ShippingInput? shipping;
  final PaymentMethodDataInput? paymentMethodData;
  final CustomerDataInput customerData;
  final List<LineItemInput> lineItems;
  const CreateOrderNewCustomerInput({
    this.number,
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
    this.paymentMethodData,
    required this.customerData,
    required this.lineItems,
  });
  factory CreateOrderNewCustomerInput.fromJson(Map<String, Object?> json) =>
      CreateOrderNewCustomerInput(
        number: json["number"] == null ? null : json["number"] as String,
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
            : CreateOrderNewCustomerInputRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CreateOrderNewCustomerInputCheckoutSettings.fromJson(
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
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : PaymentMethodDataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        customerData: CustomerDataInput.fromJson(
          (json["customer_data"] as Map).cast<String, Object?>(),
        ),
        lineItems:
            (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
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
        if (paymentMethodData != null)
          "payment_method_data": _encodeValue(paymentMethodData),
        "customer_data": _encodeValue(customerData),
        "line_items": _encodeValue(lineItems),
      };
}
