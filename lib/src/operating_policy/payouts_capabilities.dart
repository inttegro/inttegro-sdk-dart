part of '../../operating_policy.dart';

/// Resolved payout configuration selected for an application.
final class PayoutsCapabilities implements InttegroValue {
  final bool? enabled;
  final Limits? limits;
  final BTAgingSpec? btAgingSpec;
  const PayoutsCapabilities({this.enabled, this.limits, this.btAgingSpec});
  factory PayoutsCapabilities.fromJson(Map<String, Object?> json) =>
      PayoutsCapabilities(
        enabled: json['enabled'] as bool?,
        limits: json['limits'] == null
            ? null
            : Limits.fromJson(
                (json['limits'] as Map).cast<String, Object?>(),
              ),
        btAgingSpec: json['bt_aging_spec'] == null
            ? null
            : BTAgingSpec.fromJson(
                (json['bt_aging_spec'] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) 'enabled': enabled,
        if (limits != null) 'limits': encodeValue(limits),
        if (btAgingSpec != null) 'bt_aging_spec': encodeValue(btAgingSpec),
      };
}
