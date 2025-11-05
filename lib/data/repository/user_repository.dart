import 'package:dartz/dartz.dart';
import 'package:inilabs_task/data/api_service/user_api_service.dart';
import 'package:inilabs_task/models/error_response/error_response.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  final UserApiService userApiService;

  UserRepository(this.userApiService);
  Future<Either<ErrorResponse, UserResponse>> getUser({
    required String userName,
  });

  Future<Either<ErrorResponse, List<ReposResponse>>> getRepos({
    required String userName,
  });
}

/**
 * UserRepository implementation
 */
@LazySingleton(as: UserRepository)
class IUserRepository extends UserRepository {
  IUserRepository(super.userApiService);

  @override
  Future<Either<ErrorResponse, UserResponse>> getUser({
    required String userName,
  }) {
    return userApiService.getUser(userName: userName);
  }

  @override
  Future<Either<ErrorResponse, List<ReposResponse>>> getRepos({
    required String userName,
  }) {
    return userApiService.getRepos(userName: userName);
  }
}
