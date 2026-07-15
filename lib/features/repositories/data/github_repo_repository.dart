import 'package:isar_community/isar.dart';
import '../../../core/api/api_client.dart';
import '../../../core/database/entities/github_repo_entity.dart';
import '../domain/github_repo.dart';
import '../../profile/domain/github_user.dart';

class GithubRepoRepository {
  final ApiClient _apiClient;
  final Isar _isar;

  GithubRepoRepository({
    required ApiClient apiClient,
    required Isar isar,
  })  : _apiClient = apiClient,
        _isar = isar;

  Stream<List<GithubRepo>> watchUserRepos(String username) {
    return _isar.githubRepoEntitys
        .filter()
        .ownerLoginEqualTo(username)
        .watch(fireImmediately: true)
        .map((entities) {
          return entities
              .map(
                (entity) => GithubRepo(
                  id: entity.githubId,
                  name: entity.name,
                  fullName: entity.fullName,
                  owner: GithubUser(
                    id: -1, // We just mock the minimal user info here
                    login: entity.ownerLogin,
                    avatarUrl: entity.ownerAvatarUrl,
                    htmlUrl: '',
                  ),
                  private: entity.private,
                  htmlUrl: entity.htmlUrl,
                  description: entity.description,
                  fork: entity.fork,
                  createdAt: entity.createdAt,
                  updatedAt: entity.updatedAt,
                  stargazersCount: entity.stargazersCount,
                  watchersCount: entity.watchersCount,
                  language: entity.language,
                  forksCount: entity.forksCount,
                ),
              )
              .toList();
        });
  }

  Future<void> syncUserRepos(
    String username, {
    int page = 1,
    int perPage = 30,
  }) async {
    try {
      final response = await _apiClient.get(
        '/users/$username/repos',
        queryParameters: {'page': page, 'per_page': perPage},
      );

      if (response != null) {
        final List<dynamic> data = response;
        final repos = data.map((json) => GithubRepo.fromJson(json)).toList();

        final entities = repos
            .map(
              (repo) => GithubRepoEntity()
                ..githubId = repo.id
                ..name = repo.name
                ..fullName = repo.fullName
                ..ownerLogin = repo.owner.login
                ..ownerAvatarUrl = repo.owner.avatarUrl
                ..private = repo.private
                ..htmlUrl = repo.htmlUrl
                ..description = repo.description
                ..fork = repo.fork
                ..createdAt = repo.createdAt
                ..updatedAt = repo.updatedAt
                ..stargazersCount = repo.stargazersCount
                ..watchersCount = repo.watchersCount
                ..language = repo.language
                ..forksCount = repo.forksCount,
            )
            .toList();

        await _isar.writeTxn(() async {
          // If page == 1, we might want to clear old repos or just use putAll to upsert.
          // Isar putAll with @Index(unique: true, replace: true) will upsert based on githubId.
          await _isar.githubRepoEntitys.putAll(entities);
        });
      }
    } catch (e) {
      rethrow;
    }
  }
}
