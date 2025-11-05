import 'package:dartz/dartz.dart';
import 'package:inilabs_task/data/api_service/user_api_service.dart';
import 'package:inilabs_task/models/error_response/error_response.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  final UserApiService userApiService;

  UserRepository(this.userApiService);
  Future<Either<ErrorResponse, UserResponse>> getUser();
}

/**
 * UserRepository implementation
 */
@LazySingleton(as: UserRepository)
class IUserRepository extends UserRepository {
  IUserRepository(super.userApiService);
  
  @override
  Future<Either<ErrorResponse, UserResponse>> getUser() {
   return userApiService.getUser();
  }


}