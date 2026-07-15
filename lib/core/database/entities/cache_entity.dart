import 'package:isar_community/isar.dart';

part 'cache_entity.g.dart';

@collection
class CacheEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String key;

  late String value;

  late DateTime updatedAt;
}
