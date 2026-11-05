part of '../../operating_policy.dart';

/// Provenance for the policy snapshot applied to an application.
final class Source implements InttegroValue {
  final String type;
  final String? id;
  final int? version;
  const Source({required this.type, this.id, this.version});
  factory Source.fromJson(Map<String, Object?> json) => Source(
        type: json['type'] as String,
        id: json['id'] as String?,
        version: json['version'] as int?,
      );
  @override
  Map<String, Object?> toJson() => {
        'type': type,
        if (id != null) 'id': id,
        if (version != null) 'version': version,
      };
}
