// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReposResponse {

 int? get id;@JsonKey(name: 'node_id') String? get nodeId; String? get name;@JsonKey(name: 'full_name') String? get fullName; bool? get private; Owner? get owner;@JsonKey(name: 'html_url') String? get htmlUrl; String? get description; bool? get fork; String? get url;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'pushed_at') String? get pushedAt;@JsonKey(name: 'git_url') String? get gitUrl;@JsonKey(name: 'ssh_url') String? get sshUrl;@JsonKey(name: 'clone_url') String? get cloneUrl;@JsonKey(name: 'svn_url') String? get svnUrl; String? get homepage; int? get size;@JsonKey(name: 'stargazers_count') int? get stargazersCount;@JsonKey(name: 'watchers_count') int? get watchersCount; String? get language;@JsonKey(name: 'forks_count') int? get forksCount;@JsonKey(name: 'open_issues_count') int? get openIssuesCount;@JsonKey(name: 'default_branch') String? get defaultBranch; String? get visibility;
/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReposResponseCopyWith<ReposResponse> get copyWith => _$ReposResponseCopyWithImpl<ReposResponse>(this as ReposResponse, _$identity);

  /// Serializes this ReposResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReposResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.private, private) || other.private == private)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.fork, fork) || other.fork == fork)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pushedAt, pushedAt) || other.pushedAt == pushedAt)&&(identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl)&&(identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl)&&(identical(other.cloneUrl, cloneUrl) || other.cloneUrl == cloneUrl)&&(identical(other.svnUrl, svnUrl) || other.svnUrl == svnUrl)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.size, size) || other.size == size)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.openIssuesCount, openIssuesCount) || other.openIssuesCount == openIssuesCount)&&(identical(other.defaultBranch, defaultBranch) || other.defaultBranch == defaultBranch)&&(identical(other.visibility, visibility) || other.visibility == visibility));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nodeId,name,fullName,private,owner,htmlUrl,description,fork,url,createdAt,updatedAt,pushedAt,gitUrl,sshUrl,cloneUrl,svnUrl,homepage,size,stargazersCount,watchersCount,language,forksCount,openIssuesCount,defaultBranch,visibility]);

@override
String toString() {
  return 'ReposResponse(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, private: $private, owner: $owner, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount, defaultBranch: $defaultBranch, visibility: $visibility)';
}


}

/// @nodoc
abstract mixin class $ReposResponseCopyWith<$Res>  {
  factory $ReposResponseCopyWith(ReposResponse value, $Res Function(ReposResponse) _then) = _$ReposResponseCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'node_id') String? nodeId, String? name,@JsonKey(name: 'full_name') String? fullName, bool? private, Owner? owner,@JsonKey(name: 'html_url') String? htmlUrl, String? description, bool? fork, String? url,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'pushed_at') String? pushedAt,@JsonKey(name: 'git_url') String? gitUrl,@JsonKey(name: 'ssh_url') String? sshUrl,@JsonKey(name: 'clone_url') String? cloneUrl,@JsonKey(name: 'svn_url') String? svnUrl, String? homepage, int? size,@JsonKey(name: 'stargazers_count') int? stargazersCount,@JsonKey(name: 'watchers_count') int? watchersCount, String? language,@JsonKey(name: 'forks_count') int? forksCount,@JsonKey(name: 'open_issues_count') int? openIssuesCount,@JsonKey(name: 'default_branch') String? defaultBranch, String? visibility
});


$OwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class _$ReposResponseCopyWithImpl<$Res>
    implements $ReposResponseCopyWith<$Res> {
  _$ReposResponseCopyWithImpl(this._self, this._then);

  final ReposResponse _self;
  final $Res Function(ReposResponse) _then;

/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nodeId = freezed,Object? name = freezed,Object? fullName = freezed,Object? private = freezed,Object? owner = freezed,Object? htmlUrl = freezed,Object? description = freezed,Object? fork = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? pushedAt = freezed,Object? gitUrl = freezed,Object? sshUrl = freezed,Object? cloneUrl = freezed,Object? svnUrl = freezed,Object? homepage = freezed,Object? size = freezed,Object? stargazersCount = freezed,Object? watchersCount = freezed,Object? language = freezed,Object? forksCount = freezed,Object? openIssuesCount = freezed,Object? defaultBranch = freezed,Object? visibility = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,private: freezed == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,fork: freezed == fork ? _self.fork : fork // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,pushedAt: freezed == pushedAt ? _self.pushedAt : pushedAt // ignore: cast_nullable_to_non_nullable
as String?,gitUrl: freezed == gitUrl ? _self.gitUrl : gitUrl // ignore: cast_nullable_to_non_nullable
as String?,sshUrl: freezed == sshUrl ? _self.sshUrl : sshUrl // ignore: cast_nullable_to_non_nullable
as String?,cloneUrl: freezed == cloneUrl ? _self.cloneUrl : cloneUrl // ignore: cast_nullable_to_non_nullable
as String?,svnUrl: freezed == svnUrl ? _self.svnUrl : svnUrl // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,stargazersCount: freezed == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int?,watchersCount: freezed == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,forksCount: freezed == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int?,openIssuesCount: freezed == openIssuesCount ? _self.openIssuesCount : openIssuesCount // ignore: cast_nullable_to_non_nullable
as int?,defaultBranch: freezed == defaultBranch ? _self.defaultBranch : defaultBranch // ignore: cast_nullable_to_non_nullable
as String?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReposResponse].
extension ReposResponsePatterns on ReposResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReposResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReposResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReposResponse value)  $default,){
final _that = this;
switch (_that) {
case _ReposResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReposResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ReposResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'node_id')  String? nodeId,  String? name, @JsonKey(name: 'full_name')  String? fullName,  bool? private,  Owner? owner, @JsonKey(name: 'html_url')  String? htmlUrl,  String? description,  bool? fork,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'pushed_at')  String? pushedAt, @JsonKey(name: 'git_url')  String? gitUrl, @JsonKey(name: 'ssh_url')  String? sshUrl, @JsonKey(name: 'clone_url')  String? cloneUrl, @JsonKey(name: 'svn_url')  String? svnUrl,  String? homepage,  int? size, @JsonKey(name: 'stargazers_count')  int? stargazersCount, @JsonKey(name: 'watchers_count')  int? watchersCount,  String? language, @JsonKey(name: 'forks_count')  int? forksCount, @JsonKey(name: 'open_issues_count')  int? openIssuesCount, @JsonKey(name: 'default_branch')  String? defaultBranch,  String? visibility)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReposResponse() when $default != null:
return $default(_that.id,_that.nodeId,_that.name,_that.fullName,_that.private,_that.owner,_that.htmlUrl,_that.description,_that.fork,_that.url,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.gitUrl,_that.sshUrl,_that.cloneUrl,_that.svnUrl,_that.homepage,_that.size,_that.stargazersCount,_that.watchersCount,_that.language,_that.forksCount,_that.openIssuesCount,_that.defaultBranch,_that.visibility);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'node_id')  String? nodeId,  String? name, @JsonKey(name: 'full_name')  String? fullName,  bool? private,  Owner? owner, @JsonKey(name: 'html_url')  String? htmlUrl,  String? description,  bool? fork,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'pushed_at')  String? pushedAt, @JsonKey(name: 'git_url')  String? gitUrl, @JsonKey(name: 'ssh_url')  String? sshUrl, @JsonKey(name: 'clone_url')  String? cloneUrl, @JsonKey(name: 'svn_url')  String? svnUrl,  String? homepage,  int? size, @JsonKey(name: 'stargazers_count')  int? stargazersCount, @JsonKey(name: 'watchers_count')  int? watchersCount,  String? language, @JsonKey(name: 'forks_count')  int? forksCount, @JsonKey(name: 'open_issues_count')  int? openIssuesCount, @JsonKey(name: 'default_branch')  String? defaultBranch,  String? visibility)  $default,) {final _that = this;
switch (_that) {
case _ReposResponse():
return $default(_that.id,_that.nodeId,_that.name,_that.fullName,_that.private,_that.owner,_that.htmlUrl,_that.description,_that.fork,_that.url,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.gitUrl,_that.sshUrl,_that.cloneUrl,_that.svnUrl,_that.homepage,_that.size,_that.stargazersCount,_that.watchersCount,_that.language,_that.forksCount,_that.openIssuesCount,_that.defaultBranch,_that.visibility);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'node_id')  String? nodeId,  String? name, @JsonKey(name: 'full_name')  String? fullName,  bool? private,  Owner? owner, @JsonKey(name: 'html_url')  String? htmlUrl,  String? description,  bool? fork,  String? url, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'pushed_at')  String? pushedAt, @JsonKey(name: 'git_url')  String? gitUrl, @JsonKey(name: 'ssh_url')  String? sshUrl, @JsonKey(name: 'clone_url')  String? cloneUrl, @JsonKey(name: 'svn_url')  String? svnUrl,  String? homepage,  int? size, @JsonKey(name: 'stargazers_count')  int? stargazersCount, @JsonKey(name: 'watchers_count')  int? watchersCount,  String? language, @JsonKey(name: 'forks_count')  int? forksCount, @JsonKey(name: 'open_issues_count')  int? openIssuesCount, @JsonKey(name: 'default_branch')  String? defaultBranch,  String? visibility)?  $default,) {final _that = this;
switch (_that) {
case _ReposResponse() when $default != null:
return $default(_that.id,_that.nodeId,_that.name,_that.fullName,_that.private,_that.owner,_that.htmlUrl,_that.description,_that.fork,_that.url,_that.createdAt,_that.updatedAt,_that.pushedAt,_that.gitUrl,_that.sshUrl,_that.cloneUrl,_that.svnUrl,_that.homepage,_that.size,_that.stargazersCount,_that.watchersCount,_that.language,_that.forksCount,_that.openIssuesCount,_that.defaultBranch,_that.visibility);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReposResponse implements ReposResponse {
  const _ReposResponse({this.id, @JsonKey(name: 'node_id') this.nodeId, this.name, @JsonKey(name: 'full_name') this.fullName, this.private, this.owner, @JsonKey(name: 'html_url') this.htmlUrl, this.description, this.fork, this.url, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'pushed_at') this.pushedAt, @JsonKey(name: 'git_url') this.gitUrl, @JsonKey(name: 'ssh_url') this.sshUrl, @JsonKey(name: 'clone_url') this.cloneUrl, @JsonKey(name: 'svn_url') this.svnUrl, this.homepage, this.size, @JsonKey(name: 'stargazers_count') this.stargazersCount, @JsonKey(name: 'watchers_count') this.watchersCount, this.language, @JsonKey(name: 'forks_count') this.forksCount, @JsonKey(name: 'open_issues_count') this.openIssuesCount, @JsonKey(name: 'default_branch') this.defaultBranch, this.visibility});
  factory _ReposResponse.fromJson(Map<String, dynamic> json) => _$ReposResponseFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'node_id') final  String? nodeId;
@override final  String? name;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override final  bool? private;
@override final  Owner? owner;
@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override final  String? description;
@override final  bool? fork;
@override final  String? url;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'pushed_at') final  String? pushedAt;
@override@JsonKey(name: 'git_url') final  String? gitUrl;
@override@JsonKey(name: 'ssh_url') final  String? sshUrl;
@override@JsonKey(name: 'clone_url') final  String? cloneUrl;
@override@JsonKey(name: 'svn_url') final  String? svnUrl;
@override final  String? homepage;
@override final  int? size;
@override@JsonKey(name: 'stargazers_count') final  int? stargazersCount;
@override@JsonKey(name: 'watchers_count') final  int? watchersCount;
@override final  String? language;
@override@JsonKey(name: 'forks_count') final  int? forksCount;
@override@JsonKey(name: 'open_issues_count') final  int? openIssuesCount;
@override@JsonKey(name: 'default_branch') final  String? defaultBranch;
@override final  String? visibility;

