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
