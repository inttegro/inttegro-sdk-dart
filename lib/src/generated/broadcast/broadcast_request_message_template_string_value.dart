part of '../../../inttegro.dart';

final class BroadcastRequestMessageTemplateStringValue
    extends BroadcastRequestMessageTemplate {
  final String value;
  const BroadcastRequestMessageTemplateStringValue(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
