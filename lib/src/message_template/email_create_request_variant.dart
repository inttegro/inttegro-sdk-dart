part of '../../message_template.dart';

final class EmailCreateRequestVariant extends CreateRequest {
  final EmailCreateRequest value;
  const EmailCreateRequestVariant(
    this.value,
  );
  @override
  Object? toJson() => encodeValue(value);
}
