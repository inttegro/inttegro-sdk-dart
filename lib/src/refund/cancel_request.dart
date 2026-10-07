part of '../../refund.dart';

/// Identifies the refund to cancel and supplies any cancellation options.
///
/// Carries [requestMeta] and [refundId].
final class CancelRequest implements InttegroValue {
  final RequestMetaInput? requestMeta;
  final String refundId;
  const CancelRequest({this.requestMeta, required this.refundId});
  factory CancelRequest.fromJson(Map<String, Object?> json) => CancelRequest(
        requestMeta: json["request_meta"] == null
            ? null
            : RequestMetaInput.fromJson(
                (json["request_meta"] as Map).cast<String, Object?>(),
              ),
        refundId: json["refund_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (requestMeta != null) "request_meta": encodeValue(requestMeta),
        "refund_id": encodeValue(refundId),
      };
}
