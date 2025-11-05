import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inilabs_task/core/utils/constants/app_url.dart';
import 'package:inilabs_task/data/api_service/user_api_service.dart';
import 'package:inilabs_task/models/error_response/error_response.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
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

  // Helper method to handle all types of errors including timeouts \\
  ErrorResponse handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ErrorResponse(
            message: 'No internet connection. Please check your network.',
            status: 408,
          );
        case DioExceptionType.sendTimeout:
          return ErrorResponse(
            message: 'Request timeout. The server took too long to respond.',
            status: 408,
          );
        case DioExceptionType.receiveTimeout:
          return ErrorResponse(
            message:
                'Response timeout. The server is taking too long to send data.',
            status: 408,
          );
        case DioExceptionType.connectionError:
          return ErrorResponse(
            message: 'No internet connection. Please check your network.',
            status: 0,
          );
        case DioExceptionType.badResponse:
          return checkResponseError(error);
        default:
          return checkResponseError(error);
      }
    } else if (error is SocketException) {
      return ErrorResponse(
        message: 'No internet connection. Please check your network.',
        status: 0,
      );
    } else {
      return ErrorResponse(message: error.toString(), status: 0);
    }
  }

  @override
  Future<Either<ErrorResponse, UserResponse>> getUser({
    required String userName,
  }) async {
    try {
      Response response = await client.get(AppUrl.getUser(userName: userName));
      var result = UserResponse.fromJson(response.data);
      return right(result);
    } catch (e) {
      return left(handleError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, List<ReposResponse>>> getRepos({
    required String userName,
  }) async {
    try {
      Response response = await client.get(
        AppUrl.getUserRepos(userName: userName),
      );
      var result = (response.data as List)
          .map((e) => ReposResponse.fromJson(e))
          .toList();
      return right(result);
    } catch (e) {
      return left(handleError(e));
    }
  }
}
