import 'package:isar_community/isar_community.dart';

part 'search_history_entity.g.dart';

@collection
class SearchHistoryEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String query;

  late DateTime timestamp;
}
