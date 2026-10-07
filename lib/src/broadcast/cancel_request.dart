part of '../../broadcast.dart';

/// Identifies the broadcast to cancel and supplies any cancellation options.
///
/// Carries [broadcastId].
final class CancelRequest implements InttegroValue {
  final String broadcastId;
  const CancelRequest({required this.broadcastId});
  factory CancelRequest.fromJson(Map<String, Object?> json) =>
      CancelRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": encodeValue(broadcastId)};
}
