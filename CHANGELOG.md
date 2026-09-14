# Changelog

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
