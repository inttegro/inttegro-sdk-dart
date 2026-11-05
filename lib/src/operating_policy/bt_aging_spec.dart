part of '../../operating_policy.dart';

/// Platform-resolved balance-transaction aging configuration.
final class BTAgingSpec implements InttegroValue {
  final String publicId;
  final String tPlus;
  const BTAgingSpec({required this.publicId, required this.tPlus});
  factory BTAgingSpec.fromJson(Map<String, Object?> json) => BTAgingSpec(
        publicId: json['public_id'] as String,
        tPlus: json['t_plus'] as String,
      );
  @override
  Map<String, Object?> toJson() => {'public_id': publicId, 't_plus': tPlus};
}
