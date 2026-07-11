import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../services/secure_storage_service.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  Future<bool> build() async {
    return await SecureStorageService.hasToken();
  }

  Future<void> login(String token) async {
    state = const AsyncValue.loading();
    try {
      await SecureStorageService.saveToken(token);
      state = const AsyncValue.data(true);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await SecureStorageService.deleteToken();
      state = const AsyncValue.data(false);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
