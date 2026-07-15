abstract class CacheManager {
  Future<void> save(String key, dynamic value);
  Future<dynamic> read(String key);
  Future<void> delete(String key);
  Future<void> clearAll();
}
