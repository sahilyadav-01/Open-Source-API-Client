import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import '../../../core/database/isar_database.dart';
import '../../../core/database/entities/github_user_entity.dart';
import '../../../core/network/dio_client.dart';
import '../domain/github_user.dart';

class ProfileRepository {
  final Dio _dio = DioClient().dio;
  final Isar _isar = IsarDatabase().isar;

  Stream<GithubUser?> watchUser(String username) {
    // Watch local database changes
    return _isar.githubUserEntitys
        .filter()
        .loginEqualTo(username)
        .watch(fireImmediately: true)
        .map((entities) {
      if (entities.isEmpty) return null;
      final entity = entities.first;
      return GithubUser(
        id: entity.githubId,
        login: entity.login,
        avatarUrl: entity.avatarUrl,
        htmlUrl: entity.htmlUrl,
        name: entity.name,
        company: entity.company,
        blog: entity.blog,
        location: entity.location,
        email: entity.email,
        bio: entity.bio,
        publicRepos: entity.publicRepos,
        publicGists: entity.publicGists,
        followers: entity.followers,
        following: entity.following,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );
    });
  }

  Future<void> syncUser(String username) async {
    try {
      final response = await _dio.get('/users/$username');
      if (response.statusCode == 200) {
        final githubUser = GithubUser.fromJson(response.data);
        
        final entity = GithubUserEntity()
          ..githubId = githubUser.id
          ..login = githubUser.login
          ..avatarUrl = githubUser.avatarUrl
          ..htmlUrl = githubUser.htmlUrl
          ..name = githubUser.name
          ..company = githubUser.company
          ..blog = githubUser.blog
          ..location = githubUser.location
          ..email = githubUser.email
          ..bio = githubUser.bio
          ..publicRepos = githubUser.publicRepos
          ..publicGists = githubUser.publicGists
          ..followers = githubUser.followers
          ..following = githubUser.following
          ..createdAt = githubUser.createdAt
          ..updatedAt = githubUser.updatedAt;

        await _isar.writeTxn(() async {
          await _isar.githubUserEntitys.put(entity);
        });
      }
    } catch (e) {
      // Handle network errors, maybe log them
      // We don't necessarily throw here if we just want offline-first
      rethrow;
    }
  }
}
