part of '../../message_template.dart';

/// Identifies the message template targeted by an operation.
final class IDRequest implements InttegroValue {
  final String id;
  const IDRequest({required this.id});
  factory IDRequest.fromJson(Map<String, Object?> json) =>
      IDRequest(id: json["id"] as String);
  @override
  Map<String, Object?> toJson() => {"id": encodeValue(id)};
}
