part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PaymentMethodPageRequest implements _InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  const PaymentMethodPageRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
  });
  factory PaymentMethodPageRequest.fromJson(Map<String, Object?> json) =>
      PaymentMethodPageRequest(
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
      };
}
