part of '../../order.dart';

/// Parameters for updating an order.
///
/// Carries [clearPaymentMethod], [customData], [invoiceSettings], and
/// [finalize], among other supported fields.
final class UpdateRequest implements InttegroValue {
  final bool? clearPaymentMethod;
  final core.CustomData? customData;
  final inttegro_checkout.InvoiceSettingsInput? invoiceSettings;
  final bool? finalize;
  final List<LineItemInput>? lineItems;
  final String? number;
  final String? receiptNumber;
  final UpdateRequestPaymentMethodData? paymentMethodData;
  final String? paymentMethodId;
  final String? statementDescriptor;
  final String? statementDescriptorPrefix;
  final String orderId;
  const UpdateRequest({
    this.clearPaymentMethod,
    this.customData,
    this.invoiceSettings,
    this.finalize,
    this.lineItems,
    this.number,
    this.receiptNumber,
    this.paymentMethodData,
    this.paymentMethodId,
    this.statementDescriptor,
    this.statementDescriptorPrefix,
    required this.orderId,
  });
  factory UpdateRequest.fromJson(Map<String, Object?> json) => UpdateRequest(
        clearPaymentMethod: json["clear_payment_method"] == null
            ? null
            : json["clear_payment_method"] as bool,
        customData: json["custom_data"] == null
            ? null
            : core.CustomData.fromJson(json["custom_data"]),
        invoiceSettings: json["invoice_settings"] == null
            ? null
            : inttegro_checkout.InvoiceSettingsInput.fromJson(
                (json["invoice_settings"] as Map).cast<String, Object?>(),
              ),
        finalize: json["finalize"] == null ? null : json["finalize"] as bool,
        lineItems: json["line_items"] == null
            ? null
            : (json["line_items"] as List).map(LineItemInput.fromJson).toList(),
        number: json["number"] == null ? null : json["number"] as String,
        receiptNumber: json["receipt_number"] == null
            ? null
            : json["receipt_number"] as String,
        paymentMethodData: json["payment_method_data"] == null
            ? null
            : UpdateRequestPaymentMethodData.fromJson(
                (json["payment_method_data"] as Map).cast<String, Object?>(),
              ),
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"] as String,
        statementDescriptor: json["statement_descriptor"] == null
            ? null
            : json["statement_descriptor"] as String,
        statementDescriptorPrefix: json["statement_descriptor_prefix"] == null
            ? null
            : json["statement_descriptor_prefix"] as String,
        orderId: json["order_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (clearPaymentMethod != null)
          "clear_payment_method": encodeValue(clearPaymentMethod),
        if (customData != null) "custom_data": encodeValue(customData),
        if (invoiceSettings != null)
          "invoice_settings": encodeValue(invoiceSettings),
        if (finalize != null) "finalize": encodeValue(finalize),
        if (lineItems != null) "line_items": encodeValue(lineItems),
        if (number != null) "number": encodeValue(number),
        if (receiptNumber != null) "receipt_number": encodeValue(receiptNumber),
        if (paymentMethodData != null)
          "payment_method_data": encodeValue(paymentMethodData),
        if (paymentMethodId != null)
          "payment_method_id": encodeValue(paymentMethodId),
        if (statementDescriptor != null)
          "statement_descriptor": encodeValue(statementDescriptor),
        if (statementDescriptorPrefix != null)
          "statement_descriptor_prefix": encodeValue(statementDescriptorPrefix),
        "order_id": encodeValue(orderId),
      };
}
