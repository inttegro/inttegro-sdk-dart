part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class InitiateOTPRequest implements _InttegroValue {
  final bool? asyncDelivery;
  final String? messageTemplate;
  final OTPPurpose purpose;
  final String? sender;
  final String? tokenAlphabet;
  final OTPAlphabetType? tokenAlphabetType;
  final int? validityDurationInMinutes;
  final String recipient;
  final String serviceName;
  final int tokenSize;
  const InitiateOTPRequest({
    this.asyncDelivery,
    this.messageTemplate,
    required this.purpose,
    this.sender,
    this.tokenAlphabet,
    this.tokenAlphabetType,
    this.validityDurationInMinutes,
    required this.recipient,
    required this.serviceName,
    required this.tokenSize,
  });
  factory InitiateOTPRequest.fromJson(Map<String, Object?> json) =>
      InitiateOTPRequest(
        asyncDelivery: json["async_delivery"] == null
            ? null
            : json["async_delivery"] as bool,
        messageTemplate: json["message_template"] == null
            ? null
            : json["message_template"] as String,
        purpose: OTPPurpose.fromJson(json["purpose"]),
        sender: json["sender"] == null ? null : json["sender"] as String,
        tokenAlphabet: json["token_alphabet"] == null
            ? null
            : json["token_alphabet"] as String,
        tokenAlphabetType: json["token_alphabet_type"] == null
            ? null
            : OTPAlphabetType.fromJson(json["token_alphabet_type"]),
        validityDurationInMinutes: json["validity_duration_in_minutes"] == null
            ? null
            : (json["validity_duration_in_minutes"] as num).toInt(),
        recipient: json["recipient"] as String,
        serviceName: json["service_name"] as String,
        tokenSize: (json["token_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (asyncDelivery != null)
          "async_delivery": _encodeValue(asyncDelivery),
        if (messageTemplate != null)
          "message_template": _encodeValue(messageTemplate),
        "purpose": _encodeValue(purpose),
        if (sender != null) "sender": _encodeValue(sender),
        if (tokenAlphabet != null)
          "token_alphabet": _encodeValue(tokenAlphabet),
        if (tokenAlphabetType != null)
          "token_alphabet_type": _encodeValue(tokenAlphabetType),
        if (validityDurationInMinutes != null)
          "validity_duration_in_minutes":
              _encodeValue(validityDurationInMinutes),
        "recipient": _encodeValue(recipient),
        "service_name": _encodeValue(serviceName),
        "token_size": _encodeValue(tokenSize),
      };
}
