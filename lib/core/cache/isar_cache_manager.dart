import 'dart:convert';
import 'package:isar_community/isar.dart';
import 'cache_manager.dart';
import '../database/entities/cache_entity.dart';
import '../database/isar_database.dart';

class IsarCacheManager implements CacheManager {
  final Isar _isar;

  IsarCacheManager({Isar? isar}) : _isar = isar ?? IsarDatabase().isar;

  @override
  Future<void> save(String key, dynamic value) async {
    final entity = CacheEntity()
      ..key = key
      ..value = jsonEncode(value)
      ..updatedAt = DateTime.now();

    await _isar.writeTxn(() async {
      await _isar.cacheEntitys.put(entity);
    });
  }

  @override
  Future<dynamic> read(String key) async {
    final entity = await _isar.cacheEntitys.filter().keyEqualTo(key).findFirst();
    if (entity == null) return null;

    try {
      return jsonDecode(entity.value);
    } catch (e) {
      return entity.value;
    }
  }

  @override
  Future<void> delete(String key) async {
    await _isar.writeTxn(() async {
      await _isar.cacheEntitys.filter().keyEqualTo(key).deleteAll();
    });
  }

  @override
  Future<void> clearAll() async {
    await _isar.writeTxn(() async {
      await _isar.cacheEntitys.clear();
    });
  }
}
