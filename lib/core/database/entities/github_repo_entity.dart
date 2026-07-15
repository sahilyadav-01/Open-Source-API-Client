import 'package:isar_community/isar.dart';

part 'github_repo_entity.g.dart';

@collection
class GithubRepoEntity {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late int githubId;

  late String name;
  late String fullName;

  // We'll store a simple relation or embedded object.
  // For Isar, we can just store the owner login and avatarUrl for list views.
  late String ownerLogin;
  late String ownerAvatarUrl;

  late bool private;
  late String htmlUrl;
  String? description;
  late bool fork;
  late DateTime createdAt;
  late DateTime updatedAt;
  late int stargazersCount;
  late int watchersCount;
  String? language;
  late int forksCount;
}
