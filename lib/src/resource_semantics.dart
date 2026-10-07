part of '../inttegro.dart';

/// Deterministic questions about a payment response.
extension PaymentSemantics on inttegro_payment.Payment {
  bool get isPaid => status == inttegro_payment.Status.paid;

  bool get requiresAction => status == inttegro_payment.Status.requiresAction;

  bool get isTerminal =>
      status == inttegro_payment.Status.paid ||
      status == inttegro_payment.Status.canceled ||
      status == inttegro_payment.Status.expired ||
      status == inttegro_payment.Status.failed;

  inttegro_payment.NextAction? get requiredAction =>
      requiresAction ? nextAction : null;
}

/// Deterministic questions about an order response.
extension OrderSemantics on inttegro_order.Order {
  bool get isPaid => status == inttegro_order.Status.paid || paidAt != null;

  bool get requiresPayment => status == inttegro_order.Status.requiresPayment;

  bool get isTerminal =>
      status == inttegro_order.Status.paid ||
      status == inttegro_order.Status.completed ||
      status == inttegro_order.Status.canceled ||
      status == inttegro_order.Status.expired;

  inttegro_payment.NextAction? get requiredPaymentAction =>
      payment?.requiredAction;
}

/// Deterministic questions about a purchase-intent response.
extension PurchaseIntentSemantics on inttegro_purchase_intent.PurchaseIntent {
  bool get isActive => status == inttegro_purchase_intent.Status.active;

  bool get isSingleUse => usage.singleUse == true;

  String? get usedOrderId {
    final id = isSingleUse ? usage.order?.id : null;
    return id == null || id.isEmpty ? null : id;
  }
}

/// Deterministic questions about a product response.
extension ProductSemantics on inttegro_product.Product {
  bool get isArchived => archivedAt != null;

  bool get isPublished => active && !isArchived;

  bool get wasEverPublished => publishedAt != null;
}

/// Deterministic questions about a payment-method response.
extension PaymentMethodSemantics on inttegro_payment_method.PaymentMethod {
  bool get isArchived => archivedAt != null;

  bool get isVerified => verifiedAt != null;

  bool get isReusable => active && !isArchived && ephemeral != true;
}
