// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PullRequestModelImpl _$$PullRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$PullRequestModelImpl(
  id: (json['id'] as num).toInt(),
  number: (json['number'] as num).toInt(),
  title: json['title'] as String,
  state: json['state'] as String,
  htmlUrl: json['html_url'] as String,
  createdAt: DateTime.parse(json['created_at'] as String),
  user: PullRequestUserModel.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PullRequestModelImplToJson(
  _$PullRequestModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'title': instance.title,
  'state': instance.state,
  'html_url': instance.htmlUrl,
  'created_at': instance.createdAt.toIso8601String(),
  'user': instance.user.toJson(),
};

_$PullRequestUserModelImpl _$$PullRequestUserModelImplFromJson(
  Map<String, dynamic> json,
) => _$PullRequestUserModelImpl(
  login: json['login'] as String,
  avatarUrl: json['avatar_url'] as String,
);

Map<String, dynamic> _$$PullRequestUserModelImplToJson(
  _$PullRequestUserModelImpl instance,
) => <String, dynamic>{
  'login': instance.login,
  'avatar_url': instance.avatarUrl,
};
