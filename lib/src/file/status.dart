part of '../../file.dart';

/// The storage and processing state of a [File].
final class Status implements InttegroValue {
  final String value;
  const Status(this.value);
  factory Status.fromJson(Object? json) => Status(json as String);
  static const uploading = Status("uploading");
  static const processing = Status("processing");
  static const available = Status("available");
  static const failed = Status("failed");
  static const deleted = Status("deleted");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) => other is Status && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
