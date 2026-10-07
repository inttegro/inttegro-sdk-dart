# Inttegro Dart SDK

The official typed Dart client for server-side Inttegro integrations. This
package does not depend on Flutter and is separate from the mobile payment-sheet
SDK.
Never embed a server API key in a Flutter, browser, or other customer-facing app.

```shell
dart pub add inttegro
```

```dart
import 'dart:io';
import 'package:inttegro/inttegro.dart' as inttegro;
import 'package:inttegro/order.dart' as order;

final client = inttegro.Client(
  apiKey: Platform.environment['INTTEGRO_API_KEY']!,
);
final foundOrder = await client.orders.lookup(
  const order.LookupRequest(orderId: 'order_...'),
);
print(foundOrder.id);
client.close();
```

All methods return domain values; wire response envelopes remain private.

## Resource libraries

`package:inttegro/inttegro.dart` provides the client, request options,
exceptions, telemetry interfaces, and other SDK-wide types. Contract models live
in public libraries that mirror the API resources:

```text
package:inttegro/financial_account.dart
package:inttegro/order.dart
package:inttegro/payment.dart
package:inttegro/refund.dart
```

Import only the resource libraries your integration uses. Give each one a
snake_case prefix matching its API resource; the prefix supplies the context
that concise names such as `Status`, `CreateRequest`, and `Page` intentionally
omit:

```dart
import 'package:inttegro/inttegro.dart' as inttegro;
import 'package:inttegro/financial_account.dart' as financial_account;
import 'package:inttegro/payment.dart' as payment;

Future<financial_account.FinancialAccount> createFinancialAccount(
  inttegro.Client client,
  financial_account.CreateRequest request,
) => client.financialAccounts.create(request);

bool isPaid(payment.Payment value) => value.status == payment.Status.paid;
```

For example, `payment.Status` and `financial_account.CreateRequest` are distinct
types even though their source filenames do not repeat the resource name. Dart
directories do not create namespaces; the public library and its import prefix
provide that boundary.

Each contract model has one top-level type under
`lib/src/<resource>/<type>.dart` and is a part of the corresponding
`lib/<resource>.dart` library. Models are first-class source: they do not live in
a `generated` directory or a monolithic generated-model file. See
[CONTRIBUTING.md](CONTRIBUTING.md) before adding or moving a contract type.

## Observability and error reporting

Provide a `Telemetry` and/or `ErrorReporter` implementation to `Client`. Telemetry
emits prepared, received, decoded, and failed lifecycle events without API keys,
request bodies, or resource identifiers. Error reports are not constructed unless
a reporter is configured. The default `unexpected` policy reports transport,
decoding, unknown, and server failures.

See the [API reference](https://pub.dev/documentation/inttegro/latest/) and
[Inttegro Studio](https://studio.inttegro.com/sdks/dart).
