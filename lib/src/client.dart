part of '../inttegro.dart';

const inttegroSdkVersion = '0.1.2';

final class RequestOptions {
  final String? idempotencyKey;
  final Map<String, String> headers;
  const RequestOptions({this.idempotencyKey, this.headers = const {}});
}

final class FileDownload {
  final Uint8List bytes;
  final String? contentType;
  final String? filename;
  const FileDownload({required this.bytes, this.contentType, this.filename});
}

final class CreateFileRequest {
  final String fileName;
  final Uint8List bytes;
  final String purpose;
  final String? title;
  final CustomData? customData;
  const CreateFileRequest({
    required this.fileName,
    required this.bytes,
    required this.purpose,
    this.title,
    this.customData,
  });
}

final class FulfillUploadRequest {
  final String id;
  final String token;
  final String fileName;
  final Uint8List bytes;
  const FulfillUploadRequest({
    required this.id,
    required this.token,
    required this.fileName,
    required this.bytes,
  });
}

final class OpenFileLinkRequest {
  final String id;
  final String token;
  const OpenFileLinkRequest({required this.id, required this.token});
}

enum ErrorReportingPolicy { unexpected, all }

final class SdkReportContext {
  final String language;
  final String version;
  const SdkReportContext({required this.language, required this.version});
  Map<String, Object?> toJson() => {'language': language, 'version': version};
}

final class HttpReportContext {
  final String method;
  final String? route;
  final String serverAddress;
  final int? statusCode;
  final String? requestId;
  final int durationMs;
  const HttpReportContext({
    required this.method,
    required this.route,
    required this.serverAddress,
    required this.statusCode,
    required this.requestId,
    required this.durationMs,
  });
  Map<String, Object?> toJson() => {
        'method': method,
        if (route != null) 'route': route,
        'serverAddress': serverAddress,
        if (statusCode != null) 'statusCode': statusCode,
        if (requestId != null) 'requestId': requestId,
        'durationMs': durationMs,
      };
}

final class ApiErrorReportContext {
  final String? type;
  final String? code;
  final String? fixCode;
  const ApiErrorReportContext({this.type, this.code, this.fixCode});
  Map<String, Object?> toJson() => {
        if (type != null) 'type': type,
        if (code != null) 'code': code,
        if (fixCode != null) 'fixCode': fixCode,
      };
}

final class TraceReportContext {
  final String traceId;
  final String spanId;
  const TraceReportContext({required this.traceId, required this.spanId});
  Map<String, Object?> toJson() => {'traceId': traceId, 'spanId': spanId};
}

final class ErrorReport {
  final int schemaVersion;
  final String eventId;
  final DateTime occurredAt;
  final String severity;
  final String category;
  final String operation;
  final SdkReportContext sdk;
  final HttpReportContext http;
  final ApiErrorReportContext? apiError;
  final TraceReportContext? trace;
  final String exceptionType;
  final String fingerprint;
  const ErrorReport({
    required this.schemaVersion,
    required this.eventId,
    required this.occurredAt,
    required this.severity,
    required this.category,
    required this.operation,
    required this.sdk,
    required this.http,
    required this.apiError,
    required this.trace,
    required this.exceptionType,
    required this.fingerprint,
  });
  Map<String, Object?> toJson() => {
        'schemaVersion': schemaVersion,
        'eventId': eventId,
        'occurredAt': occurredAt.toUtc().toIso8601String(),
        'severity': severity,
        'category': category,
        'operation': operation,
        'sdk': sdk.toJson(),
        'http': http.toJson(),
        if (apiError != null) 'apiError': apiError!.toJson(),
        if (trace != null) 'trace': trace!.toJson(),
        'exceptionType': exceptionType,
        'fingerprint': fingerprint,
      };
}

abstract interface class ErrorReporter {
  FutureOr<void> report(ErrorReport report);
}

