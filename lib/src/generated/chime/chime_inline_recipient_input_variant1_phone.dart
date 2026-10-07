part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant1Phone implements _InttegroValue {
  final String number;
  const ChimeInlineRecipientInputVariant1Phone({required this.number});
  factory ChimeInlineRecipientInputVariant1Phone.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant1Phone(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": _encodeValue(number)};
}
