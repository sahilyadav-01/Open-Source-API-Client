import 'package:isar_community/isar_community.dart';
import 'package:path_provider/path_provider.dart';

import 'entities/github_user_entity.dart';
import 'entities/github_repo_entity.dart';
import 'entities/search_history_entity.dart';
import 'entities/starred_repo_entity.dart';
import 'entities/follower_entity.dart';
import 'entities/following_entity.dart';

class IsarDatabase {
  static final IsarDatabase _instance = IsarDatabase._internal();
  late final Isar _isar;

  factory IsarDatabase() => _instance;

  IsarDatabase._internal();

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([
      GithubUserEntitySchema,
      GithubRepoEntitySchema,
      SearchHistoryEntitySchema,
      StarredRepoEntitySchema,
      FollowerEntitySchema,
      FollowingEntitySchema,
    ], directory: dir.path);
  }

  Isar get isar => _isar;
}