/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReposResponseCopyWith<_ReposResponse> get copyWith => __$ReposResponseCopyWithImpl<_ReposResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReposResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReposResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.private, private) || other.private == private)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.fork, fork) || other.fork == fork)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.pushedAt, pushedAt) || other.pushedAt == pushedAt)&&(identical(other.gitUrl, gitUrl) || other.gitUrl == gitUrl)&&(identical(other.sshUrl, sshUrl) || other.sshUrl == sshUrl)&&(identical(other.cloneUrl, cloneUrl) || other.cloneUrl == cloneUrl)&&(identical(other.svnUrl, svnUrl) || other.svnUrl == svnUrl)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.size, size) || other.size == size)&&(identical(other.stargazersCount, stargazersCount) || other.stargazersCount == stargazersCount)&&(identical(other.watchersCount, watchersCount) || other.watchersCount == watchersCount)&&(identical(other.language, language) || other.language == language)&&(identical(other.forksCount, forksCount) || other.forksCount == forksCount)&&(identical(other.openIssuesCount, openIssuesCount) || other.openIssuesCount == openIssuesCount)&&(identical(other.defaultBranch, defaultBranch) || other.defaultBranch == defaultBranch)&&(identical(other.visibility, visibility) || other.visibility == visibility));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,nodeId,name,fullName,private,owner,htmlUrl,description,fork,url,createdAt,updatedAt,pushedAt,gitUrl,sshUrl,cloneUrl,svnUrl,homepage,size,stargazersCount,watchersCount,language,forksCount,openIssuesCount,defaultBranch,visibility]);

