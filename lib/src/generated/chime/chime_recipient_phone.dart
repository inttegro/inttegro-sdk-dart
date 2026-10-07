part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeRecipientPhone implements _InttegroValue {
  final String number;
  const ChimeRecipientPhone({required this.number});
  factory ChimeRecipientPhone.fromJson(Map<String, Object?> json) =>
      ChimeRecipientPhone(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": _encodeValue(number)};
}
