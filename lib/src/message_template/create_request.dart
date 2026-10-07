part of '../../message_template.dart';

sealed class CreateRequest implements InttegroValue {
  const CreateRequest();
  factory CreateRequest.fromJson(Object? json) {
    try {
      return SMSCreateRequestVariant(
        SMSCreateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    try {
      return EmailCreateRequestVariant(
        EmailCreateRequest.fromJson(
          (json as Map).cast<String, Object?>(),
        ),
      );
    } catch (_) {}
    throw FormatException('Unsupported CreateRequest value');
  }
}
