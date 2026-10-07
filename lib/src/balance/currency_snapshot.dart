part of '../../balance.dart';

/// A balance snapshot for one currency.
///
/// It separates available and pending funds from amounts reserved or associated
/// with refunds. [includesTransactionsBefore] identifies the transaction cutoff
/// represented by the snapshot.
final class CurrencySnapshot implements InttegroValue {
  final Value available;
  final DateTime includesTransactionsBefore;
  final Value pending;
  final CurrencySnapshotRefund refund;
  final CurrencySnapshotReserved reserved;
  const CurrencySnapshot({
    required this.available,
    required this.includesTransactionsBefore,
    required this.pending,
    required this.refund,
    required this.reserved,
  });
  factory CurrencySnapshot.fromJson(Map<String, Object?> json) =>
      CurrencySnapshot(
        available: Value.fromJson(
          (json["available"] as Map).cast<String, Object?>(),
        ),
        includesTransactionsBefore:
            decodeDateTime(json["includes_transactions_before"]),
        pending: Value.fromJson(
          (json["pending"] as Map).cast<String, Object?>(),
        ),
        refund: CurrencySnapshotRefund.fromJson(
          (json["refund"] as Map).cast<String, Object?>(),
        ),
        reserved: CurrencySnapshotReserved.fromJson(
          (json["reserved"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "available": encodeValue(available),
        "includes_transactions_before": encodeValue(includesTransactionsBefore),
        "pending": encodeValue(pending),
        "refund": encodeValue(refund),
        "reserved": encodeValue(reserved),
      };
}
