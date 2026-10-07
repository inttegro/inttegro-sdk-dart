part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class PageChimesRequest implements _InttegroValue {
  final String? customerId;
  final int? pageNumber;
  final int? pageSize;
  final String? recipient;
  const PageChimesRequest({
    this.customerId,
    this.pageNumber,
    this.pageSize,
    this.recipient,
  });
  factory PageChimesRequest.fromJson(Map<String, Object?> json) =>
      PageChimesRequest(
        customerId:
            json["customer_id"] == null ? null : json["customer_id"] as String,
        pageNumber: json["page_number"] == null
            ? null
            : (json["page_number"] as num).toInt(),
        pageSize: json["page_size"] == null
            ? null
            : (json["page_size"] as num).toInt(),
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (customerId != null) "customer_id": _encodeValue(customerId),
        if (pageNumber != null) "page_number": _encodeValue(pageNumber),
        if (pageSize != null) "page_size": _encodeValue(pageSize),
        if (recipient != null) "recipient": _encodeValue(recipient),
      };
}
