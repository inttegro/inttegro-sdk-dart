part of '../../otp.dart';

/// Parameters for initiating a one-time-password transaction.
///
/// Carries [asyncDelivery], [messageTemplate], [purpose], and [sender], among
/// other supported fields.
final class InitiateRequest implements InttegroValue {
  final bool? asyncDelivery;
  final String? messageTemplate;
  final Purpose purpose;
  final String? sender;
  final String? tokenAlphabet;
  final AlphabetType? tokenAlphabetType;
  final int? validityDurationInMinutes;
  final String recipient;
  final String serviceName;
  final int tokenSize;
  const InitiateRequest({
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
  factory InitiateRequest.fromJson(Map<String, Object?> json) =>
      InitiateRequest(
        asyncDelivery: json["async_delivery"] == null
            ? null
            : json["async_delivery"] as bool,
        messageTemplate: json["message_template"] == null
            ? null
            : json["message_template"] as String,
        purpose: Purpose.fromJson(json["purpose"]),
        sender: json["sender"] == null ? null : json["sender"] as String,
        tokenAlphabet: json["token_alphabet"] == null
            ? null
            : json["token_alphabet"] as String,
        tokenAlphabetType: json["token_alphabet_type"] == null
            ? null
            : AlphabetType.fromJson(json["token_alphabet_type"]),
        validityDurationInMinutes: json["validity_duration_in_minutes"] == null
            ? null
            : (json["validity_duration_in_minutes"] as num).toInt(),
        recipient: json["recipient"] as String,
        serviceName: json["service_name"] as String,
        tokenSize: (json["token_size"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (asyncDelivery != null) "async_delivery": encodeValue(asyncDelivery),
        if (messageTemplate != null)
          "message_template": encodeValue(messageTemplate),
        "purpose": encodeValue(purpose),
        if (sender != null) "sender": encodeValue(sender),
        if (tokenAlphabet != null) "token_alphabet": encodeValue(tokenAlphabet),
        if (tokenAlphabetType != null)
          "token_alphabet_type": encodeValue(tokenAlphabetType),
        if (validityDurationInMinutes != null)
          "validity_duration_in_minutes":
              encodeValue(validityDurationInMinutes),
        "recipient": encodeValue(recipient),
        "service_name": encodeValue(serviceName),
        "token_size": encodeValue(tokenSize),
      };
}
