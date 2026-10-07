part of '../../payment_method.dart';

/// Completed payment-method verification metadata.
///
/// Exposes [completedAt], [initiatedAt], [mechanism], and [requestId], among
/// other contract fields.
final class Verification implements InttegroValue {
  final DateTime? completedAt;
  final DateTime initiatedAt;
  final String? mechanism;
  final String requestId;
  final String type;
  const Verification({
    this.completedAt,
    required this.initiatedAt,
    this.mechanism,
    required this.requestId,
    required this.type,
  });
  factory Verification.fromJson(Map<String, Object?> json) => Verification(
        completedAt: json["completed_at"] == null
            ? null
            : decodeDateTime(json["completed_at"]),
        initiatedAt: decodeDateTime(json["initiated_at"]),
        mechanism:
            json["mechanism"] == null ? null : json["mechanism"] as String,
        requestId: json["request_id"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (completedAt != null) "completed_at": encodeValue(completedAt),
        "initiated_at": encodeValue(initiatedAt),
        if (mechanism != null) "mechanism": encodeValue(mechanism),
        "request_id": encodeValue(requestId),
        "type": encodeValue(type),
      };
}
