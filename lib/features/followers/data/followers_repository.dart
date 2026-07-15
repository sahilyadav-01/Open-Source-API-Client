import 'package:isar_community/isar.dart';
import '../../../core/api/api_client.dart';
import '../../../core/database/entities/follower_entity.dart';
import '../../profile/domain/github_user.dart';

class FollowersRepository {
  final ApiClient _apiClient;
  final Isar _isar;

  FollowersRepository({
    required ApiClient apiClient,
    required Isar isar,
  })  : _apiClient = apiClient,
        _isar = isar;

  Stream<List<GithubUser>> watchFollowers(String username) {
    return _isar.followerEntitys
        .filter()
        .targetUsernameEqualTo(username)
        .watch(fireImmediately: true)
        .map((entities) {
      return entities
          .map((e) => GithubUser(
                id: 0,
                login: e.username,
                avatarUrl: e.avatarUrl,
                htmlUrl: '',
              ))
          .toList();
    });
  }

  Future<void> syncFollowers(String username, {int page = 1}) async {
    try {
      final response = await _apiClient.get('/users/$username/followers', queryParameters: {'page': page, 'per_page': 30});
      if (response != null) {
        final List<dynamic> dataList = response;
        final List<FollowerEntity> entities = dataList.map((data) {
          return FollowerEntity()
            ..username = data['login']
            ..avatarUrl = data['avatar_url']
            ..targetUsername = username;
        }).toList();

        await _isar.writeTxn(() async {
          if (page == 1) {
             await _isar.followerEntitys.filter().targetUsernameEqualTo(username).deleteAll();
          }
          await _isar.followerEntitys.putAll(entities);
        });
      }
    } catch (e) {
      rethrow;
    }
  }
}
