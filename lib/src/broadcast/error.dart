part of '../../broadcast.dart';

/// Error details returned by broadcast operations.
///
/// Exposes [recipient], [fixCode], and [type].
final class Error implements InttegroValue {
  final String? recipient;
  final String? fixCode;
  final String? type;
  const Error({this.recipient, this.fixCode, this.type});
  factory Error.fromJson(Map<String, Object?> json) => Error(
        recipient:
            json["recipient"] == null ? null : json["recipient"] as String,
        fixCode: json["fix_code"] == null ? null : json["fix_code"] as String,
        type: json["type"] == null ? null : json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (recipient != null) "recipient": encodeValue(recipient),
        if (fixCode != null) "fix_code": encodeValue(fixCode),
        if (type != null) "type": encodeValue(type),
      };
}
