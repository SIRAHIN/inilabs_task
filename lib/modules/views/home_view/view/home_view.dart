import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/modules/views/home_view/controller/home_view_controller.dart';
import 'package:inilabs_task/modules/views/home_view/view/widgets/build_error_view.dart';
import 'package:inilabs_task/modules/views/home_view/view/widgets/build_grid_view.dart';
import 'package:inilabs_task/modules/views/home_view/view/widgets/build_list_view.dart';
import 'package:inilabs_task/modules/views/home_view/view/widgets/build_search_bar.dart';
import 'package:inilabs_task/modules/views/home_view/view/widgets/build_user_info.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Repositories',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                controller.isGridView ? Icons.view_list : Icons.grid_view,
                color: Colors.black87,
              ),
              onPressed: controller.toggleView,
            ),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.filter_list, color: Colors.black87),
            onSelected: controller.applyFilter,
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'Recent', child: Text('Recent')),
              const PopupMenuItem(value: 'Name', child: Text('Name')),
              const PopupMenuItem(value: 'Stars', child: Text('Stars')),
              const PopupMenuItem(value: 'Forks', child: Text('Forks')),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          buildUserInfo(controller),
          buildSearchBar(controller),
          Expanded(
            child: Obx(() {
              if (controller.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.errorMessage.isNotEmpty) {
                return buildErrorWidget(controller);
              }

              if (controller.filteredRepositories.isEmpty) {
                return const Center(child: Text('No repositories found'));
              }

              return controller.isGridView
                  ? buildGridView(controller)
                  : buildListView(controller);
            }),
          ),
        ],
      ),
    );
  }
}
