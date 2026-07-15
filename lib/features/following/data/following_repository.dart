import 'package:isar_community/isar.dart';
import '../../../core/api/api_client.dart';
import '../../../core/database/entities/following_entity.dart';
import '../../profile/domain/github_user.dart';

class FollowingRepository {
  final ApiClient _apiClient;
  final Isar _isar;

  FollowingRepository({
    required ApiClient apiClient,
    required Isar isar,
  })  : _apiClient = apiClient,
        _isar = isar;

  Stream<List<GithubUser>> watchFollowing(String username) {
    return _isar.followingEntitys
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

  Future<void> syncFollowing(String username, {int page = 1}) async {
    try {
      final response = await _apiClient.get('/users/$username/following', queryParameters: {'page': page, 'per_page': 30});
      if (response != null) {
        final List<dynamic> dataList = response;
        final List<FollowingEntity> entities = dataList.map((data) {
          return FollowingEntity()
            ..username = data['login']
            ..avatarUrl = data['avatar_url']
            ..targetUsername = username;
        }).toList();

        await _isar.writeTxn(() async {
          if (page == 1) {
             await _isar.followingEntitys.filter().targetUsernameEqualTo(username).deleteAll();
          }
          await _isar.followingEntitys.putAll(entities);
        });
      }
    } catch (e) {
      rethrow;
    }
  }
}
