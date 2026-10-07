part of '../../payout.dart';

/// Parameters for scheduling a payout.
///
/// Carries [executeAfter], [maxAmount], [destinationId], and [reference].
final class ScheduleRequest implements InttegroValue {
  final DateTime? executeAfter;
  final int? maxAmount;
  final String destinationId;
  final String reference;
  const ScheduleRequest({
    this.executeAfter,
    this.maxAmount,
    required this.destinationId,
    required this.reference,
  });
  factory ScheduleRequest.fromJson(Map<String, Object?> json) =>
      ScheduleRequest(
        executeAfter: json["execute_after"] == null
            ? null
            : decodeDateTime(json["execute_after"]),
        maxAmount: json["max_amount"] == null
            ? null
            : (json["max_amount"] as num).toInt(),
        destinationId: json["destination_id"] as String,
        reference: json["reference"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (executeAfter != null) "execute_after": encodeValue(executeAfter),
        if (maxAmount != null) "max_amount": encodeValue(maxAmount),
        "destination_id": encodeValue(destinationId),
        "reference": encodeValue(reference),
      };
}
