import 'package:isar_community/isar.dart';

part 'following_entity.g.dart';

@collection
class FollowingEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true, composite: [CompositeIndex('targetUsername')])
  late String username;

  @Index()
  late String targetUsername;

  late String avatarUrl;
}
