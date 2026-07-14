import 'package:isar_community/isar_community.dart';
import 'github_repo_entity.dart';

part 'starred_repo_entity.g.dart';

@collection
class StarredRepoEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late int repoId;

  late DateTime starredAt;
}
