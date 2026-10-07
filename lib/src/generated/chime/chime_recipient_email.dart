part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ChimeRecipientEmail implements _InttegroValue {
  final String address;
  const ChimeRecipientEmail({required this.address});
  factory ChimeRecipientEmail.fromJson(Map<String, Object?> json) =>
      ChimeRecipientEmail(address: json["address"] as String);
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}
