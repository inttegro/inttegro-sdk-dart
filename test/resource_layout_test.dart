import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('contract models remain split by resource and type', () {
    const resourceNames = <String>{
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
    };

    expect(Directory('lib/src/generated').existsSync(), isFalse);
    expect(File('lib/src/generated.dart').existsSync(), isFalse);

    final moduleNames = Directory('lib/src')
        .listSync()
        .whereType<Directory>()
        .map((directory) => directory.uri.pathSegments
            .where((segment) => segment.isNotEmpty)
            .last)
        .toSet();
    expect(moduleNames, containsAll(resourceNames));

    final declaration = RegExp(
      r'^(?:abstract interface class|final class|sealed class|base class|enum|typedef)\s+',
      multiLine: true,
    );
    var resourceFileCount = 0;
    for (final resource in resourceNames) {
      final entrypoint = File('lib/$resource.dart');
      expect(entrypoint.existsSync(), isTrue);
      final entrypointSource = entrypoint.readAsStringSync();
      final registeredParts = RegExp(
        "part '(src/$resource/[^']+\\.dart)';",
      ).allMatches(entrypointSource).map((match) => match.group(1)!).toSet();
      final resourceFiles = Directory('lib/src/$resource')
          .listSync(recursive: true)
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .toList();
      resourceFileCount += resourceFiles.length;
      expect(registeredParts.length, resourceFiles.length);
      final resourceTypePrefix = resource
          .split('_')
          .map((part) => '${part[0].toUpperCase()}${part.substring(1)}')
          .join();

      for (final file in resourceFiles) {
        final relativePath =
            file.path.replaceAll('\\', '/').replaceFirst(RegExp(r'^lib/'), '');
        final basename = file.uri.pathSegments.last;
        expect(registeredParts, contains(relativePath));
        expect(
          file.readAsStringSync(),
          startsWith("part of '../../$resource.dart';"),
        );
        expect(
          basename == '$resource.dart' || !basename.startsWith('${resource}_'),
          isTrue,
          reason: '$relativePath repeats its resource namespace',
        );
        final source = file.readAsStringSync();
        final declarations = declaration.allMatches(source).toList();
        expect(declarations.length, 1,
            reason: '$relativePath must contain exactly one top-level type');
        final typeName = RegExp(
          r'^(?:abstract interface class|final class|sealed class|base class|enum|typedef)\s+(\w+)',
          multiLine: true,
        ).firstMatch(source)!.group(1)!;
        expect(
          typeName == resourceTypePrefix ||
              (resource == 'app' && typeName == 'Application') ||
              !typeName.startsWith(resourceTypePrefix),
          isTrue,
          reason: '$typeName repeats its resource namespace',
        );
      }
    }
    expect(resourceFileCount, greaterThan(500));

    final rootLibrarySource = File('lib/inttegro.dart').readAsStringSync();
    expect(rootLibrarySource, isNot(contains('src/generated/')));
    for (final resource in resourceNames) {
      expect(rootLibrarySource, isNot(contains("part 'src/$resource/")));
    }
  });
}
