import 'package:freezed_annotation/freezed_annotation.dart';

part 'repos_response.freezed.dart';
part 'repos_response.g.dart';

@freezed
abstract class ReposResponse with _$ReposResponse {
  const factory ReposResponse({
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    String? name,
    @JsonKey(name: 'full_name') String? fullName,
    bool? private,
    Owner? owner,
    @JsonKey(name: 'html_url') String? htmlUrl,
    String? description,
    bool? fork,
    String? url,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'pushed_at') String? pushedAt,
    @JsonKey(name: 'git_url') String? gitUrl,
    @JsonKey(name: 'ssh_url') String? sshUrl,
    @JsonKey(name: 'clone_url') String? cloneUrl,
    @JsonKey(name: 'svn_url') String? svnUrl,
    String? homepage,
    int? size,
    @JsonKey(name: 'stargazers_count') int? stargazersCount,
    @JsonKey(name: 'watchers_count') int? watchersCount,
    String? language,
    @JsonKey(name: 'forks_count') int? forksCount,
    @JsonKey(name: 'open_issues_count') int? openIssuesCount,
    @JsonKey(name: 'default_branch') String? defaultBranch,
    String? visibility,
  }) = _ReposResponse;

  factory ReposResponse.fromJson(Map<String, dynamic> json) =>
      _$ReposResponseFromJson(json);
}

@freezed
abstract class Owner with _$Owner {
  const factory Owner({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    String? type,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
