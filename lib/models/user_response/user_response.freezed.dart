// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponse {

 String? get login; int? get id;@JsonKey(name: 'node_id') String? get nodeId;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'gravatar_id') String? get gravatarId; String? get url;@JsonKey(name: 'html_url') String? get htmlUrl;@JsonKey(name: 'followers_url') String? get followersUrl;@JsonKey(name: 'following_url') String? get followingUrl;@JsonKey(name: 'gists_url') String? get gistsUrl;@JsonKey(name: 'starred_url') String? get starredUrl;@JsonKey(name: 'subscriptions_url') String? get subscriptionsUrl;@JsonKey(name: 'organizations_url') String? get organizationsUrl;@JsonKey(name: 'repos_url') String? get reposUrl;@JsonKey(name: 'events_url') String? get eventsUrl;@JsonKey(name: 'received_events_url') String? get receivedEventsUrl; String? get type;@JsonKey(name: 'user_view_type') String? get userViewType;@JsonKey(name: 'site_admin') bool? get siteAdmin; String? get name; String? get company; String? get blog; String? get location; String? get email; bool? get hireable; String? get bio;@JsonKey(name: 'twitter_username') String? get twitterUsername;@JsonKey(name: 'public_repos') int? get publicRepos;@JsonKey(name: 'public_gists') int? get publicGists; int? get followers; int? get following;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseCopyWith<UserResponse> get copyWith => _$UserResponseCopyWithImpl<UserResponse>(this as UserResponse, _$identity);

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponse&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gravatarId, gravatarId) || other.gravatarId == gravatarId)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.followingUrl, followingUrl) || other.followingUrl == followingUrl)&&(identical(other.gistsUrl, gistsUrl) || other.gistsUrl == gistsUrl)&&(identical(other.starredUrl, starredUrl) || other.starredUrl == starredUrl)&&(identical(other.subscriptionsUrl, subscriptionsUrl) || other.subscriptionsUrl == subscriptionsUrl)&&(identical(other.organizationsUrl, organizationsUrl) || other.organizationsUrl == organizationsUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.eventsUrl, eventsUrl) || other.eventsUrl == eventsUrl)&&(identical(other.receivedEventsUrl, receivedEventsUrl) || other.receivedEventsUrl == receivedEventsUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.userViewType, userViewType) || other.userViewType == userViewType)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin)&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.hireable, hireable) || other.hireable == hireable)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername)&&(identical(other.publicRepos, publicRepos) || other.publicRepos == publicRepos)&&(identical(other.publicGists, publicGists) || other.publicGists == publicGists)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,login,id,nodeId,avatarUrl,gravatarId,url,htmlUrl,followersUrl,followingUrl,gistsUrl,starredUrl,subscriptionsUrl,organizationsUrl,reposUrl,eventsUrl,receivedEventsUrl,type,userViewType,siteAdmin,name,company,blog,location,email,hireable,bio,twitterUsername,publicRepos,publicGists,followers,following,createdAt,updatedAt]);

