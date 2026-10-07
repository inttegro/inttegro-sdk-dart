part of '../../financial_account.dart';

/// The Dosh-account variant of [CreateRequest].
///
/// [value] contains the Dosh account details and configuration sent when the
/// financial account is created.
final class DoshCreateRequest extends CreateRequest {
  final DoshRequest value;
  const DoshCreateRequest(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
