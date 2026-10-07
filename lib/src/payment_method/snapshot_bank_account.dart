part of '../../payment_method.dart';

/// Bank-account details preserved in a payment-method snapshot.
final class SnapshotBankAccount implements InttegroValue {
  final String type;
  final SnapshotGhanaBankAccount? ghanaBankAccount;
  const SnapshotBankAccount({
    required this.type,
    this.ghanaBankAccount,
  });
  factory SnapshotBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      SnapshotBankAccount(
        type: json["type"] as String,
        ghanaBankAccount: json["ghana_bank_account"] == null
            ? null
            : SnapshotGhanaBankAccount.fromJson(
                (json["ghana_bank_account"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        if (ghanaBankAccount != null)
          "ghana_bank_account": encodeValue(ghanaBankAccount),
      };
}