@override
String toString() {
  return 'UserResponse(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, userViewType: $userViewType, siteAdmin: $siteAdmin, name: $name, company: $company, blog: $blog, location: $location, email: $email, hireable: $hireable, bio: $bio, twitterUsername: $twitterUsername, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserResponseCopyWith<$Res>  {
  factory $UserResponseCopyWith(UserResponse value, $Res Function(UserResponse) _then) = _$UserResponseCopyWithImpl;
@useResult
$Res call({
 String? login, int? id,@JsonKey(name: 'node_id') String? nodeId,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'gravatar_id') String? gravatarId, String? url,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'followers_url') String? followersUrl,@JsonKey(name: 'following_url') String? followingUrl,@JsonKey(name: 'gists_url') String? gistsUrl,@JsonKey(name: 'starred_url') String? starredUrl,@JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,@JsonKey(name: 'organizations_url') String? organizationsUrl,@JsonKey(name: 'repos_url') String? reposUrl,@JsonKey(name: 'events_url') String? eventsUrl,@JsonKey(name: 'received_events_url') String? receivedEventsUrl, String? type,@JsonKey(name: 'user_view_type') String? userViewType,@JsonKey(name: 'site_admin') bool? siteAdmin, String? name, String? company, String? blog, String? location, String? email, bool? hireable, String? bio,@JsonKey(name: 'twitter_username') String? twitterUsername,@JsonKey(name: 'public_repos') int? publicRepos,@JsonKey(name: 'public_gists') int? publicGists, int? followers, int? following,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$UserResponseCopyWithImpl<$Res>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._self, this._then);

  final UserResponse _self;
  final $Res Function(UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = freezed,Object? id = freezed,Object? nodeId = freezed,Object? avatarUrl = freezed,Object? gravatarId = freezed,Object? url = freezed,Object? htmlUrl = freezed,Object? followersUrl = freezed,Object? followingUrl = freezed,Object? gistsUrl = freezed,Object? starredUrl = freezed,Object? subscriptionsUrl = freezed,Object? organizationsUrl = freezed,Object? reposUrl = freezed,Object? eventsUrl = freezed,Object? receivedEventsUrl = freezed,Object? type = freezed,Object? userViewType = freezed,Object? siteAdmin = freezed,Object? name = freezed,Object? company = freezed,Object? blog = freezed,Object? location = freezed,Object? email = freezed,Object? hireable = freezed,Object? bio = freezed,Object? twitterUsername = freezed,Object? publicRepos = freezed,Object? publicGists = freezed,Object? followers = freezed,Object? following = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,gravatarId: freezed == gravatarId ? _self.gravatarId : gravatarId // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,followersUrl: freezed == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String?,followingUrl: freezed == followingUrl ? _self.followingUrl : followingUrl // ignore: cast_nullable_to_non_nullable
as String?,gistsUrl: freezed == gistsUrl ? _self.gistsUrl : gistsUrl // ignore: cast_nullable_to_non_nullable
as String?,starredUrl: freezed == starredUrl ? _self.starredUrl : starredUrl // ignore: cast_nullable_to_non_nullable
as String?,subscriptionsUrl: freezed == subscriptionsUrl ? _self.subscriptionsUrl : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
as String?,organizationsUrl: freezed == organizationsUrl ? _self.organizationsUrl : organizationsUrl // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String?,eventsUrl: freezed == eventsUrl ? _self.eventsUrl : eventsUrl // ignore: cast_nullable_to_non_nullable
as String?,receivedEventsUrl: freezed == receivedEventsUrl ? _self.receivedEventsUrl : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,userViewType: freezed == userViewType ? _self.userViewType : userViewType // ignore: cast_nullable_to_non_nullable
as String?,siteAdmin: freezed == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,hireable: freezed == hireable ? _self.hireable : hireable // ignore: cast_nullable_to_non_nullable
as bool?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,twitterUsername: freezed == twitterUsername ? _self.twitterUsername : twitterUsername // ignore: cast_nullable_to_non_nullable
as String?,publicRepos: freezed == publicRepos ? _self.publicRepos : publicRepos // ignore: cast_nullable_to_non_nullable
as int?,publicGists: freezed == publicGists ? _self.publicGists : publicGists // ignore: cast_nullable_to_non_nullable
as int?,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,following: freezed == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponse].
extension UserResponsePatterns on UserResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'gravatar_id')  String? gravatarId,  String? url, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'following_url')  String? followingUrl, @JsonKey(name: 'gists_url')  String? gistsUrl, @JsonKey(name: 'starred_url')  String? starredUrl, @JsonKey(name: 'subscriptions_url')  String? subscriptionsUrl, @JsonKey(name: 'organizations_url')  String? organizationsUrl, @JsonKey(name: 'repos_url')  String? reposUrl, @JsonKey(name: 'events_url')  String? eventsUrl, @JsonKey(name: 'received_events_url')  String? receivedEventsUrl,  String? type, @JsonKey(name: 'user_view_type')  String? userViewType, @JsonKey(name: 'site_admin')  bool? siteAdmin,  String? name,  String? company,  String? blog,  String? location,  String? email,  bool? hireable,  String? bio, @JsonKey(name: 'twitter_username')  String? twitterUsername, @JsonKey(name: 'public_repos')  int? publicRepos, @JsonKey(name: 'public_gists')  int? publicGists,  int? followers,  int? following, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.gravatarId,_that.url,_that.htmlUrl,_that.followersUrl,_that.followingUrl,_that.gistsUrl,_that.starredUrl,_that.subscriptionsUrl,_that.organizationsUrl,_that.reposUrl,_that.eventsUrl,_that.receivedEventsUrl,_that.type,_that.userViewType,_that.siteAdmin,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.hireable,_that.bio,_that.twitterUsername,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'gravatar_id')  String? gravatarId,  String? url, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'following_url')  String? followingUrl, @JsonKey(name: 'gists_url')  String? gistsUrl, @JsonKey(name: 'starred_url')  String? starredUrl, @JsonKey(name: 'subscriptions_url')  String? subscriptionsUrl, @JsonKey(name: 'organizations_url')  String? organizationsUrl, @JsonKey(name: 'repos_url')  String? reposUrl, @JsonKey(name: 'events_url')  String? eventsUrl, @JsonKey(name: 'received_events_url')  String? receivedEventsUrl,  String? type, @JsonKey(name: 'user_view_type')  String? userViewType, @JsonKey(name: 'site_admin')  bool? siteAdmin,  String? name,  String? company,  String? blog,  String? location,  String? email,  bool? hireable,  String? bio, @JsonKey(name: 'twitter_username')  String? twitterUsername, @JsonKey(name: 'public_repos')  int? publicRepos, @JsonKey(name: 'public_gists')  int? publicGists,  int? followers,  int? following, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserResponse():
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.gravatarId,_that.url,_that.htmlUrl,_that.followersUrl,_that.followingUrl,_that.gistsUrl,_that.starredUrl,_that.subscriptionsUrl,_that.organizationsUrl,_that.reposUrl,_that.eventsUrl,_that.receivedEventsUrl,_that.type,_that.userViewType,_that.siteAdmin,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.hireable,_that.bio,_that.twitterUsername,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? login,  int? id, @JsonKey(name: 'node_id')  String? nodeId, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'gravatar_id')  String? gravatarId,  String? url, @JsonKey(name: 'html_url')  String? htmlUrl, @JsonKey(name: 'followers_url')  String? followersUrl, @JsonKey(name: 'following_url')  String? followingUrl, @JsonKey(name: 'gists_url')  String? gistsUrl, @JsonKey(name: 'starred_url')  String? starredUrl, @JsonKey(name: 'subscriptions_url')  String? subscriptionsUrl, @JsonKey(name: 'organizations_url')  String? organizationsUrl, @JsonKey(name: 'repos_url')  String? reposUrl, @JsonKey(name: 'events_url')  String? eventsUrl, @JsonKey(name: 'received_events_url')  String? receivedEventsUrl,  String? type, @JsonKey(name: 'user_view_type')  String? userViewType, @JsonKey(name: 'site_admin')  bool? siteAdmin,  String? name,  String? company,  String? blog,  String? location,  String? email,  bool? hireable,  String? bio, @JsonKey(name: 'twitter_username')  String? twitterUsername, @JsonKey(name: 'public_repos')  int? publicRepos, @JsonKey(name: 'public_gists')  int? publicGists,  int? followers,  int? following, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserResponse() when $default != null:
return $default(_that.login,_that.id,_that.nodeId,_that.avatarUrl,_that.gravatarId,_that.url,_that.htmlUrl,_that.followersUrl,_that.followingUrl,_that.gistsUrl,_that.starredUrl,_that.subscriptionsUrl,_that.organizationsUrl,_that.reposUrl,_that.eventsUrl,_that.receivedEventsUrl,_that.type,_that.userViewType,_that.siteAdmin,_that.name,_that.company,_that.blog,_that.location,_that.email,_that.hireable,_that.bio,_that.twitterUsername,_that.publicRepos,_that.publicGists,_that.followers,_that.following,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponse implements UserResponse {
  const _UserResponse({this.login, this.id, @JsonKey(name: 'node_id') this.nodeId, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'gravatar_id') this.gravatarId, this.url, @JsonKey(name: 'html_url') this.htmlUrl, @JsonKey(name: 'followers_url') this.followersUrl, @JsonKey(name: 'following_url') this.followingUrl, @JsonKey(name: 'gists_url') this.gistsUrl, @JsonKey(name: 'starred_url') this.starredUrl, @JsonKey(name: 'subscriptions_url') this.subscriptionsUrl, @JsonKey(name: 'organizations_url') this.organizationsUrl, @JsonKey(name: 'repos_url') this.reposUrl, @JsonKey(name: 'events_url') this.eventsUrl, @JsonKey(name: 'received_events_url') this.receivedEventsUrl, this.type, @JsonKey(name: 'user_view_type') this.userViewType, @JsonKey(name: 'site_admin') this.siteAdmin, this.name, this.company, this.blog, this.location, this.email, this.hireable, this.bio, @JsonKey(name: 'twitter_username') this.twitterUsername, @JsonKey(name: 'public_repos') this.publicRepos, @JsonKey(name: 'public_gists') this.publicGists, this.followers, this.following, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

@override final  String? login;
@override final  int? id;
@override@JsonKey(name: 'node_id') final  String? nodeId;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'gravatar_id') final  String? gravatarId;
@override final  String? url;
@override@JsonKey(name: 'html_url') final  String? htmlUrl;
@override@JsonKey(name: 'followers_url') final  String? followersUrl;
@override@JsonKey(name: 'following_url') final  String? followingUrl;
@override@JsonKey(name: 'gists_url') final  String? gistsUrl;
@override@JsonKey(name: 'starred_url') final  String? starredUrl;
@override@JsonKey(name: 'subscriptions_url') final  String? subscriptionsUrl;
@override@JsonKey(name: 'organizations_url') final  String? organizationsUrl;
@override@JsonKey(name: 'repos_url') final  String? reposUrl;
@override@JsonKey(name: 'events_url') final  String? eventsUrl;
@override@JsonKey(name: 'received_events_url') final  String? receivedEventsUrl;
@override final  String? type;
@override@JsonKey(name: 'user_view_type') final  String? userViewType;
@override@JsonKey(name: 'site_admin') final  bool? siteAdmin;
@override final  String? name;
@override final  String? company;
@override final  String? blog;
@override final  String? location;
@override final  String? email;
@override final  bool? hireable;
@override final  String? bio;
@override@JsonKey(name: 'twitter_username') final  String? twitterUsername;
@override@JsonKey(name: 'public_repos') final  int? publicRepos;
@override@JsonKey(name: 'public_gists') final  int? publicGists;
@override final  int? followers;
@override final  int? following;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseCopyWith<_UserResponse> get copyWith => __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponse&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.nodeId, nodeId) || other.nodeId == nodeId)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.gravatarId, gravatarId) || other.gravatarId == gravatarId)&&(identical(other.url, url) || other.url == url)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.followersUrl, followersUrl) || other.followersUrl == followersUrl)&&(identical(other.followingUrl, followingUrl) || other.followingUrl == followingUrl)&&(identical(other.gistsUrl, gistsUrl) || other.gistsUrl == gistsUrl)&&(identical(other.starredUrl, starredUrl) || other.starredUrl == starredUrl)&&(identical(other.subscriptionsUrl, subscriptionsUrl) || other.subscriptionsUrl == subscriptionsUrl)&&(identical(other.organizationsUrl, organizationsUrl) || other.organizationsUrl == organizationsUrl)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.eventsUrl, eventsUrl) || other.eventsUrl == eventsUrl)&&(identical(other.receivedEventsUrl, receivedEventsUrl) || other.receivedEventsUrl == receivedEventsUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.userViewType, userViewType) || other.userViewType == userViewType)&&(identical(other.siteAdmin, siteAdmin) || other.siteAdmin == siteAdmin)&&(identical(other.name, name) || other.name == name)&&(identical(other.company, company) || other.company == company)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.location, location) || other.location == location)&&(identical(other.email, email) || other.email == email)&&(identical(other.hireable, hireable) || other.hireable == hireable)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername)&&(identical(other.publicRepos, publicRepos) || other.publicRepos == publicRepos)&&(identical(other.publicGists, publicGists) || other.publicGists == publicGists)&&(identical(other.followers, followers) || other.followers == followers)&&(identical(other.following, following) || other.following == following)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,login,id,nodeId,avatarUrl,gravatarId,url,htmlUrl,followersUrl,followingUrl,gistsUrl,starredUrl,subscriptionsUrl,organizationsUrl,reposUrl,eventsUrl,receivedEventsUrl,type,userViewType,siteAdmin,name,company,blog,location,email,hireable,bio,twitterUsername,publicRepos,publicGists,followers,following,createdAt,updatedAt]);

