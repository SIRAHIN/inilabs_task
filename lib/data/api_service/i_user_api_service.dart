
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inilabs_task/data/api_service/user_api_service.dart';
import 'package:inilabs_task/models/error_response/error_response.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: UserApiService)
class IUserApiService extends UserApiService {
  ErrorResponse checkResponseError(DioException err) {
    if (err.type == DioExceptionType.badResponse) {
      var errorData = err.response?.data;
      var errorModel = ErrorResponse.fromJson(errorData);
      return errorModel;
    } else {
      return const ErrorResponse();
    }
  }

  @override
  Future<Either<ErrorResponse, UserResponse>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  
}
