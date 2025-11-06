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
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          'Repositories',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                controller.isGridView ? Icons.view_list : Icons.grid_view,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: controller.toggleView,
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.filter_list,
              color: Theme.of(context).colorScheme.primary,
            ),
            onSelected: controller.applyFilter,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'Recent',
                child: Text(
                  'Recent',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 'Name',
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 'Stars',
                child: Text(
                  'Stars',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 'Forks',
                child: Text(
                  'Forks',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
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
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                );
              }

              if (controller.errorMessage.isNotEmpty) {
                return buildErrorWidget(controller);
              }

              if (controller.filteredRepositories.isEmpty) {
                return Center(
                  child: Text(
                    'No repositories found',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                );
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
