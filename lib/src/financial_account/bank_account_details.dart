part of '../../financial_account.dart';

/// Bank-account details supplied when creating a financial account.
///
/// Carries [type] and [ghanaBankAccount].
final class BankAccountDetails implements InttegroValue {
  final inttegro_bank_account.Type type;
  final GhanaBankAccountDetails ghanaBankAccount;
  const BankAccountDetails({
    required this.type,
    required this.ghanaBankAccount,
  });
  factory BankAccountDetails.fromJson(
    Map<String, Object?> json,
  ) =>
      BankAccountDetails(
        type: inttegro_bank_account.Type.fromJson(json["type"]),
        ghanaBankAccount: GhanaBankAccountDetails.fromJson(
          (json["ghana_bank_account"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "ghana_bank_account": encodeValue(ghanaBankAccount),
      };
}
