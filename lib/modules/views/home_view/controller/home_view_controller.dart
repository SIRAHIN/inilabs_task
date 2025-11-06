import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/data/repository/user_repository.dart';
import 'package:inilabs_task/injection.dart';
import 'package:inilabs_task/models/repos_response/repos_response.dart';
import 'package:inilabs_task/models/user_response/user_response.dart';

class HomeController extends GetxController {
  // View mode toggle
  final _isGridView = false.obs;
  bool get isGridView => _isGridView.value;

  // Loading state
  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // Error message
  final _errorMessage = ''.obs;
  String get errorMessage => _errorMessage.value;

  // Repository list
  final _repositories = <ReposResponse>[].obs;
  List<ReposResponse> get repositories => _repositories;

  // Filtered repositories
  final _filteredRepositories = <ReposResponse>[].obs;
  List<ReposResponse> get filteredRepositories => _filteredRepositories;

  // Filter options
  final _selectedFilter = 'Recent'.obs;
  String get selectedFilter => _selectedFilter.value;

  // Search controller
  final searchController = TextEditingController();

  // User data
  UserResponse get userData => Get.arguments as UserResponse;

  @override
  void onInit() {
    super.onInit();
    fetchRepositories(userName: userData.login ?? '');
    }

  // Toogel Layer Func. \\
  void toggleView() {
    _isGridView.value = !_isGridView.value;
  }

  // Featch Repositories Func. \\
  Future<bool> fetchRepositories({required String userName}) async {
  try {
    _isLoading.value = true;

    final response = await getIt<UserRepository>().getRepos(userName: userName);

    return response.fold(
      (error) {
        _isLoading.value = false;
        _errorMessage.value = error.message ?? 'An unexpected error occurred';
        return false;
      },
      (data) {
        _isLoading.value = false;
        _repositories.value = data;
        _filteredRepositories.value = data;
        applyFilter(_selectedFilter.value);
        return true;
      },
    );
  } catch (e) {
    _isLoading.value = false;
    _errorMessage.value = e.toString();
    return false;
  }
}

  // Filter Func. \\
  void applyFilter(String filter) {
    _selectedFilter.value = filter;
    List<ReposResponse> tempList = List.from(_repositories);

    switch (filter) {
      case 'Recent':
        tempList.sort((a, b) => DateTime.parse(b.createdAt ?? '')
            .compareTo(DateTime.parse(a.updatedAt ?? '')));
        break;
      case 'Name':
        tempList.sort((a, b) => a.name.toString().toLowerCase()
            .compareTo(b.name.toString().toLowerCase()));
        break;
      case 'Stars':
        tempList.sort((a, b) => (b.stargazersCount?? 0)
            .compareTo(a.stargazersCount ?? 0));
        break;
      case 'Forks':
        tempList.sort((a, b) =>
            (b.forksCount ?? 0).compareTo(a.forksCount ?? 0));
        break;
    }

    _filteredRepositories.value = tempList;
  }

  // Search Func. \\
  void searchRepositories(String query) {
    if (query.isEmpty) {
      _filteredRepositories.value = _repositories;
      applyFilter(_selectedFilter.value);
    } else {
      _filteredRepositories.value = _repositories
          .where((repo) =>
              repo.name.toString().toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}