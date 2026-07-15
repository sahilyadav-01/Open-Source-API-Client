import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../../core/api/api_client.dart';

class AuthRepository {
  final FlutterSecureStorage _secureStorage;
  final ApiClient _apiClient;
  static const String _tokenKey = 'github_token';

  AuthRepository({
    required FlutterSecureStorage secureStorage,
    required ApiClient apiClient,
  })  : _secureStorage = secureStorage,
        _apiClient = apiClient;

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: _tokenKey);
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: _tokenKey);
  }

  Future<bool> isAuthenticated() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }

  Future<bool> validateToken(String token) async {
    // Check if the token is valid by making a request to the user endpoint
    try {
      // Temporarily write the token to storage so the interceptor can use it
      // if it's not the one in .env
      await saveToken(token);
      final response = await _apiClient.get('/user');
      if (response != null && response['login'] != null) {
        await _secureStorage.write(key: 'github_username', value: response['login']);
        return true;
      }
      return false;
    } catch (e) {
      await deleteToken();
      await _secureStorage.delete(key: 'github_username');
      return false;
    }
  }

  Future<String?> getAuthenticatedUsername() async {
    return await _secureStorage.read(key: 'github_username');
  }
}
