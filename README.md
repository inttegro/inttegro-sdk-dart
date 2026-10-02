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
import 'package:inttegro/inttegro.dart';

final client = Client(apiKey: Platform.environment['INTTEGRO_API_KEY']!);
final order = await client.orders.lookup(
  const LookupOrderRequest(orderId: 'order_...'),
);
print(order.id);
client.close();
```

All methods return domain values; wire response envelopes remain private.

## Observability and error reporting

Provide a `Telemetry` and/or `ErrorReporter` implementation to `Client`. Telemetry
emits prepared, received, decoded, and failed lifecycle events without API keys,
request bodies, or resource identifiers. Error reports are not constructed unless
a reporter is configured. The default `unexpected` policy reports transport,
decoding, unknown, and server failures.

See the [API reference](https://pub.dev/documentation/inttegro/latest/) and
[Inttegro Studio](https://studio.inttegro.com/sdks/dart).
