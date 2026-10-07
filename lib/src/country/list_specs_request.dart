part of '../../country.dart';

/// An empty request for listing country specifications.
final class ListSpecsRequest implements InttegroValue {
  const ListSpecsRequest();
  factory ListSpecsRequest.fromJson(Map<String, Object?> json) =>
      const ListSpecsRequest();
  @override
  Map<String, Object?> toJson() => {};
}
