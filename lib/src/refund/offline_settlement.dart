part of '../../refund.dart';

/// Settlement for an order paid outside Inttegro.
final class OfflineSettlement extends Settlement {
  const OfflineSettlement();

  factory OfflineSettlement.fromJson(Map<String, Object?> json) {
    expectExactKeys(json, const {"type"}, "offline refund settlement");
    if (json["type"] != "offline") {
      throw const FormatException("Invalid offline refund settlement");
    }
    return const OfflineSettlement();
  }

  String get type => "offline";

  @override
  Map<String, Object?> toJson() => const {"type": "offline"};
}
