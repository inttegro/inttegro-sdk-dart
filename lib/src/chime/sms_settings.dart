part of '../../chime.dart';

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
