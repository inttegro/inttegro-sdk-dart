part of '../../financial_account.dart';

/// The mobile-money provider represented by a financial institution.
final class InstitutionMobileMoneyProvider implements InttegroValue {
  final String provider;
  const InstitutionMobileMoneyProvider({required this.provider});
  factory InstitutionMobileMoneyProvider.fromJson(
    Map<String, Object?> json,
  ) =>
      InstitutionMobileMoneyProvider(
        provider: json["provider"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"provider": encodeValue(provider)};
}
