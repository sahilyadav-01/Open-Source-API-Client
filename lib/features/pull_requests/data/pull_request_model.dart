import 'package:freezed_annotation/freezed_annotation.dart';

part 'pull_request_model.freezed.dart';
part 'pull_request_model.g.dart';

@freezed
class PullRequestModel with _$PullRequestModel {
  const factory PullRequestModel({
    required int id,
    required int number,
    required String title,
    required String state,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required PullRequestUserModel user,
  }) = _PullRequestModel;

  factory PullRequestModel.fromJson(Map<String, dynamic> json) => _$PullRequestModelFromJson(json);
}

@freezed
class PullRequestUserModel with _$PullRequestUserModel {
  const factory PullRequestUserModel({
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _PullRequestUserModel;

  factory PullRequestUserModel.fromJson(Map<String, dynamic> json) => _$PullRequestUserModelFromJson(json);
}
