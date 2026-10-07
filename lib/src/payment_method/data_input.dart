part of '../../payment_method.dart';

/// Inline payment-method data supplied to an order operation.
final class DataInput implements InttegroValue {
  final DataInputMobileMoney? mobileMoney;
  final Type type;
  const DataInput({this.mobileMoney, required this.type});
  factory DataInput.fromJson(Map<String, Object?> json) => DataInput(
        mobileMoney: json["mobile_money"] == null
            ? null
            : DataInputMobileMoney.fromJson(
                (json["mobile_money"] as Map).cast<String, Object?>(),
              ),
        type: Type.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) "mobile_money": encodeValue(mobileMoney),
        "type": encodeValue(type),
      };
}
