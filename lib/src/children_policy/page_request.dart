part of '../../children_policy.dart';

/// Optional pagination parameters for listing children-policy versions.
final class PageRequest implements InttegroValue {
  final int? number;
  final int? size;

  const PageRequest({this.number, this.size});

  factory PageRequest.fromJson(Map<String, Object?> json) => PageRequest(
        number: (json['number'] as num?)?.toInt(),
        size: (json['size'] as num?)?.toInt(),
      );

  @override
  Map<String, Object?> toJson() => {
        if (number != null) 'number': number,
        if (size != null) 'size': size,
      };
}
