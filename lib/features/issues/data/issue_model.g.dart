// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssueModelImpl _$$IssueModelImplFromJson(Map<String, dynamic> json) =>
    _$IssueModelImpl(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      title: json['title'] as String,
      state: json['state'] as String,
      htmlUrl: json['html_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      user: IssueUserModel.fromJson(json['user'] as Map<String, dynamic>),
      comments: (json['comments'] as num).toInt(),
    );

Map<String, dynamic> _$$IssueModelImplToJson(_$IssueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'title': instance.title,
      'state': instance.state,
      'html_url': instance.htmlUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'user': instance.user.toJson(),
      'comments': instance.comments,
    };

_$IssueUserModelImpl _$$IssueUserModelImplFromJson(Map<String, dynamic> json) =>
    _$IssueUserModelImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$IssueUserModelImplToJson(
  _$IssueUserModelImpl instance,
) => <String, dynamic>{
  'login': instance.login,
  'avatar_url': instance.avatarUrl,
};
