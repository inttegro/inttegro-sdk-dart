part of '../../file_link.dart';

/// The access category of a [FileLink].
final class Kind implements InttegroValue {
  final String value;
  const Kind(this.value);
  factory Kind.fromJson(Object? json) => Kind(json as String);
  static const public = Kind("public");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Kind && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
