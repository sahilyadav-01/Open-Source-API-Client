import 'package:isar_community/isar.dart';

part 'follower_entity.g.dart';

@collection
class FollowerEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true, composite: [CompositeIndex('targetUsername')])
  late String username;

  @Index()
  late String targetUsername;

  late String avatarUrl;
}
