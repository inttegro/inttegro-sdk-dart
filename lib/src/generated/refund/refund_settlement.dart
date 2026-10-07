part of '../../../inttegro.dart';

/// Immutable destination snapshot for a refund.
sealed class RefundSettlement implements _InttegroValue {
  const RefundSettlement();

  factory RefundSettlement.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "offline" => RefundOfflineSettlement.fromJson(value),
      "payment_method" => RefundPaymentMethodSettlement.fromJson(value),
      _ => throw const FormatException("Unsupported refund settlement type"),
    };
  }
}
