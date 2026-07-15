import 'package:isar_community/isar.dart';

part 'github_user_entity.g.dart';

@collection
class GithubUserEntity {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  @Index(unique: true, replace: true)
  late int githubId;

  late String login;
  late String avatarUrl;
  late String htmlUrl;
  String? name;
  String? company;
  String? blog;
  String? location;
  String? email;
  String? bio;
  int? publicRepos;
  int? publicGists;
  int? followers;
  int? following;
  DateTime? createdAt;
  DateTime? updatedAt;
}
