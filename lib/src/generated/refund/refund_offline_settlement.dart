part of '../../../inttegro.dart';

/// Settlement for an order paid outside Inttegro.
final class RefundOfflineSettlement extends RefundSettlement {
  const RefundOfflineSettlement();

  factory RefundOfflineSettlement.fromJson(Map<String, Object?> json) {
    _expectExactKeys(json, const {"type"}, "offline refund settlement");
    if (json["type"] != "offline") {
      throw const FormatException("Invalid offline refund settlement");
    }
    return const RefundOfflineSettlement();
  }

  String get type => "offline";

  @override
  Map<String, Object?> toJson() => const {"type": "offline"};
}