@override
String toString() {
  return 'ReposResponse(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, private: $private, owner: $owner, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, gitUrl: $gitUrl, sshUrl: $sshUrl, cloneUrl: $cloneUrl, svnUrl: $svnUrl, homepage: $homepage, size: $size, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount, openIssuesCount: $openIssuesCount, defaultBranch: $defaultBranch, visibility: $visibility)';
}


}

/// @nodoc
abstract mixin class _$ReposResponseCopyWith<$Res> implements $ReposResponseCopyWith<$Res> {
  factory _$ReposResponseCopyWith(_ReposResponse value, $Res Function(_ReposResponse) _then) = __$ReposResponseCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'node_id') String? nodeId, String? name,@JsonKey(name: 'full_name') String? fullName, bool? private, Owner? owner,@JsonKey(name: 'html_url') String? htmlUrl, String? description, bool? fork, String? url,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'pushed_at') String? pushedAt,@JsonKey(name: 'git_url') String? gitUrl,@JsonKey(name: 'ssh_url') String? sshUrl,@JsonKey(name: 'clone_url') String? cloneUrl,@JsonKey(name: 'svn_url') String? svnUrl, String? homepage, int? size,@JsonKey(name: 'stargazers_count') int? stargazersCount,@JsonKey(name: 'watchers_count') int? watchersCount, String? language,@JsonKey(name: 'forks_count') int? forksCount,@JsonKey(name: 'open_issues_count') int? openIssuesCount,@JsonKey(name: 'default_branch') String? defaultBranch, String? visibility
});


@override $OwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class __$ReposResponseCopyWithImpl<$Res>
    implements _$ReposResponseCopyWith<$Res> {
  __$ReposResponseCopyWithImpl(this._self, this._then);

  final _ReposResponse _self;
  final $Res Function(_ReposResponse) _then;

/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nodeId = freezed,Object? name = freezed,Object? fullName = freezed,Object? private = freezed,Object? owner = freezed,Object? htmlUrl = freezed,Object? description = freezed,Object? fork = freezed,Object? url = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? pushedAt = freezed,Object? gitUrl = freezed,Object? sshUrl = freezed,Object? cloneUrl = freezed,Object? svnUrl = freezed,Object? homepage = freezed,Object? size = freezed,Object? stargazersCount = freezed,Object? watchersCount = freezed,Object? language = freezed,Object? forksCount = freezed,Object? openIssuesCount = freezed,Object? defaultBranch = freezed,Object? visibility = freezed,}) {
  return _then(_ReposResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,private: freezed == private ? _self.private : private // ignore: cast_nullable_to_non_nullable
as bool?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,fork: freezed == fork ? _self.fork : fork // ignore: cast_nullable_to_non_nullable
as bool?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,pushedAt: freezed == pushedAt ? _self.pushedAt : pushedAt // ignore: cast_nullable_to_non_nullable
as String?,gitUrl: freezed == gitUrl ? _self.gitUrl : gitUrl // ignore: cast_nullable_to_non_nullable
as String?,sshUrl: freezed == sshUrl ? _self.sshUrl : sshUrl // ignore: cast_nullable_to_non_nullable
as String?,cloneUrl: freezed == cloneUrl ? _self.cloneUrl : cloneUrl // ignore: cast_nullable_to_non_nullable
as String?,svnUrl: freezed == svnUrl ? _self.svnUrl : svnUrl // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,stargazersCount: freezed == stargazersCount ? _self.stargazersCount : stargazersCount // ignore: cast_nullable_to_non_nullable
as int?,watchersCount: freezed == watchersCount ? _self.watchersCount : watchersCount // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,forksCount: freezed == forksCount ? _self.forksCount : forksCount // ignore: cast_nullable_to_non_nullable
as int?,openIssuesCount: freezed == openIssuesCount ? _self.openIssuesCount : openIssuesCount // ignore: cast_nullable_to_non_nullable
as int?,defaultBranch: freezed == defaultBranch ? _self.defaultBranch : defaultBranch // ignore: cast_nullable_to_non_nullable
as String?,visibility: freezed == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReposResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$Owner {

 String? get login; int? get id;@JsonKey(name: 'node_id') String? get nodeId;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'html_url') String? get htmlUrl;@JsonKey(name: 'followers_url') String? get followersUrl;@JsonKey(name: 'repos_url') String? get reposUrl; String? get type;@JsonKey(name: 'site_admin') bool? get siteAdmin;
/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerCopyWith<Owner> get copyWith => _$OwnerCopyWithImpl<Owner>(this as Owner, _$identity);

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Owner&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,nodeId,avatarUrl,htmlUrl,followersUrl,reposUrl,type,siteAdmin);

@override
String toString() {
  return 'Owner(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, followersUrl: $followersUrl, reposUrl: $reposUrl, type: $type, siteAdmin: $siteAdmin)';
}


}

