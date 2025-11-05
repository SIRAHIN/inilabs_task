import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/data/repository/user_repository.dart';
import 'package:inilabs_task/injection.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';

class UserInputController extends GetxController {
  //text editing controllers\\
  TextEditingController userNameInputCtr = TextEditingController();

  final _isLoading = false.obs;
  get isLoading => _isLoading.value;

  final _errorMessage = ''.obs;
  get errorMessage => _errorMessage.value;

  // Model Class for Response Data
  UserResponse? _userResponse;
  UserResponse get userResponse => _userResponse!;

  Future<bool> fetchUserData({required String userName}) async {
  try {
    _isLoading.value = true;

    final response = await getIt<UserRepository>().getUser(
      userName: userName,
    );

    return response.fold(
      (error) {
        _isLoading.value = false;
        _errorMessage.value = error.message ?? 'An unexpected error occurred';
        return false;
      },
      (data) {
        _isLoading.value = false;
        _userResponse = data;
        return true;
      },
    );
  } catch (e) {
    _isLoading.value = false; 
    _errorMessage.value = e.toString();
    return false;
  }
}
}