final class TelemetryEvent {
  final String name;
  final String operation;
  final String method;
  final String route;
  final int? statusCode;
  final int durationMilliseconds;
  const TelemetryEvent({
    required this.name,
    required this.operation,
    required this.method,
    required this.route,
    required this.statusCode,
    required this.durationMilliseconds,
  });
}

abstract interface class Telemetry {
  void record(TelemetryEvent event);
}

sealed class InttegroException implements Exception {
  const InttegroException();
}

final class InttegroApiException extends InttegroException {
  final int status;
  final String code;
  final String? type;
  final String? fixCode;
  final String? requestId;
  final ErrorReport? report;
  const InttegroApiException({
    required this.status,
    required this.code,
    this.type,
    this.fixCode,
    this.requestId,
    this.report,
  });
}

final class InttegroTransportException extends InttegroException {
  final Object cause;
  const InttegroTransportException(this.cause);
}

final class InttegroDecodingException extends InttegroException {
  final Object cause;
  const InttegroDecodingException(this.cause);
}

final class InttegroConfigurationException extends InttegroException {
  final String message;
  const InttegroConfigurationException(this.message);
}

final class Client {
  final String _apiKey;
  final Uri _baseUrl;
  final http.Client _http;
  final Telemetry? _telemetry;
  final ErrorReporter? _errorReporter;
  final ErrorReportingPolicy _errorReportingPolicy;

  Client({
    required String apiKey,
    Uri? baseUrl,
    http.Client? httpClient,
    Telemetry? telemetry,
    ErrorReporter? errorReporter,
    ErrorReportingPolicy errorReportingPolicy = ErrorReportingPolicy.unexpected,
  })  : _apiKey = apiKey,
        _baseUrl = baseUrl ?? Uri.parse('https://api.inttegro.com'),
        _http = httpClient ?? http.Client(),
        _telemetry = telemetry,
        _errorReporter = errorReporter,
        _errorReportingPolicy = errorReportingPolicy {
    if (apiKey.trim().isEmpty) {
      throw const InttegroConfigurationException('api key cannot be empty');
    }
  }

  late final Apps apps = Apps._(this);
  late final BalanceTransactions balanceTransactions = BalanceTransactions._(
    this,
  );
  late final Balances balances = Balances._(this);
  late final Broadcasts broadcasts = Broadcasts._(this);
  late final Chimes chimes = Chimes._(this);
  late final Customers customers = Customers._(this);
  late final FileLinks fileLinks = FileLinks._(this);
  late final FileReferences fileReferences = FileReferences._(this);
  late final Files files = Files._(this);
  late final FinancialAccounts financialAccounts = FinancialAccounts._(this);
  late final Keys keys = Keys._(this);
  late final MessageTemplates messageTemplates = MessageTemplates._(this);
  late final Orders orders = Orders._(this);
  late final Otp otp = Otp._(this);
  late final PaymentMethods paymentMethods = PaymentMethods._(this);
  late final Payouts payouts = Payouts._(this);
  late final Prices prices = Prices._(this);
  late final Products products = Products._(this);
  late final PurchaseIntents purchaseIntents = PurchaseIntents._(this);
  late final Refunds refunds = Refunds._(this);
  late final Schedules schedules = Schedules._(this);
  late final Specifications specifications = Specifications._(this);
  late final UploadRequests uploadRequests = UploadRequests._(this);

