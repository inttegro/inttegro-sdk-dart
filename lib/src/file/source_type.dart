part of '../../file.dart';

/// How a file entered Inttegro storage.
final class SourceType implements InttegroValue {
  final String value;
  const SourceType(this.value);
  factory SourceType.fromJson(Object? json) => SourceType(json as String);
  static const direct = SourceType("direct");
  static const uploadRequest = SourceType("upload_request");
  static const service = SourceType("service");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is SourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
