part of '../../refund.dart';

/// Immutable destination snapshot for a refund.
sealed class Settlement implements InttegroValue {
  const Settlement();

  factory Settlement.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "offline" => OfflineSettlement.fromJson(value),
      "payment_method" => PaymentMethodSettlement.fromJson(value),
      _ => throw const FormatException("Unsupported refund settlement type"),
    };
  }
}
