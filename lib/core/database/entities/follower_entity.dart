import 'package:isar_community/isar_community.dart';
import 'github_user_entity.dart';

part 'follower_entity.g.dart';

@collection
class FollowerEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String username;

  late String avatarUrl;
}
