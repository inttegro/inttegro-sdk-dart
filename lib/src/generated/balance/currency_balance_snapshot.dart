part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CurrencyBalanceSnapshot implements _InttegroValue {
  final BalanceValue available;
  final DateTime includesTransactionsBefore;
  final BalanceValue pending;
  final CurrencyBalanceSnapshotRefund refund;
  final CurrencyBalanceSnapshotReserved reserved;
  const CurrencyBalanceSnapshot({
    required this.available,
    required this.includesTransactionsBefore,
    required this.pending,
    required this.refund,
    required this.reserved,
  });
  factory CurrencyBalanceSnapshot.fromJson(Map<String, Object?> json) =>
      CurrencyBalanceSnapshot(
        available: BalanceValue.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
        includesTransactionsBefore:
            _decodeDateTime(json["includes_transactions_before"]),
        pending: BalanceValue.fromJson(
          (json["pending"] as Map).cast<String, Object?>(),
        ),
        refund: CurrencyBalanceSnapshotRefund.fromJson(
          (json["refund"] as Map).cast<String, Object?>(),
        ),
        reserved: CurrencyBalanceSnapshotReserved.fromJson(
          (json["reserved"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "available": _encodeValue(available),
        "includes_transactions_before":
            _encodeValue(includesTransactionsBefore),
        "pending": _encodeValue(pending),
        "refund": _encodeValue(refund),
        "reserved": _encodeValue(reserved),
      };
}
