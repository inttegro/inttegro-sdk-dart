part of '../../message_template.dart';

/// Rendered SMS content.
///
/// Exposes [fullMessage].
final class RenderedSMS implements InttegroValue {
  final String fullMessage;
  const RenderedSMS({required this.fullMessage});
  factory RenderedSMS.fromJson(Map<String, Object?> json) =>
      RenderedSMS(fullMessage: json["full_message"] as String);
  @override
  Map<String, Object?> toJson() => {"full_message": encodeValue(fullMessage)};
}