@override
String toString() {
  return 'UserResponse(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, userViewType: $userViewType, siteAdmin: $siteAdmin, name: $name, company: $company, blog: $blog, location: $location, email: $email, hireable: $hireable, bio: $bio, twitterUsername: $twitterUsername, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserResponseCopyWith<$Res> implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(_UserResponse value, $Res Function(_UserResponse) _then) = __$UserResponseCopyWithImpl;
@override @useResult
$Res call({
 String? login, int? id,@JsonKey(name: 'node_id') String? nodeId,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'gravatar_id') String? gravatarId, String? url,@JsonKey(name: 'html_url') String? htmlUrl,@JsonKey(name: 'followers_url') String? followersUrl,@JsonKey(name: 'following_url') String? followingUrl,@JsonKey(name: 'gists_url') String? gistsUrl,@JsonKey(name: 'starred_url') String? starredUrl,@JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,@JsonKey(name: 'organizations_url') String? organizationsUrl,@JsonKey(name: 'repos_url') String? reposUrl,@JsonKey(name: 'events_url') String? eventsUrl,@JsonKey(name: 'received_events_url') String? receivedEventsUrl, String? type,@JsonKey(name: 'user_view_type') String? userViewType,@JsonKey(name: 'site_admin') bool? siteAdmin, String? name, String? company, String? blog, String? location, String? email, bool? hireable, String? bio,@JsonKey(name: 'twitter_username') String? twitterUsername,@JsonKey(name: 'public_repos') int? publicRepos,@JsonKey(name: 'public_gists') int? publicGists, int? followers, int? following,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(this._self, this._then);

  final _UserResponse _self;
  final $Res Function(_UserResponse) _then;

/// Create a copy of UserResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = freezed,Object? id = freezed,Object? nodeId = freezed,Object? avatarUrl = freezed,Object? gravatarId = freezed,Object? url = freezed,Object? htmlUrl = freezed,Object? followersUrl = freezed,Object? followingUrl = freezed,Object? gistsUrl = freezed,Object? starredUrl = freezed,Object? subscriptionsUrl = freezed,Object? organizationsUrl = freezed,Object? reposUrl = freezed,Object? eventsUrl = freezed,Object? receivedEventsUrl = freezed,Object? type = freezed,Object? userViewType = freezed,Object? siteAdmin = freezed,Object? name = freezed,Object? company = freezed,Object? blog = freezed,Object? location = freezed,Object? email = freezed,Object? hireable = freezed,Object? bio = freezed,Object? twitterUsername = freezed,Object? publicRepos = freezed,Object? publicGists = freezed,Object? followers = freezed,Object? following = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserResponse(
login: freezed == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nodeId: freezed == nodeId ? _self.nodeId : nodeId // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,gravatarId: freezed == gravatarId ? _self.gravatarId : gravatarId // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,htmlUrl: freezed == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String?,followersUrl: freezed == followersUrl ? _self.followersUrl : followersUrl // ignore: cast_nullable_to_non_nullable
as String?,followingUrl: freezed == followingUrl ? _self.followingUrl : followingUrl // ignore: cast_nullable_to_non_nullable
as String?,gistsUrl: freezed == gistsUrl ? _self.gistsUrl : gistsUrl // ignore: cast_nullable_to_non_nullable
as String?,starredUrl: freezed == starredUrl ? _self.starredUrl : starredUrl // ignore: cast_nullable_to_non_nullable
as String?,subscriptionsUrl: freezed == subscriptionsUrl ? _self.subscriptionsUrl : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
as String?,organizationsUrl: freezed == organizationsUrl ? _self.organizationsUrl : organizationsUrl // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as String?,eventsUrl: freezed == eventsUrl ? _self.eventsUrl : eventsUrl // ignore: cast_nullable_to_non_nullable
as String?,receivedEventsUrl: freezed == receivedEventsUrl ? _self.receivedEventsUrl : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,userViewType: freezed == userViewType ? _self.userViewType : userViewType // ignore: cast_nullable_to_non_nullable
as String?,siteAdmin: freezed == siteAdmin ? _self.siteAdmin : siteAdmin // ignore: cast_nullable_to_non_nullable
as bool?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,hireable: freezed == hireable ? _self.hireable : hireable // ignore: cast_nullable_to_non_nullable
as bool?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,twitterUsername: freezed == twitterUsername ? _self.twitterUsername : twitterUsername // ignore: cast_nullable_to_non_nullable
as String?,publicRepos: freezed == publicRepos ? _self.publicRepos : publicRepos // ignore: cast_nullable_to_non_nullable
as int?,publicGists: freezed == publicGists ? _self.publicGists : publicGists // ignore: cast_nullable_to_non_nullable
as int?,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as int?,following: freezed == following ? _self.following : following // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
