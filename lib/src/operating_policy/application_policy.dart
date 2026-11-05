part of '../../operating_policy.dart';

/// Immutable operating-policy snapshot applied to an application.
final class ApplicationPolicy implements InttegroValue {
  final Capabilities capabilities;
  final Source source;
  const ApplicationPolicy({required this.capabilities, required this.source});
  factory ApplicationPolicy.fromJson(Map<String, Object?> json) =>
      ApplicationPolicy(
        capabilities: Capabilities.fromJson(
          (json['capabilities'] as Map).cast<String, Object?>(),
        ),
        source: Source.fromJson(
          (json['source'] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        'capabilities': encodeValue(capabilities),
        'source': encodeValue(source),
      };
}
