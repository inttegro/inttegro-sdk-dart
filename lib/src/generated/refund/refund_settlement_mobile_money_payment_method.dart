part of '../../../inttegro.dart';

final class RefundSettlementMobileMoneyPaymentMethod
    extends RefundSettlementPaymentMethod {
  @override
  final String id;
  final RefundSettlementMobileMoney mobileMoney;
  const RefundSettlementMobileMoneyPaymentMethod({
    required this.id,
    required this.mobileMoney,
  });

  factory RefundSettlementMobileMoneyPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    _expectExactKeys(
      json,
      const {"id", "type", "mobile_money"},
      "mobile-money refund settlement",
    );
    if (json["type"] != "mobile_money") {
      throw const FormatException("Invalid mobile-money refund settlement");
    }
    return RefundSettlementMobileMoneyPaymentMethod(
      id: json["id"] as String,
      mobileMoney: RefundSettlementMobileMoney.fromJson(
        (json["mobile_money"] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  String get type => "mobile_money";

  @override
  Map<String, Object?> toJson() => {
        "id": id,
        "type": type,
        "mobile_money": _encodeValue(mobileMoney),
      };
}
