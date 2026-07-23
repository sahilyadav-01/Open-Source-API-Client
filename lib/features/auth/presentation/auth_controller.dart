import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/core_providers.dart';
import '../data/auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final secureStorage = ref.watch(flutterSecureStorageProvider);
  final apiClient = ref.watch(apiClientProvider);
  return AuthRepository(secureStorage: secureStorage, apiClient: apiClient);
}

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  AsyncValue<String?> build() {
    _checkAuthStatus();
    return const AsyncValue.loading();
  }

  Future<void> _checkAuthStatus() async {
    final repository = ref.read(authRepositoryProvider);
    final isAuthenticated = await repository.isAuthenticated();
    if (isAuthenticated) {
      final username = await repository.getAuthenticatedUsername();
      state = AsyncValue.data(username ?? 'sahilyadav-01'); // fallback if missing
    } else {
      state = const AsyncValue.data(null);
    }
  }

  Future<void> login(String token) async {
    state = const AsyncValue.loading();
    final repository = ref.read(authRepositoryProvider);
    final isValid = await repository.validateToken(token);
    
    if (isValid) {
      final username = await repository.getAuthenticatedUsername();
      state = AsyncValue.data(username ?? 'sahilyadav-01');
    } else {
      state = AsyncValue.error('Invalid token. Please check your credentials and try again.', StackTrace.current);
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    final repository = ref.read(authRepositoryProvider);
    await repository.deleteToken();
    state = const AsyncValue.data(null);
  }
}
