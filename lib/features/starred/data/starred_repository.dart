import 'package:isar_community/isar.dart';
import '../../../core/api/api_client.dart';
import '../../../core/database/entities/starred_repo_entity.dart';
import '../../repositories/domain/github_repo.dart';
import '../../profile/domain/github_user.dart';

class StarredRepository {
  final ApiClient _apiClient;
  final Isar _isar;

  StarredRepository({
    required ApiClient apiClient,
    required Isar isar,
  })  : _apiClient = apiClient,
        _isar = isar;

  Stream<List<GithubRepo>> watchStarredRepos(String username) {
    return _isar.starredRepoEntitys
        .filter()
        .targetUsernameEqualTo(username)
        .watch(fireImmediately: true)
        .map((entities) {
      return entities
          .map(
            (entity) => GithubRepo(
              id: entity.githubId,
              name: entity.name,
              fullName: entity.fullName,
              owner: GithubUser(
                id: -1,
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

  Future<void> syncStarredRepos(
    String username, {
    int page = 1,
    int perPage = 30,
  }) async {
    try {
      final response = await _apiClient.get(
        '/users/$username/starred',
        queryParameters: {'page': page, 'per_page': perPage},
      );

      if (response != null) {
        final List<dynamic> data = response;
        final repos = data.map((json) => GithubRepo.fromJson(json)).toList();

        final entities = repos
            .map(
              (repo) => StarredRepoEntity()
                ..githubId = repo.id
                ..targetUsername = username
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
                ..forksCount = repo.forksCount
                ..starredAt = DateTime.now(), // Fallback, normally provided by github if we asked for it via custom accept headers
            )
            .toList();

        await _isar.writeTxn(() async {
          if (page == 1) {
            await _isar.starredRepoEntitys.filter().targetUsernameEqualTo(username).deleteAll();
          }
          await _isar.starredRepoEntitys.putAll(entities);
        });
      }
    } catch (e) {
      rethrow;
    }
  }
}
