part of '../../operating_policy.dart';

/// Parameters for listing versions of one operating policy.
final class PageRequest implements InttegroValue {
  final String operatingPolicyId;
  final int? number;
  final int? size;

  const PageRequest({
    required this.operatingPolicyId,
    this.number,
    this.size,
  });

  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        operatingPolicyId: json['operating_policy_id'] as String,
        number: (json['number'] as num?)?.toInt(),
        size: (json['size'] as num?)?.toInt(),
      );

  @override
  Map<String, Object?> toJson() => {
        'operating_policy_id': operatingPolicyId,
        if (number != null) 'number': number,
        if (size != null) 'size': size,
      };
}
