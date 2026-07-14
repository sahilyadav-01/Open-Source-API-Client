import 'package:isar_community/isar_community.dart';
import 'github_user_entity.dart';

part 'following_entity.g.dart';

@collection
class FollowingEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String username;

  late String avatarUrl;
}
