import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:inttegro/inttegro.dart';
import 'package:inttegro/balance_transaction.dart'
    as inttegro_balance_transaction;
import 'package:inttegro/customer.dart' as inttegro_customer;
import 'package:inttegro/financial_account.dart' as financial_account;
import 'package:inttegro/money.dart' as inttegro_money;
import 'package:inttegro/otp.dart' as inttegro_otp;
import 'package:inttegro/payment.dart' as inttegro_payment;
import 'package:inttegro/payment_method.dart' as inttegro_payment_method;
import 'package:inttegro/payout.dart' as inttegro_payout;
import 'package:inttegro/product.dart' as inttegro_product;
import 'package:inttegro/purchase_intent.dart' as inttegro_purchase_intent;
import 'package:inttegro/refund.dart' as inttegro_refund;
import 'package:test/test.dart';

void main() {
  test('resource libraries expose concise type names', () {
    const financial_account.CreateRequest? request = null;

    expect(request, isNull);
    expect(inttegro_payment.Status.paid.toJson(), 'paid');
  });

  test('customer fingerprint is required and round trips', () {
    final base = <String, Object?>{
      'balance': <String, Object?>{},
      'created_at': '2026-09-16T00:00:00Z',
      'fingerprint': 'cfp_v1_app_buyer',
      'guest': false,
      'id': 'cu_123',
      'name': 'Ama',
    };
    final customer = inttegro_customer.Customer.fromJson(base);
    expect(customer.fingerprint, 'cfp_v1_app_buyer');
    expect(customer.toJson()['fingerprint'], 'cfp_v1_app_buyer');
  });

  test('client exposes typed resources', () {
    final client = Client(apiKey: 'sk_test_example');
    expect(client.orders, isA<Orders>());
    expect(
        const inttegro_money.AmountParams(
                currency: inttegro_money.Currency.ghs, value: 5000)
            .value,
        5000);
    client.close();
  });

  test('OTP purposes preserve closed wire values', () {
    expect(inttegro_otp.Purpose.signIn.toJson(), 'sign_in');
  });

  test('wire envelopes are unwrapped into domain values', () async {
    final httpClient = MockClient((request) async {
      expect(request.url.path, '/apps/lookup');
      expect(request.headers['authorization'], 'Bearer sk_test_example');
      return http.Response(
        jsonEncode({
          'app': {
            'id': 'app_test',
            'name': 'Test',
            'created_at': '2026-09-07T00:00:00Z',
          },
        }),
        200,
        headers: {'content-type': 'application/json'},
      );
    });
    final client = Client(apiKey: 'sk_test_example', httpClient: httpClient);
    final app = await client.apps.lookup();
    expect(app.id, 'app_test');
    client.close();
  });

  test('resource search is typed and available on every supported resource',
      () async {
    final paths = <String>[];
    final httpClient = MockClient((request) async {
      paths.add(request.url.path);
      expect(jsonDecode(request.body), {
        'text': 'tea',
        'sort': {'field': 'relevance', 'direction': 'desc'},
        'page_size': 10,
      });
      return http.Response(
        jsonEncode({
          'search': {
            'resource_types': ['product'],
            'sort': {'field': 'relevance', 'direction': 'desc'},
            'page_size': 10,
            'result_count': 1,
            'has_more': false,
            'total': {'value': 1, 'relation': 'exact'},
            'resource_totals': [
              {
                'resource_type': 'product',
                'value': 1,
                'relation': 'exact',
              },
            ],
            'results': [
              {
                'resource': {'type': 'product', 'id': 'prod_123'},
                'title': 'Tea guide',
                'amount': {'currency': 'ghs', 'value': 5000},
                'updated_at': '2026-09-21T12:00:00Z',
              },
            ],
            'facets': [],
            'next_cursor': null,
            'freshness': {
              'state': 'current',
              'observed_at': '2026-09-21T12:00:01Z',
              'resources': [],
            },
          },
        }),
        200,
        headers: {'content-type': 'application/json'},
      );
    });
    final client = Client(apiKey: 'sk_test_example', httpClient: httpClient);
    const request = ResourceSearchRequest(
      text: 'tea',
      sort: ResourceSearchSort(
        field: ResourceSearchSortField.relevance,
        direction: ResourceSearchSortDirection.descending,
      ),
      pageSize: 10,
    );

    final pages = await Future.wait([
      client.customers.search(request),
      client.financialAccounts.search(request),
      client.orders.search(request),
      client.payouts.search(request),
      client.products.search(request),
    ]);

    expect(paths, [
      '/customers/search',
      '/financial_accounts/search',
      '/orders/search',
      '/payouts/search',
      '/products/search',
    ]);
    expect(pages.last.results.single.resource.id, 'prod_123');
    expect(pages.last.results.single.amount?.value, 5000);
    expect(pages.last.freshness.state, ResourceSearchFreshnessState.current);
    client.close();
  });

  test('semantic collections control custom-data mutation', () {
    final original = CustomData({'order': 'first'});
    final updated = original.set('order', 'second').set('campaign', 'summer');

    expect(original['order'], 'first');
    expect(updated.toJson(), {'order': 'second', 'campaign': 'summer'});
    expect(() => updated.values['unsafe'] = 'mutation', throwsUnsupportedError);
    expect(() => CustomData({'x' * 257: 'too long'}), throwsArgumentError);

    final patch = CustomDataPatch().set('campaign', 'winter').unset('legacy');
    expect(patch.toJson(), {'campaign': 'winter', 'legacy': null});
  });

  test('balance snapshot exposes ghs statically', () {
    final balance = BalanceSnapshot.fromJson({
      'ghs': {
        'available': {'amount': 1000},
        'includes_transactions_before': '2026-09-09T12:00:00Z',
        'pending': {'amount': 200},
        'refund': {'amount': 50},
        'reserved': {'amount': 100},
      },
    });

    expect(balance.ghs.available.amount, 1000);
    expect(balance.ghs.includesTransactionsBefore, isA<DateTime>());
    expect(
      (balance.toJson()['ghs']
          as Map<String, Object?>)['includes_transactions_before'],
      '2026-09-09T12:00:00.000Z',
    );
  });

  test('balance transaction exposes all public allocations', () {
    final transaction =
        inttegro_balance_transaction.BalanceTransaction.fromJson({
      'id': 'bt_1',
      'type': 'payment',
      'payment_id': 'py_1',
      'order_id': 'or_1',
      'amount': {'currency': 'ghs', 'value': 2500},
      'available_amount': {'currency': 'ghs', 'value': 1500},
      'pending_amount': {'currency': 'ghs', 'value': 1000},
      'spent_amount': {'currency': 'ghs', 'value': 0},
      'allocations': [
        {
          'id': 'bta_1',
          'type': 'payout',
          'status': 'pending',
          'payout': {
            'id': 'po_1',
            'amount': {'currency': 'ghs', 'value': 1000},
          },
          'created_at': '2026-09-09T12:01:00Z',
          'updated_at': '2026-09-09T12:01:00Z',
        }
      ],
      'created_at': '2026-09-09T12:00:00Z',
    });

    expect(transaction.availableAmount?.value, 1500);
    expect(transaction.allocations?.single.type,
        inttegro_balance_transaction.AllocationType.payout);
    expect(transaction.allocations?.single.payout?.id, 'po_1');
  });

  test('purchase intent exposes nested response types', () {
    final intent = inttegro_purchase_intent.PurchaseIntent.fromJson({
      'allow_variants': false,
      'created_at': '2026-09-09T12:00:00Z',
      'id': 'sale_123',
      'merchant': {'organization_name': 'Tea House Ltd'},
      'presentation': {
        'buy_page': {
          'text': {'checkout_section_title': 'Support this cause'},
        },
      },
      'product': {
        'active': true,
        'created_at': '2026-09-09T11:00:00Z',
        'dimensions': {
          'digital': {'bytes': 1024},
        },
        'id': 'prod_123',
        'name': 'Tea guide',
        'type': 'digital',
      },
      'quantity': {'min': 1},
      'status': 'active',
      'usage': {
        'order': {'created_at': '2026-09-09T12:02:00Z', 'id': 'or_123'},
        'single_use': true,
      },
    });

    expect(intent.merchant?.organizationName, 'Tea House Ltd');
    expect(intent.product?.dimensions?.digital?.bytes, 1024);
    expect(intent.usage.order?.id, 'or_123');
    expect(intent.presentation?.buyPage?.text?.checkoutSectionTitle,
        'Support this cause');
    expect(intent.isActive, isTrue);
    expect(intent.isSingleUse, isTrue);
    expect(intent.usedOrderId, 'or_123');

    final create = inttegro_purchase_intent.CreateRequest(
      quantity: const inttegro_purchase_intent.CreateRequestQuantity(min: 1),
      presentation: const inttegro_purchase_intent.Presentation(
        buyPage: inttegro_purchase_intent.BuyPagePresentation(
          text: inttegro_purchase_intent.BuyPageText(
            amountFieldLabel: 'Your contribution',
          ),
        ),
      ),
    );
    expect(
      create.toJson()['presentation'],
      {
        'buy_page': {
          'text': {'amount_field_label': 'Your contribution'},
        },
      },
    );

    final update = inttegro_purchase_intent.UpdateRequest(
      id: 'sale_123',
      presentation: const inttegro_purchase_intent.UpdatePresentation(
        buyPage: inttegro_purchase_intent.UpdateBuyPagePresentation(
          text: inttegro_purchase_intent.UpdateBuyPageText(
            checkoutSectionTitle:
                inttegro_purchase_intent.TextValueUpdate.set('Contribute now'),
            amountFieldLabel: inttegro_purchase_intent.TextValueUpdate.clear(),
          ),
        ),
      ),
    );
    expect(
      update.toJson()['presentation'],
      {
        'buy_page': {
          'text': {
            'checkout_section_title': 'Contribute now',
            'amount_field_label': null,
          },
        },
      },
    );
  });

  test('payout settings expose known destinations statically', () {
    final settings = inttegro_payout.SettingsMutation.fromJson({
      'destinations': {'ghs': 'fa_123'},
      'fx_enabled': true,
      'id': 'settings_123',
    });

    expect(settings.destinations?.ghs, 'fa_123');
    expect(settings.fxEnabled, isTrue);
    expect(settings.toJson()['destinations'], {'ghs': 'fa_123'});
  });

  test('refund settlement is discriminated and contains masked details', () {
    final refund = inttegro_refund.Refund.fromJson({
      'created_at': '2026-09-09T12:00:00Z',
      'id': 'rf_123',
      'line_items': [
        {
          'id': 'rli_123',
          'order_line_item_id': 'oli_123',
          'order_line_item': {
            'id': 'oli_123',
            'type': 'product',
            'quantity': 2,
            'product': {
              'id': 'prod_123',
              'name': 'Premium subscription',
            },
          },
          'original_amount_paid': {'currency': 'ghs', 'value': 200},
          'refund_amount': {'currency': 'ghs', 'value': 100},
        },
      ],
      'order_id': 'or_123',
      'reason': 'requested_by_customer',
      'settlement': {
        'type': 'payment_method',
        'payment_method': {
          'id': 'pm_123',
          'type': 'bank_account',
          'bank_account': {
            'type': 'ghana_bank_account',
            'ghana_bank_account': {
              'account_number': '****1234',
              'last4': '1234',
            },
          },
        },
      },
      'status': 'pending',
      'total': {'currency': 'ghs', 'value': 100},
    });

    final settlement =
        refund.settlement as inttegro_refund.PaymentMethodSettlement;
    final method = settlement.paymentMethod
        as inttegro_refund.SettlementBankAccountPaymentMethod;
    expect(method.bankAccount.ghanaBankAccount.accountNumber, '****1234');
    final lineItem = refund.lineItems.single.orderLineItem
        as inttegro_refund.OrderProductLineItem;
    expect(lineItem.quantity, 2);
    expect(lineItem.product.id, 'prod_123');
    expect(
      () => inttegro_refund.Settlement.fromJson({
        'type': 'offline',
        'payment_method': {'id': 'pm_123'},
      }),
      throwsFormatException,
    );
    expect(
      () => inttegro_refund.Settlement.fromJson({'type': 'payment_method'}),
      throwsA(anything),
    );
  });

  test('resources answer protocol questions', () {
    final payment = inttegro_payment.Payment.fromJson({
      'amount': {'currency': 'ghs', 'value': 1000},
      'id': 'py_123',
      'initiated_at': '2026-09-09T12:00:00Z',
      'next_action': {'type': 'redirect'},
      'statement_descriptor': 'INTTEGRO',
      'status': 'requires_action',
    });
    expect(payment.requiresAction, isTrue);
    expect(payment.isTerminal, isFalse);
    expect(
        payment.requiredAction?.type, inttegro_payment.NextActionType.redirect);

    final product = inttegro_product.Product.fromJson({
      'active': true,
      'created_at': '2026-09-09T12:00:00Z',
      'id': 'prod_123',
      'name': 'Tea guide',
      'published_at': '2026-09-09T12:00:00Z',
      'type': 'digital',
    });
    expect(product.isPublished, isTrue);
    expect(product.wasEverPublished, isTrue);

    final method = inttegro_payment_method.PaymentMethod.fromJson({
      'active': true,
      'created_at': '2026-09-09T12:00:00Z',
      'customer_id': 'cu_123',
      'fingerprint': 'fp_123',
      'id': 'pm_123',
      'type': 'mobile_money',
      'verified_at': '2026-09-09T12:00:00Z',
    });
    expect(method.isVerified, isTrue);
    expect(method.isReusable, isTrue);
  });
}
