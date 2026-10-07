part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CancelBroadcastRequest implements _InttegroValue {
  final String broadcastId;
  const CancelBroadcastRequest({required this.broadcastId});
  factory CancelBroadcastRequest.fromJson(Map<String, Object?> json) =>
      CancelBroadcastRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": _encodeValue(broadcastId)};
}
