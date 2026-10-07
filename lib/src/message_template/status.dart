part of '../../message_template.dart';

/// The drafting and publication state of a [MessageTemplate].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const draft = Status("draft");
  static const published = Status("published");
  static const archived = Status("archived");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
