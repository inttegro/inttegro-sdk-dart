part of '../../product.dart';

final class InlineDetailsVariant extends DetailsInput {
  final InlineDetailsInput value;
  const InlineDetailsVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
