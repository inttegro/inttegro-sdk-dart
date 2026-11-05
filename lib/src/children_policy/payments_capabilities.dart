part of '../../children_policy.dart';

/// Payment choices and bounds available to child applications.
final class PaymentsCapabilities implements InttegroValue {
  final List<String>? currencies;
  final Limits? limits;
  const PaymentsCapabilities({this.currencies, this.limits});
  factory PaymentsCapabilities.fromJson(Map<String, Object?> json) =>
      PaymentsCapabilities(
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
