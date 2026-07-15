import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_model.freezed.dart';
part 'issue_model.g.dart';

@freezed
class IssueModel with _$IssueModel {
  const factory IssueModel({
    required int id,
    required int number,
    required String title,
    required String state,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required IssueUserModel user,
    required int comments,
  }) = _IssueModel;

  factory IssueModel.fromJson(Map<String, dynamic> json) => _$IssueModelFromJson(json);
}

@freezed
class IssueUserModel with _$IssueUserModel {
  const factory IssueUserModel({
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _IssueUserModel;

  factory IssueUserModel.fromJson(Map<String, dynamic> json) => _$IssueUserModelFromJson(json);
}
