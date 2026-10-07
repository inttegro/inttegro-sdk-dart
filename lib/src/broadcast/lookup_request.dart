part of '../../broadcast.dart';

/// Identifies the broadcast to retrieve.
///
/// Carries [broadcastId].
final class LookupRequest implements InttegroValue {
  final String broadcastId;
  const LookupRequest({required this.broadcastId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(broadcastId: json["broadcast_id"] as String);
  @override
  Map<String, Object?> toJson() => {"broadcast_id": encodeValue(broadcastId)};
}
