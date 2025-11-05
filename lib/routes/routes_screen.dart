
import 'package:get/get.dart';
import 'package:inilabs_task/modules/views/home_view/view/home_view.dart';
import 'package:inilabs_task/modules/views/repo_details_view/view/repo_details_view.dart';
import 'package:inilabs_task/modules/views/splash_view/splash_view.dart';
import 'package:inilabs_task/modules/views/user_input_view/binding/user_input_binding.dart';
import 'package:inilabs_task/modules/views/user_input_view/view/user_input_view.dart';

import 'routes_name.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: RoutesName.splashView,
    page: () => const SplashView(),
  ),
  GetPage(
    name: RoutesName.homeView,
    page: () => const HomeView(),
  ),
  GetPage(
    name: RoutesName.repoDetailsView,
    page: () => const RepoDetailsView(),
  ),
  GetPage(
    name: RoutesName.userInputView,
    page: () => const UserInputView(),
    binding: UserInputBinding()
  ),
];