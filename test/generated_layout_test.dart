import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('generated models remain split by resource and type', () {
    final generatedRoot = Directory('lib/src/generated');
    expect(generatedRoot.existsSync(), isTrue);
    expect(File('lib/src/generated.dart').existsSync(), isFalse);

    final moduleNames = generatedRoot
        .listSync()
        .whereType<Directory>()
        .map((directory) => directory.uri.pathSegments
            .where((segment) => segment.isNotEmpty)
            .last)
        .toSet();
    expect(
      moduleNames,
      containsAll(<String>{
        'app',
        'balance',
        'balance_transaction',
        'bank_account',
        'broadcast',
        'checkout',
        'chime',
        'country',
        'customer',
        'file',
        'file_link',
        'financial_account',
        'message_template',
        'money',
        'order',
        'otp',
        'payment',
        'payment_method',
        'payout',
        'price',
        'product',
        'purchase_intent',
        'refund',
        'secret_key',
        'shared',
        'upload_request',
        'wallet',
      }),
    );

    final generatedFiles = generatedRoot
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .toList();
    expect(generatedFiles.length, greaterThan(500));

    final librarySource = File('lib/inttegro.dart').readAsStringSync();
    final registeredParts = RegExp(
      r"part '(src/generated/[^']+\.dart)';",
    ).allMatches(librarySource).map((match) => match.group(1)!).toSet();
    expect(registeredParts.length, generatedFiles.length);

    final declaration = RegExp(
      r'^(?:abstract interface class|final class|sealed class|base class|enum|typedef)\s+',
      multiLine: true,
    );
    for (final file in generatedFiles) {
      final relativePath =
          file.path.replaceAll('\\', '/').replaceFirst(RegExp(r'^lib/'), '');
      expect(registeredParts, contains(relativePath));
      expect(
        declaration.allMatches(file.readAsStringSync()).length,
        1,
        reason: '$relativePath must contain exactly one top-level type',
      );
    }
  });
}
