part of '../../../inttegro.dart';

/// A typed `ChimeRecipientType` value used by the Inttegro API.
final class ChimeRecipientType implements _InttegroValue {
  final String value;
  const ChimeRecipientType(this.value);
  factory ChimeRecipientType.fromJson(Object? json) =>
      ChimeRecipientType(json as String);
  static const phone = ChimeRecipientType("phone");
  static const email = ChimeRecipientType("email");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ChimeRecipientType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
