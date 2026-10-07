part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ChimeInlineRecipientInputVariant2Email implements _InttegroValue {
  final String address;
  const ChimeInlineRecipientInputVariant2Email({required this.address});
  factory ChimeInlineRecipientInputVariant2Email.fromJson(
    Map<String, Object?> json,
  ) =>
      ChimeInlineRecipientInputVariant2Email(
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"address": _encodeValue(address)};
}
