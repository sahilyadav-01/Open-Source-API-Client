import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:open_source_api_client/core/api/dio_api_client.dart';
import 'package:open_source_api_client/core/exceptions/app_exceptions.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;
  late DioApiClient apiClient;

  setUp(() {
    mockDio = MockDio();
    apiClient = DioApiClient(mockDio);
  });

  group('DioApiClient - get', () {
    test('returns data on successful response', () async {
      // Arrange
      final responseData = {'key': 'value'};
      when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options')))
          .thenAnswer((_) async => Response(
                requestOptions: RequestOptions(path: '/test'),
                data: responseData,
                statusCode: 200,
              ));

      // Act
      final result = await apiClient.get('/test');

      // Assert
      expect(result, responseData);
      verify(() => mockDio.get('/test', queryParameters: null, options: null)).called(1);
    });

    test('throws UnauthorizedException on 401', () async {
      // Arrange
      when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: '/test'),
        response: Response(requestOptions: RequestOptions(path: '/test'), statusCode: 401),
      ));

      // Act & Assert
      expect(
        () => apiClient.get('/test'),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('throws ServerException on 500', () async {
      // Arrange
      when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: '/test'),
        response: Response(requestOptions: RequestOptions(path: '/test'), statusCode: 500),
      ));

      // Act & Assert
      expect(
        () => apiClient.get('/test'),
        throwsA(isA<ServerException>()),
      );
    });
    
    test('throws TimeoutException on sendTimeout', () async {
      // Arrange
      when(() => mockDio.get(any(), queryParameters: any(named: 'queryParameters'), options: any(named: 'options')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: '/test'),
        type: DioExceptionType.sendTimeout,
      ));

      // Act & Assert
      expect(
        () => apiClient.get('/test'),
        throwsA(isA<TimeoutException>()),
      );
    });
  });
}
