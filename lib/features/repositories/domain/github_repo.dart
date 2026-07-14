import 'package:freezed_annotation/freezed_annotation.dart';
import '../../profile/domain/github_user.dart';

part 'github_repo.freezed.dart';
part 'github_repo.g.dart';

@freezed
class GithubRepo with _$GithubRepo {
  const factory GithubRepo({
    required int id,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required GithubUser owner,
    required bool private,
    @JsonKey(name: 'html_url') required String htmlUrl,
    String? description,
    required bool fork,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    String? language,
    @JsonKey(name: 'forks_count') required int forksCount,
  }) = _GithubRepo;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);
}