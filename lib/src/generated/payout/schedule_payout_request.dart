part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class SchedulePayoutRequest implements _InttegroValue {
  final DateTime? executeAfter;
  final int? maxAmount;
  final String destinationId;
  final String reference;
  const SchedulePayoutRequest({
    this.executeAfter,
    this.maxAmount,
    required this.destinationId,
    required this.reference,
  });
  factory SchedulePayoutRequest.fromJson(Map<String, Object?> json) =>
      SchedulePayoutRequest(
        executeAfter: json["execute_after"] == null
            ? null
            : _decodeDateTime(json["execute_after"]),
        maxAmount: json["max_amount"] == null
            ? null
            : (json["max_amount"] as num).toInt(),
        destinationId: json["destination_id"] as String,
        reference: json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (executeAfter != null) "execute_after": _encodeValue(executeAfter),
        if (maxAmount != null) "max_amount": _encodeValue(maxAmount),
        "destination_id": _encodeValue(destinationId),
        "reference": _encodeValue(reference),
      };
}
