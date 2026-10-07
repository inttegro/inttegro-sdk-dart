part of '../../broadcast.dart';

final class MessageTemplateText extends RequestMessageTemplate {
  final String value;
  const MessageTemplateText(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
