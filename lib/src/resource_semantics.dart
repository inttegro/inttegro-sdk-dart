part of '../inttegro.dart';

/// Deterministic questions about a payment response.
extension PaymentSemantics on Payment {
  bool get isPaid => status == PaymentStatus.paid;

  bool get requiresAction => status == PaymentStatus.requiresAction;

  bool get isTerminal =>
      status == PaymentStatus.paid ||
      status == PaymentStatus.canceled ||
      status == PaymentStatus.expired ||
      status == PaymentStatus.failed;

  PaymentNextAction? get requiredAction => requiresAction ? nextAction : null;
}

/// Deterministic questions about an order response.
extension OrderSemantics on Order {
  bool get isPaid => status == OrderStatus.paid || paidAt != null;

  bool get requiresPayment => status == OrderStatus.requiresPayment;

  bool get isTerminal =>
      status == OrderStatus.paid ||
      status == OrderStatus.completed ||
      status == OrderStatus.canceled ||
      status == OrderStatus.expired;

  PaymentNextAction? get requiredPaymentAction => payment?.requiredAction;
}

/// Deterministic questions about a purchase-intent response.
extension PurchaseIntentSemantics on PurchaseIntent {
  bool get isActive => status == PurchaseIntentStatus.active;

  bool get isSingleUse => usage.singleUse == true;

  String? get usedOrderId {
    final id = isSingleUse ? usage.order?.id : null;
    return id == null || id.isEmpty ? null : id;
  }
}

/// Deterministic questions about a product response.
extension ProductSemantics on Product {
  bool get isArchived => archivedAt != null;

  bool get isPublished => active && !isArchived;

  bool get wasEverPublished => publishedAt != null;
}

/// Deterministic questions about a payment-method response.
extension PaymentMethodSemantics on PaymentMethod {
  bool get isArchived => archivedAt != null;

  bool get isVerified => verifiedAt != null;

  bool get isReusable => active && !isArchived && ephemeral != true;
}
