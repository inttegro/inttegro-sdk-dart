part of '../../chime.dart';

/// Effective non-secret delivery defaults for Chimes.
final class Settings implements InttegroValue {
  final SMSSettings sms;
  final EmailSettings email;

  const Settings({required this.sms, required this.email});

  factory Settings.fromJson(Map<String, Object?> json) => Settings(
        sms: SMSSettings.fromJson((json['sms'] as Map).cast<String, Object?>()),
        email: EmailSettings.fromJson(
          (json['email'] as Map).cast<String, Object?>(),
        ),
      );

  @override
  Map<String, Object?> toJson() => {
        'sms': encodeValue(sms),
        'email': encodeValue(email),
      };
}

/// SMS sender defaults and accepted sender length.
final class SMSSettings implements InttegroValue {
  final String defaultSender;
  final int minSenderCharLen;
  final int maxSenderCharLen;

  const SMSSettings({
    required this.defaultSender,
    required this.minSenderCharLen,
    required this.maxSenderCharLen,
  });

  factory SMSSettings.fromJson(Map<String, Object?> json) => SMSSettings(
        defaultSender: json['default_sender'] as String,
        minSenderCharLen: json['min_sender_char_len'] as int,
        maxSenderCharLen: json['max_sender_char_len'] as int,
      );

  @override
  Map<String, Object?> toJson() => {
        'default_sender': defaultSender,
        'min_sender_char_len': minSenderCharLen,
        'max_sender_char_len': maxSenderCharLen,
      };
}

/// Default and allowed From addresses for email Chimes.
final class EmailSettings implements InttegroValue {
  final String defaultFrom;
  final List<String> allowedFrom;

  const EmailSettings({required this.defaultFrom, required this.allowedFrom});

  factory EmailSettings.fromJson(Map<String, Object?> json) => EmailSettings(
        defaultFrom: json['default_from'] as String,
        allowedFrom: (json['allowed_from'] as List).cast<String>(),
      );

  @override
  Map<String, Object?> toJson() => {
        'default_from': defaultFrom,
        'allowed_from': allowedFrom,
      };
}
