import 'package:flutter_test/flutter_test.dart';
import 'package:open_source_api_client/models/key_value_item.dart';
import 'package:open_source_api_client/models/request_item.dart';

void main() {
  group('KeyValueItem Model', () {
    test('default values', () {
      const item = KeyValueItem();
      expect(item.key, isEmpty);
      expect(item.value, isEmpty);
      expect(item.isEnabled, isTrue);
    });

    test('copyWith works', () {
      const item = KeyValueItem(key: 'Accept', value: '*/*');
      final updated = item.copyWith(
        value: 'application/json',
        isEnabled: false,
      );
      expect(updated.key, equals('Accept'));
      expect(updated.value, equals('application/json'));
      expect(updated.isEnabled, isFalse);
    });

    test('JSON serialization & deserialization', () {
      const item = KeyValueItem(key: 'User-Agent', value: 'Antigravity');
      final json = item.toJson();
      final decoded = KeyValueItem.fromJson(json);
      expect(decoded.key, equals('User-Agent'));
      expect(decoded.value, equals('Antigravity'));
      expect(decoded.isEnabled, isTrue);
    });
  });

  group('RequestItem & ResponseItem Models', () {
    test('JSON serialization & deserialization', () {
      final req = RequestItem(
        id: '123',
        method: 'POST',
        url: 'https://example.com',
        headers: {'Content-Type': 'application/json'},
        params: {'q': 'flutter'},
        body: '{"foo": "bar"}',
        response: const ResponseItem(
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
  });
}
