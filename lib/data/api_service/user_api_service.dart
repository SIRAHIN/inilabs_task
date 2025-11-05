import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:inilabs_task/core/utils/constants/app_url.dart';
import 'package:inilabs_task/models/error_response/error_response.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';

abstract class UserApiService {
  UserApiService() {
    client.interceptors.addAll([
      // Logging interceptor //
      AwesomeDioInterceptor(
        logRequestTimeout: false,
        logRequestHeaders: true,
        logResponseHeaders: true,
        logger: debugPrint,
      ),
    ]);
  }
  Dio client = Dio(
    BaseOptions(
      baseUrl: AppUrl.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      responseType: ResponseType.json,
      contentType: "application/json",
    ),
  );

  Future<Either<ErrorResponse, UserResponse>> getUser({required String userName});

  Future<Either<ErrorResponse, List<ReposResponse>>> getRepos({required String userName});
}
