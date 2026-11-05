part of '../../operating_policy.dart';

/// Payment settings selected in an operating-policy request.
final class PaymentsCapabilitiesInput implements InttegroValue {
  final List<String>? currencies;
  final Limits? limits;
  const PaymentsCapabilitiesInput({this.currencies, this.limits});
  factory PaymentsCapabilitiesInput.fromJson(Map<String, Object?> json) =>
      PaymentsCapabilitiesInput(
        currencies: (json['currencies'] as List?)?.cast<String>(),
        limits: json['limits'] == null
            ? null
            : Limits.fromJson(
                (json['limits'] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (currencies != null) 'currencies': currencies,
        if (limits != null) 'limits': encodeValue(limits),
      };
}
