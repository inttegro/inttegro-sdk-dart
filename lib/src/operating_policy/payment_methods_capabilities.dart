part of '../../operating_policy.dart';

/// Selected payment-method configuration.
final class PaymentMethodsCapabilities implements InttegroValue {
  final PaymentMethodCapabilities? mobileMoney;
  final PaymentMethodCapabilities? bankAccount;
  final PaymentMethodCapabilities? motito;
  final PaymentMethodCapabilities? card;
  const PaymentMethodsCapabilities({
    this.mobileMoney,
    this.bankAccount,
    this.motito,
    this.card,
  });
  factory PaymentMethodsCapabilities.fromJson(Map<String, Object?> json) =>
      PaymentMethodsCapabilities(
        mobileMoney: _decodeMethod(json['mobile_money']),
        bankAccount: _decodeMethod(json['bank_account']),
        motito: _decodeMethod(json['motito']),
        card: _decodeMethod(json['card']),
      );
  static PaymentMethodCapabilities? _decodeMethod(Object? value) =>
      value == null
          ? null
          : PaymentMethodCapabilities.fromJson(
              (value as Map).cast<String, Object?>(),
            );
  @override
  Map<String, Object?> toJson() => {
        if (mobileMoney != null) 'mobile_money': encodeValue(mobileMoney),
        if (bankAccount != null) 'bank_account': encodeValue(bankAccount),
        if (motito != null) 'motito': encodeValue(motito),
        if (card != null) 'card': encodeValue(card),
      };
}
