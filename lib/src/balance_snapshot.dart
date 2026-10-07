part of '../inttegro.dart';

/// The application's latest GHS balance snapshot.
final class BalanceSnapshot implements InttegroValue {
  final inttegro_balance.CurrencySnapshot ghs;

  const BalanceSnapshot({required this.ghs});

  factory BalanceSnapshot.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return BalanceSnapshot(
      ghs: inttegro_balance.CurrencySnapshot.fromJson(
        (value['ghs'] as Map).cast<String, Object?>(),
      ),
    );
  }

  @override
  Map<String, Object?> toJson() => {'ghs': encodeValue(ghs)};
}