  Future<Object?> _request(
    String method,
    String path,
    Object? body,
    RequestOptions options,
    String operation, {
    required String? field,
    required bool authenticated,
  }) async {
    final started = DateTime.now();
    final headers = <String, String>{
      'user-agent': 'inttegro-dart/$inttegroSdkVersion',
      'content-type': 'application/json',
      ...options.headers,
    };
    if (authenticated) {
      headers['authorization'] = 'Bearer $_apiKey';
    }
    if (options.idempotencyKey case final key?) {
      headers['idempotency-key'] = key;
    }
    http.Response response;
    _record(
      'inttegro.request.prepared',
      operation,
      method,
      path,
      null,
      started,
    );
    try {
      final request = http.Request(method, _baseUrl.resolve(path))
        ..headers.addAll(headers)
        ..body = jsonEncode(body);
      response = await http.Response.fromStream(await _http.send(request));
    } catch (error) {
      await _finishFailure(
        operation,
        method,
        path,
        started,
        null,
        null,
        null,
        'transport',
        null,
      );
      throw InttegroTransportException(error);
    }
    _record(
      'inttegro.response.received',
      operation,
      method,
      path,
      response.statusCode,
      started,
    );
    final requestId = response.headers['x-request-id'];
    Object? decoded;
    try {
      decoded = response.bodyBytes.isEmpty
          ? null
          : jsonDecode(utf8.decode(response.bodyBytes));
    } catch (error) {
      await _finishFailure(
        operation,
        method,
        path,
        started,
        response.statusCode,
        requestId,
        null,
        'decoding',
        null,
      );
      throw InttegroDecodingException(error);
    }
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final root = decoded is Map
          ? decoded.cast<String, Object?>()
          : <String, Object?>{};
      final detail = root['error'] is Map
          ? (root['error'] as Map).cast<String, Object?>()
          : root;
      final code = detail['code'] as String? ?? 'api_error';
      final type = detail['type'] as String?;
      final fixCode = detail['fix_code'] as String?;
      final report = await _finishFailure(
        operation,
        method,
        path,
        started,
        response.statusCode,
        requestId,
        code,
        type ?? 'api',
        fixCode,
      );
      throw InttegroApiException(
        status: response.statusCode,
        code: code,
        type: type,
        fixCode: fixCode,
        requestId: requestId,
        report: report,
      );
    }
    if (field == null) {
      _record(
        'inttegro.response.decoded',
        operation,
        method,
        path,
        response.statusCode,
        started,
      );
      return decoded;
    }
    if (decoded is! Map || !decoded.containsKey(field)) {
      await _finishFailure(
        operation,
        method,
        path,
        started,
        response.statusCode,
        requestId,
        null,
        'decoding',
        null,
      );
      throw InttegroDecodingException(
        FormatException('missing $field in Inttegro response'),
      );
    }
    _record(
      'inttegro.response.decoded',
      operation,
      method,
      path,
      response.statusCode,
      started,
    );
    return decoded[field];
  }

  Future<FileDownload> _download(
    String method,
    String path,
    Object? body,
    RequestOptions options,
    String operation, {
    required bool authenticated,
  }) async {
    final started = DateTime.now();
    final headers = <String, String>{
      'user-agent': 'inttegro-dart/$inttegroSdkVersion',
      ...options.headers,
      'content-type': 'application/json',
    };
    if (authenticated) {
      headers['authorization'] = 'Bearer $_apiKey';
    }
    final request = http.Request(method, _baseUrl.resolve(path))
      ..headers.addAll(headers)
      ..body = jsonEncode(body);
    _record(
      'inttegro.request.prepared',
      operation,
      method,
      path,
      null,
      started,
    );
    http.Response response;
    try {
      response = await http.Response.fromStream(await _http.send(request));
    } catch (error) {
      await _finishFailure(
        operation,
        method,
        path,
        started,
        null,
        null,
        null,
        'transport',
        null,
      );
      throw InttegroTransportException(error);
    }
    _record(
      'inttegro.response.received',
      operation,
      method,
      path,
      response.statusCode,
      started,
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final report = await _finishFailure(
        operation,
        method,
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        'download_failed',
        'api',
        null,
      );
      throw InttegroApiException(
        status: response.statusCode,
        code: 'download_failed',
        requestId: response.headers['x-request-id'],
        report: report,
      );
    }
    return FileDownload(
      bytes: response.bodyBytes,
      contentType: response.headers['content-type'],
    );
  }

  Future<Object?> _uploadFile(
    String path,
    CreateFileRequest value,
    RequestOptions options,
    String operation, {
    required String field,
  }) async {
    final started = DateTime.now();
    final request = http.MultipartRequest('POST', _baseUrl.resolve(path))
      ..headers.addAll({
        'user-agent': 'inttegro-dart/$inttegroSdkVersion',
        'authorization': 'Bearer $_apiKey',
        if (options.idempotencyKey case final key?) 'idempotency-key': key,
        ...options.headers,
      })
      ..fields['purpose'] = value.purpose
      ..files.add(
        http.MultipartFile.fromBytes(
          'file',
          value.bytes,
          filename: value.fileName,
        ),
      );
    if (value.title case final title?) {
      request.fields['title'] = title;
    }
    if (value.customData case final customData?) {
      request.fields['custom_data'] = jsonEncode(encodeValue(customData));
    }
    _record(
      'inttegro.request.prepared',
      operation,
      'POST',
      path,
      null,
      started,
    );
    http.Response response;
    try {
      response = await http.Response.fromStream(await _http.send(request));
    } catch (error) {
      await _finishFailure(
        operation,
        'POST',
        path,
        started,
        null,
        null,
        null,
        'transport',
        null,
      );
      throw InttegroTransportException(error);
    }
    _record(
      'inttegro.response.received',
      operation,
      'POST',
      path,
      response.statusCode,
      started,
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final report = await _finishFailure(
        operation,
        'POST',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        'upload_failed',
        'api',
        null,
      );
      throw InttegroApiException(
        status: response.statusCode,
        code: 'upload_failed',
        requestId: response.headers['x-request-id'],
        report: report,
      );
    }
    final Map<String, Object?> decoded;
    try {
      decoded = (jsonDecode(response.body) as Map).cast<String, Object?>();
    } catch (error) {
      await _finishFailure(
        operation,
        'POST',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        null,
        'decoding',
        null,
      );
      throw InttegroDecodingException(error);
    }
    if (!decoded.containsKey(field)) {
      await _finishFailure(
        operation,
        'POST',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        null,
        'decoding',
        null,
      );
      throw InttegroDecodingException(
        FormatException('missing $field in Inttegro response'),
      );
    }
    _record(
      'inttegro.response.decoded',
      operation,
      'POST',
      path,
      response.statusCode,
      started,
    );
    return decoded[field];
  }

  Future<Object?> _fulfillUpload(
    String path,
    FulfillUploadRequest value,
    RequestOptions options,
    String operation,
  ) async {
    final started = DateTime.now();
    final uri = _baseUrl
        .resolve(path)
        .replace(queryParameters: {'id': value.id, 'token': value.token});
    final request = http.MultipartRequest('POST', uri)
      ..headers.addAll({
        'user-agent': 'inttegro-dart/$inttegroSdkVersion',
        if (options.idempotencyKey case final key?) 'idempotency-key': key,
        ...options.headers,
      })
      ..files.add(
        http.MultipartFile.fromBytes(
          'file',
          value.bytes,
          filename: value.fileName,
        ),
      );
    _record(
      'inttegro.request.prepared',
      operation,
      'POST',
      path,
      null,
      started,
    );
    http.Response response;
    try {
      response = await http.Response.fromStream(await _http.send(request));
    } catch (error) {
      await _finishFailure(
        operation,
        'POST',
        path,
        started,
        null,
        null,
        null,
        'transport',
        null,
      );
      throw InttegroTransportException(error);
    }
    _record(
      'inttegro.response.received',
      operation,
      'POST',
      path,
      response.statusCode,
      started,
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final report = await _finishFailure(
        operation,
        'POST',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        'upload_failed',
        'api',
        null,
      );
      throw InttegroApiException(
        status: response.statusCode,
        code: 'upload_failed',
        requestId: response.headers['x-request-id'],
        report: report,
      );
    }
    final Object? decoded;
    try {
      decoded = jsonDecode(response.body);
    } catch (error) {
      await _finishFailure(
        operation,
        'POST',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        null,
        'decoding',
        null,
      );
      throw InttegroDecodingException(error);
    }
    _record(
      'inttegro.response.decoded',
      operation,
      'POST',
      path,
      response.statusCode,
      started,
    );
    return decoded;
  }

  Future<FileDownload> _openFileLink(
    String path,
    OpenFileLinkRequest value,
    String operation,
  ) async {
    final uri = _baseUrl
        .resolve(path)
        .replace(queryParameters: {'id': value.id, 'token': value.token});
    final started = DateTime.now();
    _record('inttegro.request.prepared', operation, 'GET', path, null, started);
    http.Response response;
    try {
      response = await _http.get(
        uri,
        headers: {'user-agent': 'inttegro-dart/$inttegroSdkVersion'},
      );
    } catch (error) {
      await _finishFailure(
        operation,
        'GET',
        path,
        started,
        null,
        null,
        null,
        'transport',
        null,
      );
      throw InttegroTransportException(error);
    }
    _record(
      'inttegro.response.received',
      operation,
      'GET',
      path,
      response.statusCode,
      started,
    );
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final report = await _finishFailure(
        operation,
        'GET',
        path,
        started,
        response.statusCode,
        response.headers['x-request-id'],
        'file_link_failed',
        'api',
        null,
      );
      throw InttegroApiException(
        status: response.statusCode,
        code: 'file_link_failed',
        requestId: response.headers['x-request-id'],
        report: report,
      );
    }
    return FileDownload(
      bytes: response.bodyBytes,
      contentType: response.headers['content-type'],
    );
  }

  void _record(
    String name,
    String operation,
    String method,
    String route,
    int? status,
    DateTime started,
  ) {
    final telemetry = _telemetry;
    if (telemetry == null) {
      return;
    }
    try {
      telemetry.record(
        TelemetryEvent(
          name: name,
          operation: operation,
          method: method,
          route: route,
          statusCode: status,
          durationMilliseconds:
              DateTime.now().difference(started).inMilliseconds,
        ),
      );
    } catch (_) {
      // Telemetry must never alter request behavior.
    }
  }

  Future<ErrorReport?> _finishFailure(
    String operation,
    String method,
    String route,
    DateTime started,
    int? status,
    String? requestId,
    String? code,
    String category,
    String? fixCode,
  ) async {
    _record(
      'inttegro.request.failed',
      operation,
      method,
      route,
      status,
      started,
    );
    final reporter = _errorReporter;
    if (reporter == null) {
      return null;
    }
    if (_errorReportingPolicy == ErrorReportingPolicy.unexpected &&
        status != null &&
        status < 500 &&
        category != 'decoding' &&
        category != 'unknown_error') {
      return null;
    }
    final report = ErrorReport(
      schemaVersion: 1,
      eventId: '${DateTime.now().microsecondsSinceEpoch}',
      occurredAt: DateTime.now().toUtc(),
      severity: 'error',
      category: category,
      operation: operation,
      sdk: const SdkReportContext(
        language: 'dart',
        version: inttegroSdkVersion,
      ),
      http: HttpReportContext(
        method: method.toUpperCase(),
        route: route,
        serverAddress: _baseUrl.toString(),
        statusCode: status,
        requestId: requestId,
        durationMs: DateTime.now().difference(started).inMilliseconds,
      ),
      apiError: status == null
          ? null
          : ApiErrorReportContext(type: category, code: code, fixCode: fixCode),
      trace: null,
      exceptionType: status == null
          ? 'InttegroTransportException'
          : 'InttegroApiException',
      fingerprint: 'inttegro:dart:$operation:$category:${status ?? 'none'}',
    );
    try {
      await reporter.report(report);
    } catch (_) {
      // Reporting must never replace the operation's original failure.
    }
    return report;
  }

  void close() => _http.close();
}