/// @nodoc
abstract mixin class $OwnerCopyWith<$Res>  {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) _then) = _$OwnerCopyWithImpl;
@useResult
$Res call({
 String? login, int? id,@JsonKey(name: 'node_id') String? nodeId,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'followers_url') String? followersUrl,@JsonKey(name: 'repos_url') String? reposUrl, String? type,@JsonKey(name: 'site_admin') bool? siteAdmin
});




}
/// @nodoc
class _$OwnerCopyWithImpl<$Res>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._self, this._then);

  final Owner _self;
  final $Res Function(Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = freezed,Object? id = freezed,Object? nodeId = freezed,Object? avatarUrl = freezed,Object? htmlUrl = freezed,Object? followersUrl = freezed,Object? reposUrl = freezed,Object? type = freezed,Object? siteAdmin = freezed,}) {
  return _then(_self.copyWith(
login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,followersUrl: freezed == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,siteAdmin: freezed == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Owner].
extension OwnerPatterns on Owner {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Owner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Owner value)  $default,){
final _that = this;
switch (_that) {
case _Owner():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Owner value)?  $default,){
final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'repos_url')  String? reposUrl,  String? type, @JsonKey(name: 'site_admin')  bool? siteAdmin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.htmlUrl,_that.followersUrl,_that.reposUrl,_that.type,_that.siteAdmin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'repos_url')  String? reposUrl,  String? type, @JsonKey(name: 'site_admin')  bool? siteAdmin)  $default,) {final _that = this;
switch (_that) {
case _Owner():
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.htmlUrl,_that.followersUrl,_that.reposUrl,_that.type,_that.siteAdmin);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'repos_url')  String? reposUrl,  String? type, @JsonKey(name: 'site_admin')  bool? siteAdmin)?  $default,) {final _that = this;
switch (_that) {
case _Owner() when $default != null:
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.htmlUrl,_that.followersUrl,_that.reposUrl,_that.type,_that.siteAdmin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Owner implements Owner {
  const _Owner({this.login, this.id, @JsonKey(name: 'node_id') this.nodeId, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'html_url') this.htmlUrl, @JsonKey(name: 'followers_url') this.followersUrl, @JsonKey(name: 'repos_url') this.reposUrl, this.type, @JsonKey(name: 'site_admin') this.siteAdmin});
  factory _Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

@override final  String? login;
@override final  int? id;
@override@JsonKey(name: 'node_id') final  String? nodeId;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override@JsonKey(name: 'followers_url') final  String? followersUrl;
@override@JsonKey(name: 'repos_url') final  String? reposUrl;
@override final  String? type;
@override@JsonKey(name: 'site_admin') final  bool? siteAdmin;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerCopyWith<_Owner> get copyWith => __$OwnerCopyWithImpl<_Owner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Owner&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,nodeId,avatarUrl,htmlUrl,followersUrl,reposUrl,type,siteAdmin);

@override
String toString() {
  return 'Owner(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, followersUrl: $followersUrl, reposUrl: $reposUrl, type: $type, siteAdmin: $siteAdmin)';
}


}

/// @nodoc
abstract mixin class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) _then) = __$OwnerCopyWithImpl;
@override @useResult
$Res call({
 String? login, int? id,@JsonKey(name: 'node_id') String? nodeId,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'followers_url') String? followersUrl,@JsonKey(name: 'repos_url') String? reposUrl, String? type,@JsonKey(name: 'site_admin') bool? siteAdmin
});




}
/// @nodoc
class __$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(this._self, this._then);

  final _Owner _self;
  final $Res Function(_Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = freezed,Object? id = freezed,Object? nodeId = freezed,Object? avatarUrl = freezed,Object? htmlUrl = freezed,Object? followersUrl = freezed,Object? reposUrl = freezed,Object? type = freezed,Object? siteAdmin = freezed,}) {
  return _then(_Owner(
login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,followersUrl: freezed == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,siteAdmin: freezed == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
