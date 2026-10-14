part of '../../app.dart';

/// A setup item that must be completed before a capability can be enabled.
final class CapabilityRequirement implements InttegroValue {
  final String code;
  final String description;
  final DateTime? dueAt;
  const CapabilityRequirement(
      {required this.code, required this.description, this.dueAt});
  factory CapabilityRequirement.fromJson(Map<String, Object?> json) =>
      CapabilityRequirement(
        code: json['code'] as String,
        description: json['description'] as String,
        dueAt: json['due_at'] == null ? null : decodeDateTime(json['due_at']),
      );
  @override
  Map<String, Object?> toJson() => {
        'code': code,
        'description': description,
        'due_at': encodeValue(dueAt),
      };
}
