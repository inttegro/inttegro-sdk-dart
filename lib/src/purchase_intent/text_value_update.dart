part of '../../purchase_intent.dart';

/// One sparse text change for a hosted Buy page.
final class TextValueUpdate implements InttegroValue {
  final String? value;
  const TextValueUpdate.set(String this.value);
  const TextValueUpdate.clear() : value = null;
  factory TextValueUpdate.fromJson(Object? json) => json == null
      ? const TextValueUpdate.clear()
      : TextValueUpdate.set(json as String);
  @override
  Object? toJson() => value;
}
