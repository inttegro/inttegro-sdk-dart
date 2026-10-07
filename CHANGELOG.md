# Changelog

## Unreleased

- Breaking: moved contract models into public resource libraries such as
  `package:inttegro/payment.dart` and
  `package:inttegro/financial_account.dart`, with concise resource-scoped type
  names such as `payment.Status` and `financial_account.CreateRequest`.
- Moved model sources from the internal `generated` namespace into first-class,
  concise resource paths under `lib/src`; serialization and runtime behavior
  are unchanged.

## 0.9.0

- Added typed payment receipt and hosted receipt-format models separately from
  order invoices.
- Split generated models into resource modules with one top-level type per
  file. This changes source organization without changing runtime behavior.

## 0.8.0

- Breaking: replaced the payout status `invalid` with `failed`.
- Added typed payout failure details with a stable reason, caller-safe detail,
  retry guidance, and a separate lifecycle timestamp.
- Added the application-scoped financial-account fingerprint to typed
  responses.

## 0.7.0

- Added typed hosted Buy-page text overrides to Purchase Intent create,
  update, and response models, including explicit default restoration.

## 0.6.2

- Restored the broad Inttegro API description while retaining searchable
  pub.dev topics.

## 0.6.1

- Added pub.dev topics and clearer GHS checkout and Ghana Mobile Money
  positioning for developers evaluating the SDK.

## 0.6.0

- Added the required application-scoped customer fingerprint to typed customer
  responses for possible duplicate-record detection.

## 0.5.0

- Breaking: replaced payout `balanceTransactions` ID strings with typed
  contribution values containing the source transaction's original amount and
  the exact amount allocated to the payout.
- Added complete payment balance-transaction allocation history together with
  available, pending, and spent amount partitions.

## 0.4.0

- Added typed search across customers, financial accounts, orders, payouts, and
  products, including filters, facets, sorting, cursor pagination, totals, and
  freshness metadata.
- Added typed verification purposes for OTP initiation requests.

## 0.3.0

- Breaking: replaced payout maps and generic payloads with named request,
  response, settings, page, error, and destination models.
- Made `ghs` the explicit supported payout-destination field and exposed payout
  timestamps as `DateTime` values.
- Added fluent resource semantics and removed server-internal purchase-intent
  activity response models.

## 0.2.5

- Aligned the automated publish job with Dart's official OIDC workflow so the setup action's credential remains registered for publication.

## 0.2.4

- Fixed automated publishing to use the OIDC credential configured by the Dart setup action directly.

## 0.2.3

- Isolated public dependency resolution from the scoped pub.dev OIDC publish credential.

## 0.2.2

- Removed the publish credential from the verification job before resolving dependencies.

## 0.2.1

- Fixed release verification so trusted-publishing credentials are reserved for the publish job.

## 0.2.0

- Breaking: replaced generic maps with named models for balances, purchase intents, products, payment methods, payments, and orders.
- Breaking: exposed API timestamps as `DateTime` values and accepted `DateTime` values in timestamp request fields.

## 0.1.2

- Published the fingerprint-safe SDK through the configured trusted-publishing environment.

## 0.1.1

- Tightened financial-account and payment-method response models to exclude internal platform fields.

## 0.1.0

- Initial typed server SDK.
