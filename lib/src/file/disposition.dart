part of '../../file.dart';

/// Whether file contents are presented inline or as an attachment.
final class Disposition implements InttegroValue {
  final String value;
  const Disposition(this.value);
  factory Disposition.fromJson(Object? json) => Disposition(json as String);
  static const attachment = Disposition("attachment");
  static const inline = Disposition("inline");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is Disposition && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
