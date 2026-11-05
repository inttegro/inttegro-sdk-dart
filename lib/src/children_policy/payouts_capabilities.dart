part of '../../children_policy.dart';

/// Payout choices, bounds, and aging options available to children.
final class PayoutsCapabilities implements InttegroValue {
  final List<bool>? enabled;
  final Limits? limits;
  final List<BTAgingSpec>? btAgingSpec;
  const PayoutsCapabilities({this.enabled, this.limits, this.btAgingSpec});
  factory PayoutsCapabilities.fromJson(Map<String, Object?> json) =>
      PayoutsCapabilities(
        enabled: (json['enabled'] as List?)?.cast<bool>(),
        limits: json['limits'] == null
            ? null
            : Limits.fromJson(
                (json['limits'] as Map).cast<String, Object?>(),
              ),
        btAgingSpec: (json['bt_aging_spec'] as List?)
            ?.map(
              (value) => BTAgingSpec.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) 'enabled': enabled,
        if (limits != null) 'limits': encodeValue(limits),
        if (btAgingSpec != null) 'bt_aging_spec': encodeValue(btAgingSpec),
      };
}
