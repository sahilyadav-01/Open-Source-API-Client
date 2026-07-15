import 'package:isar_community/isar.dart';

part 'starred_repo_entity.g.dart';

@collection
class StarredRepoEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true, composite: [CompositeIndex('targetUsername')])
  late int githubId;

  @Index()
  late String targetUsername; // User who starred this repo

  late String name;
  late String fullName;

  late String ownerLogin;
  late String ownerAvatarUrl;

  late bool private;
  late String htmlUrl;
  String? description;
  late bool fork;

  late DateTime createdAt;
  late DateTime updatedAt;
  late DateTime starredAt;

  late int stargazersCount;
  late int watchersCount;
  String? language;
  late int forksCount;
}
