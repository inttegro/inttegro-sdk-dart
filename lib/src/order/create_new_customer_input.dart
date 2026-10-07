part of '../../order.dart';

/// Parameters for creating an order and a new customer together.
final class CreateNewCustomerInput implements InttegroValue {
  final String? number;
  final String? receiptNumber;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final bool? executePayment;
  final bool? finalize;
  final CreateNewCustomerInputRequestMeta? requestMeta;
  final CreateNewCustomerInputCheckoutSettings? checkoutSettings;
  final inttegro_checkout.InvoiceSettingsInput? invoiceSettings;
  final PayoutSettingsRequest? payoutSettings;
  final core.CustomData? customData;
  final inttegro_checkout.BillingDetailsInput? billingDetails;
  final ShippingInput? shipping;
  final inttegro_payment_method.DataInput? paymentMethodData;
  final inttegro_customer.DataInput customerData;
  final List<LineItemInput> lineItems;
  const CreateNewCustomerInput({
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
  factory CreateNewCustomerInput.fromJson(Map<String, Object?> json) =>
      CreateNewCustomerInput(
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
            : CreateNewCustomerInputRequestMeta.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        checkoutSettings: json["checkout_settings"] == null
            ? null
            : CreateNewCustomerInputCheckoutSettings.fromJson(
                (json["checkout_settings"] as Map).cast<String, Object?>(),
              ),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : inttegro_checkout.InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        payoutSettings: json["payout_settings"] == null
            ? null
            : PayoutSettingsRequest.fromJson(
                (json["payout_settings"] as Map).cast<String, Object?>(),
              ),
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        billingDetails: json["billing_details"] == null
            ? null
            : inttegro_checkout.BillingDetailsInput.fromJson(
                (json["billing_details"] as Map).cast<String, Object?>(),
              ),
        shipping: json["shipping"] == null
            ? null
            : ShippingInput.fromJson(
                (json["shipping"] as Map).cast<String, Object?>(),
              ),
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : inttegro_payment_method.DataInput.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        customerData: inttegro_customer.DataInput.fromJson(
          (json["customer_data"] as Map).cast<String, Object?>(),
        ),
        lineItems:
            (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": encodeValue(number),
        if (receiptNumber != null) "receipt_number": encodeValue(receiptNumber),
        if (statementDescriptor != null)
          "statement_descriptor": encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix": encodeValue(statementDescriptorPrefix),
        if (executePayment != null)
          "execute_payment": encodeValue(executePayment),
        if (finalize != null) "finalize": encodeValue(finalize),
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        if (checkoutSettings != null)
          "checkout_settings": encodeValue(checkoutSettings),
        if (invoiceSettings != null)
          "invoice_settings": encodeValue(invoiceSettings),
        if (payoutSettings != null)
          "payout_settings": encodeValue(payoutSettings),
        if (customData != null) "custom_data": encodeValue(customData),
        if (billingDetails != null)
          "billing_details": encodeValue(billingDetails),
        if (shipping != null) "shipping": encodeValue(shipping),
        if (paymentMethodData != null)
          "payment_method_data": encodeValue(paymentMethodData),
        "customer_data": encodeValue(customerData),
        "line_items": encodeValue(lineItems),
      };
}
