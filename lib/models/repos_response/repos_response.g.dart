// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReposResponse _$ReposResponseFromJson(Map<String, dynamic> json) =>
    _ReposResponse(
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      name: json['name'] as String?,
      fullName: json['full_name'] as String?,
      private: json['private'] as bool?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String?,
      description: json['description'] as String?,
      fork: json['fork'] as bool?,
      url: json['url'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      pushedAt: json['pushed_at'] as String?,
      gitUrl: json['git_url'] as String?,
      sshUrl: json['ssh_url'] as String?,
      cloneUrl: json['clone_url'] as String?,
      svnUrl: json['svn_url'] as String?,
      homepage: json['homepage'] as String?,
      size: (json['size'] as num?)?.toInt(),
      stargazersCount: (json['stargazers_count'] as num?)?.toInt(),
      watchersCount: (json['watchers_count'] as num?)?.toInt(),
      language: json['language'] as String?,
      forksCount: (json['forks_count'] as num?)?.toInt(),
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt(),
      defaultBranch: json['default_branch'] as String?,
      visibility: json['visibility'] as String?,
    );

Map<String, dynamic> _$ReposResponseToJson(_ReposResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pushed_at': instance.pushedAt,
      'git_url': instance.gitUrl,
      'ssh_url': instance.sshUrl,
      'clone_url': instance.cloneUrl,
      'svn_url': instance.svnUrl,
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'default_branch': instance.defaultBranch,
      'visibility': instance.visibility,
    };

_Owner _$OwnerFromJson(Map<String, dynamic> json) => _Owner(
  login: json['login'] as String?,
  id: (json['id'] as num?)?.toInt(),
  nodeId: json['node_id'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  htmlUrl: json['html_url'] as String?,
  followersUrl: json['followers_url'] as String?,
  reposUrl: json['repos_url'] as String?,
  type: json['type'] as String?,
  siteAdmin: json['site_admin'] as bool?,
);

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
  'login': instance.login,
  'id': instance.id,
  'node_id': instance.nodeId,
  'avatar_url': instance.avatarUrl,
  'html_url': instance.htmlUrl,
  'followers_url': instance.followersUrl,
  'repos_url': instance.reposUrl,
  'type': instance.type,
  'site_admin': instance.siteAdmin,
};
