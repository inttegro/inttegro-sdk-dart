part of '../../operating_policy.dart';

/// Caller-selectable reference to a platform-owned aging specification.
final class BTAgingSpecReference implements InttegroValue {
  final String id;
  const BTAgingSpecReference({required this.id});
  factory BTAgingSpecReference.fromJson(Map<String, Object?> json) =>
      BTAgingSpecReference(id: json['id'] as String);
  @override
  Map<String, Object?> toJson() => {'id': id};
}
