import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:open_source_api_client/core/api/api_client.dart';
import 'package:open_source_api_client/features/auth/data/auth_repository.dart';

class MockApiClient extends Mock implements ApiClient {}
class MockSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late MockApiClient mockApiClient;
  late MockSecureStorage mockSecureStorage;
  late AuthRepository authRepository;

  setUp(() {
    mockApiClient = MockApiClient();
    mockSecureStorage = MockSecureStorage();
    authRepository = AuthRepository(
      apiClient: mockApiClient,
      secureStorage: mockSecureStorage,
    );
  });

  group('AuthRepository', () {
    test('validateToken returns true on success and saves token and username', () async {
      // Arrange
      const token = 'ghp_testtoken';
      const username = 'testuser';
      when(() => mockSecureStorage.write(key: 'github_token', value: token))
          .thenAnswer((_) async => Future.value());
      when(() => mockSecureStorage.write(key: 'github_username', value: username))
          .thenAnswer((_) async => Future.value());
      when(() => mockApiClient.get(any(), headers: any(named: 'headers'), queryParameters: any(named: 'queryParameters')))
          .thenAnswer((_) async => {'login': username});

      // Act
      final result = await authRepository.validateToken(token);

      // Assert
      expect(result, isTrue);
      verify(() => mockSecureStorage.write(key: 'github_token', value: token)).called(1);
      verify(() => mockSecureStorage.write(key: 'github_username', value: username)).called(1);
    });

    test('validateToken returns false on failure and deletes token and username', () async {
      // Arrange
      const token = 'ghp_invalidtoken';
      when(() => mockSecureStorage.write(key: 'github_token', value: token))
          .thenAnswer((_) async => Future.value());
      when(() => mockApiClient.get(any(), headers: any(named: 'headers'), queryParameters: any(named: 'queryParameters')))
          .thenThrow(Exception('Unauthorized'));
      when(() => mockSecureStorage.delete(key: 'github_token'))
          .thenAnswer((_) async => Future.value());
      when(() => mockSecureStorage.delete(key: 'github_username'))
          .thenAnswer((_) async => Future.value());

      // Act
      final result = await authRepository.validateToken(token);
      
      // Assert
      expect(result, isFalse);
      verify(() => mockSecureStorage.delete(key: 'github_token')).called(1);
      verify(() => mockSecureStorage.delete(key: 'github_username')).called(1);
    });

    test('deleteToken deletes token', () async {
      // Arrange
      when(() => mockSecureStorage.delete(key: 'github_token'))
          .thenAnswer((_) async => Future.value());

      // Act
      await authRepository.deleteToken();

      // Assert
      verify(() => mockSecureStorage.delete(key: 'github_token')).called(1);
    });

    test('isAuthenticated returns true when token exists', () async {
      // Arrange
      when(() => mockSecureStorage.read(key: 'github_token'))
          .thenAnswer((_) async => 'some_token');

      // Act
      final result = await authRepository.isAuthenticated();

      // Assert
      expect(result, isTrue);
    });

    test('isAuthenticated returns false when token does not exist', () async {
      // Arrange
      when(() => mockSecureStorage.read(key: 'github_token'))
          .thenAnswer((_) async => null);

      // Act
      final result = await authRepository.isAuthenticated();

      // Assert
      expect(result, isFalse);
    });
  });
}
