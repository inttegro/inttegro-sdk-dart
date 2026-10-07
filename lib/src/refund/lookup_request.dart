part of '../../refund.dart';

/// Identifies the refund to retrieve.
///
/// Carries [refundId].
final class LookupRequest implements InttegroValue {
  final String refundId;
  const LookupRequest({required this.refundId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(refundId: json["refund_id"] as String);
  @override
  Map<String, Object?> toJson() => {"refund_id": encodeValue(refundId)};
}
