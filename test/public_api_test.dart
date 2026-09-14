import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:inttegro/inttegro.dart';
import 'package:test/test.dart';

void main() {
  test('client exposes typed resources', () {
    final client = Client(apiKey: 'sk_test_example');
    expect(client.orders, isA<Orders>());
    expect(const AmountParams(currency: Currency.ghs, value: 5000).value, 5000);
    client.close();
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

  test('purchase intent exposes nested response types', () {
    final intent = PurchaseIntent.fromJson({
      'allow_variants': false,
      'created_at': '2026-09-09T12:00:00Z',
      'id': 'sale_123',
      'merchant': {'organization_name': 'Tea House Ltd'},
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
    expect(intent.isActive, isTrue);
    expect(intent.isSingleUse, isTrue);
    expect(intent.usedOrderId, 'or_123');
  });

  test('payout settings expose known destinations statically', () {
    final settings = PayoutSettingsMutation.fromJson({
      'destinations': {'ghs': 'fa_123'},
      'fx_enabled': true,
      'id': 'settings_123',
    });

    expect(settings.destinations?.ghs, 'fa_123');
    expect(settings.fxEnabled, isTrue);
    expect(settings.toJson()['destinations'], {'ghs': 'fa_123'});
  });

  test('resources answer protocol questions', () {
    final payment = Payment.fromJson({
      'amount': {'currency': 'ghs', 'value': 1000},
      'id': 'py_123',
      'initiated_at': '2026-09-09T12:00:00Z',
      'next_action': {'type': 'redirect'},
      'statement_descriptor': 'INTTEGRO',
      'status': 'requires_action',
    });
    expect(payment.requiresAction, isTrue);
    expect(payment.isTerminal, isFalse);
    expect(payment.requiredAction?.type, PaymentNextActionType.redirect);

    final product = Product.fromJson({
      'active': true,
      'created_at': '2026-09-09T12:00:00Z',
      'id': 'prod_123',
      'name': 'Tea guide',
      'published_at': '2026-09-09T12:00:00Z',
      'type': 'digital',
    });
    expect(product.isPublished, isTrue);
    expect(product.wasEverPublished, isTrue);

    final method = PaymentMethod.fromJson({
      'active': true,
      'created_at': '2026-09-09T12:00:00Z',
      'customer_id': 'cu_123',
      'id': 'pm_123',
      'type': 'mobile_money',
      'verified_at': '2026-09-09T12:00:00Z',
    });
    expect(method.isVerified, isTrue);
    expect(method.isReusable, isTrue);
  });
}
