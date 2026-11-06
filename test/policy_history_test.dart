import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:inttegro/inttegro.dart';
import 'package:inttegro/children_policy.dart' as children_policy;
import 'package:inttegro/operating_policy.dart' as operating_policy;
import 'package:test/test.dart';

void main() {
  test('policy lookup omits or sends exact version and pages decode', () async {
    final bodies = <String, List<Map<String, Object?>>>{};
      final httpClient = MockClient((request) async {
        bodies.putIfAbsent(request.url.path, () => []).add(
            (jsonDecode(request.body) as Map).cast<String, Object?>(),
          );
      final page = request.url.path.endsWith('/page');
      final children = request.url.path.startsWith('/children_policies');
      final policy = children ? childrenPolicy(2) : operatingPolicy(2);
      final responseBody = page
          ? {
              'page': {
                'number': 0,
                'size': 20,
                'count': 1,
                'total': 2,
                'has_more': true,
                'versions': [policy],
              },
            }
          : {
              (children ? 'children_policy' : 'operating_policy'): policy,
            };
      return http.Response(
        jsonEncode(responseBody),
        200,
      );
    });
    final client = Client(apiKey: 'sk_test_example', httpClient: httpClient);

    await client.childrenPolicies.lookup();
    await client.childrenPolicies.lookup(version: 2);
    await client.operatingPolicies.lookup(
      const operating_policy.LookupRequest(operatingPolicyId: 'op_1'),
    );
    await client.operatingPolicies.lookup(
      const operating_policy.LookupRequest(
        operatingPolicyId: 'op_1',
        version: 2,
      ),
    );
    final childrenPage = await client.childrenPolicies.page(
      const children_policy.PageRequest(number: 0, size: 20),
    );
    final operatingPage = await client.operatingPolicies.page(
      const operating_policy.PageRequest(operatingPolicyId: 'op_1'),
    );

    expect(bodies['/children_policies/lookup'], [
      <String, Object?>{},
      {'version': 2},
    ]);
    expect(bodies['/operating_policies/lookup'], [
      {'operating_policy_id': 'op_1'},
      {'operating_policy_id': 'op_1', 'version': 2},
    ]);
    expect(bodies['/children_policies/page']!.single, {
      'number': 0,
      'size': 20,
    });
    expect(bodies['/operating_policies/page']!.single, {
      'operating_policy_id': 'op_1',
    });
    expect(childrenPage.versions.single.version, 2);
    expect(childrenPage.total, 2);
    expect(operatingPage.versions.single.id, 'op_1');
    expect(operatingPage.hasMore, isTrue);
    client.close();
  });

  test('policy lookup rejects a non-positive version', () async {
    final client = Client(apiKey: 'sk_test_example');
    await expectLater(
      client.childrenPolicies.lookup(version: 0),
      throwsArgumentError,
    );
    client.close();
  });
}

Map<String, Object?> childrenPolicy(int version) => {
      'id': 'cp_1',
      'version': version,
      'active_version': 2,
      'name': 'Default',
      'capabilities': <String, Object?>{},
      'created_at': '2026-11-05T10:00:00Z',
      'updated_at': '2026-11-05T10:00:00Z',
      'version_created_at': '2026-11-05T10:00:00Z',
    };

Map<String, Object?> operatingPolicy(int version) => {
      'id': 'op_1',
      'version': version,
      'active_version': 2,
      'name': 'Retail',
      'capabilities': <String, Object?>{},
      'children_policy_id': 'cp_1',
      'children_policy_version': 1,
      'created_at': '2026-11-05T10:00:00Z',
      'updated_at': '2026-11-05T10:00:00Z',
      'version_created_at': '2026-11-05T10:00:00Z',
    };
