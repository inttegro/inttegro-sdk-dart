# Contributing

Open an issue before proposing a public API change. Pull requests must preserve
typed domain returns, keep HTTP envelopes private, include tests, and pass every
required workflow.

## Contract model layout

Contract models are first-class SDK source. Schema tooling may produce or update
them, but its output is maintained and reviewed with the same care as handwritten
code. The regeneration tools are maintained outside this public repository.

Follow these rules when adding or changing a contract type:

- Create or update the public resource library at `lib/<resource>.dart`.
- Store it at `lib/src/<resource>/<type>.dart`, where `<resource>` is the API
  domain that owns the type, such as `payment`, `order`, or `financial_account`.
- Keep exactly one top-level class, enum, or typedef in each contract model file.
- Add the file's `part` directive to the matching `lib/<resource>.dart` library.
  A model under `lib/src/payment/` must be part of `lib/payment.dart`, for
  example; it must not be registered directly in `lib/inttegro.dart`.
- Prefer concise, resource-scoped names. Use `payment.Status` and
  `financial_account.CreateRequest`, not `PaymentStatus` or
  `FinancialAccountCreateRequest`. Add a qualifier only when two concepts would
  otherwise collide inside the same resource library.
- Name files after the concise type in snake_case. `BankCreateRequest` belongs in
  `lib/src/financial_account/bank_create_request.dart`, not a filename that
  repeats `financial_account`.
- Import another resource library with an explicit prefix when a model refers to
  one of its types. Do not duplicate the foreign type to avoid an import.
- Use `lib/shared.dart` and `lib/src/shared/` only for contract concepts genuinely
  shared across resource domains.
- Do not add a `generated` directory or namespace, and do not combine contract
  types into a monolithic generated-model file.

Consumers should import the core client and each required resource separately:

```dart
import 'package:inttegro/inttegro.dart' as inttegro;
import 'package:inttegro/financial_account.dart' as financial_account;
import 'package:inttegro/payment.dart' as payment;
```

Use snake_case aliases that match the resource path. This convention keeps call
sites predictable for people, IDEs, and code-generation or AI tooling:
`financial_account.BankCreateRequest`, `payment.Payment`, and `payment.Status`.
`package:inttegro/inttegro.dart` remains the client and SDK-core entrypoint; it is
not an umbrella namespace for every resource model.

The layout is enforced by `test/resource_layout_test.dart`. Update that test when
introducing a new resource directory, but do not weaken its one-type-per-file or
resource-library registration checks.
