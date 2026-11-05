part of '../../operating_policy.dart';

/// Payout settings selected in an operating-policy request.
final class PayoutsCapabilitiesInput implements InttegroValue {
  final bool? enabled;
  final Limits? limits;
  final BTAgingSpecReference? btAgingSpec;
  const PayoutsCapabilitiesInput({this.enabled, this.limits, this.btAgingSpec});
  factory PayoutsCapabilitiesInput.fromJson(Map<String, Object?> json) =>
      PayoutsCapabilitiesInput(
        enabled: json['enabled'] as bool?,
        limits: json['limits'] == null
            ? null
            : Limits.fromJson(
                (json['limits'] as Map).cast<String, Object?>(),
              ),
        btAgingSpec: json['bt_aging_spec'] == null
            ? null
            : BTAgingSpecReference.fromJson(
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
