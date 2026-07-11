import 'package:flutter_test/flutter_test.dart';
import 'package:open_source_api_client/models/request_item.dart';
import 'package:open_source_api_client/providers/client_provider.dart';

void main() {
  // Ensure we can run tests without platform issues
  TestWidgetsFlutterBinding.ensureInitialized();

  group('RequestItem & ResponseItem Models', () {
    test('JSON serialization & deserialization', () {
      final req = RequestItem(
        id: '123',
        method: 'POST',
        url: 'https://example.com',
        headers: {'Content-Type': 'application/json'},
        params: {'q': 'flutter'},
        body: '{"foo": "bar"}',
        response: ResponseItem(
          statusCode: 201,
          body: '{"status": "ok"}',
          headers: {'server': 'nginx'},
          durationMs: 120,
          sizeBytes: 16,
        ),
      );

      final jsonMap = req.toJson();
      final deserialized = RequestItem.fromJson(jsonMap);

      expect(deserialized.id, equals('123'));
      expect(deserialized.method, equals('POST'));
      expect(deserialized.url, equals('https://example.com'));
      expect(deserialized.headers['Content-Type'], equals('application/json'));
      expect(deserialized.params['q'], equals('flutter'));
      expect(deserialized.body, equals('{"foo": "bar"}'));
      expect(deserialized.response, isNotNull);
      expect(deserialized.response!.statusCode, equals(201));
      expect(deserialized.response!.body, equals('{"status": "ok"}'));
      expect(deserialized.response!.headers['server'], equals('nginx'));
      expect(deserialized.response!.durationMs, equals(120));
      expect(deserialized.response!.sizeBytes, equals(16));
    });

    test('copyWith works correctly', () {
      final req = RequestItem(
        id: '1',
        method: 'GET',
        url: 'https://example.com',
        headers: {},
        params: {},
        body: '',
      );

      final updated = req.copyWith(
        method: 'DELETE',
        url: 'https://api.example.com/v2',
      );

      expect(updated.id, equals('1'));
      expect(updated.method, equals('DELETE'));
      expect(updated.url, equals('https://api.example.com/v2'));
    });
  });

  group('ClientProvider', () {
    test('default state initialization', () {
      final provider = ClientProvider();
      expect(provider.method, equals('GET'));
      expect(provider.url, equals('https://jsonplaceholder.typicode.com/posts/1'));
      expect(provider.headers.length, equals(1));
      expect(provider.headers[0].key, equals('Accept'));
      expect(provider.headers[0].value, equals('*/*'));
      expect(provider.params.isEmpty, isTrue);
      expect(provider.body, isEmpty);
      expect(provider.isLoading, isFalse);
      expect(provider.currentResponse, isNull);
    });

    test('state mutation operations', () {
      final provider = ClientProvider();
      provider.setUrl('https://test.com');
      provider.setMethod('POST');
      provider.setBody('test body');

      expect(provider.url, equals('https://test.com'));
      expect(provider.method, equals('POST'));
      expect(provider.body, equals('test body'));

      // Headers mutations
      provider.addHeader();
      expect(provider.headers.length, equals(2));
      provider.updateHeader(1, key: 'X-Test', value: 'Value', isEnabled: true);
      expect(provider.headers[1].key, equals('X-Test'));
      expect(provider.headers[1].value, equals('Value'));

      provider.removeHeader(1);
      expect(provider.headers.length, equals(1));

      // Params mutations
      provider.addParam();
      expect(provider.params.length, equals(1));
      provider.updateParam(0, key: 'p', value: 'v');
      expect(provider.params[0].key, equals('p'));
      expect(provider.params[0].value, equals('v'));
    });
  });
}
