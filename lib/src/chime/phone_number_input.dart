part of '../../chime.dart';

/// Phone number fields accepted by the Chime API.
///
/// Carries [number].
final class PhoneNumberInput implements InttegroValue {
  final String number;
  const PhoneNumberInput({required this.number});
  factory PhoneNumberInput.fromJson(
    Map<String, Object?> json,
  ) =>
      PhoneNumberInput(number: json["number"] as String);
  @override
  Map<String, Object?> toJson() => {"number": encodeValue(number)};
}
