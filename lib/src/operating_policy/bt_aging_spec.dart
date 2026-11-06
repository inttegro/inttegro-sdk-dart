part of '../../operating_policy.dart';

/// Platform-resolved balance-transaction aging configuration.
final class BTAgingSpec implements InttegroValue {
  final String id;
  final String tPlus;
  const BTAgingSpec({required this.id, required this.tPlus});
  factory BTAgingSpec.fromJson(Map<String, Object?> json) => BTAgingSpec(
        id: json['id'] as String,
        tPlus: json['t_plus'] as String,
      );
  @override
  Map<String, Object?> toJson() => {'id': id, 't_plus': tPlus};
}
