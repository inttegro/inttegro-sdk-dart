part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotBankAccount implements _InttegroValue {
  final String type;
  final PaymentMethodSnapshotGhanaBankAccount? ghanaBankAccount;
  const PaymentMethodSnapshotBankAccount({
    required this.type,
    this.ghanaBankAccount,
  });
  factory PaymentMethodSnapshotBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotBankAccount(
        type: json["type"] as String,
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : PaymentMethodSnapshotGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": _encodeValue(ghanaBankAccount),
      };
}
