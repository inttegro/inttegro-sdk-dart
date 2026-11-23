part of '../../chime.dart';

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
