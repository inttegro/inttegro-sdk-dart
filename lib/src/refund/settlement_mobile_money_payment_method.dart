part of '../../refund.dart';

final class SettlementMobileMoneyPaymentMethod extends SettlementPaymentMethod {
  @override
  final String id;
  final SettlementMobileMoney mobileMoney;
  const SettlementMobileMoneyPaymentMethod({
    required this.id,
    required this.mobileMoney,
  });

  factory SettlementMobileMoneyPaymentMethod.fromJson(
    Map<String, Object?> json,
  ) {
    expectExactKeys(
      json,
      const {"id", "type", "mobile_money"},
      "mobile-money refund settlement",
    );
    if (json["type"] != "mobile_money") {
      throw const FormatException("Invalid mobile-money refund settlement");
    }
    return SettlementMobileMoneyPaymentMethod(
      id: json["id"] as String,
      mobileMoney: SettlementMobileMoney.fromJson(
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
        "mobile_money": encodeValue(mobileMoney),
      };
}
