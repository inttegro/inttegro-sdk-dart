part of '../../../inttegro.dart';

/// One sparse text change for a hosted Buy page.
final class PurchaseIntentTextValueUpdate implements _InttegroValue {
  final String? value;
  const PurchaseIntentTextValueUpdate.set(String this.value);
  const PurchaseIntentTextValueUpdate.clear() : value = null;
  factory PurchaseIntentTextValueUpdate.fromJson(Object? json) => json == null
      ? const PurchaseIntentTextValueUpdate.clear()
      : PurchaseIntentTextValueUpdate.set(json as String);
  @override
  Object? toJson() => value;
}
