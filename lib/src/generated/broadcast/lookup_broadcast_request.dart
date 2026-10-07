part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupBroadcastRequest implements _InttegroValue {
  final String broadcastId;
  const LookupBroadcastRequest({required this.broadcastId});
  factory LookupBroadcastRequest.fromJson(Map<String, Object?> json) =>
      LookupBroadcastRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": _encodeValue(broadcastId)};
}
