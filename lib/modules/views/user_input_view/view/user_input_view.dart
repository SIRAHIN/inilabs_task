import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/modules/views/user_input_view/controller/user_input_controller.dart';
import 'package:inilabs_task/routes/routes_name.dart';


class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub User Finder'),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              // Toggle theme \\
              Get.changeThemeMode(isDark ? ThemeMode.light : ThemeMode.dark);
            },
            tooltip: isDark ? 'Light Mode' : 'Dark Mode',
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.person_search,
                size: 80,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 32),
              Text(
                'Find GitHub User',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              Obx(
                () => TextField(
                  controller: controller.userNameInputCtr,
                  decoration: InputDecoration(
                    labelText: 'GitHub Username',
                    hintText: 'Enter username',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  enabled: !controller.isLoading,
                ),
              ),
              const SizedBox(height: 24),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.isLoading
                      ? null
                      : () async {
                          final username = controller.userNameInputCtr.text
                              .trim();

                          if (username.isEmpty) {
                            Get.snackbar(
                              'Error',
                              'Please enter a username',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red.shade100,
                              colorText: Colors.red.shade900,
                              margin: const EdgeInsets.all(16),
                              borderRadius: 8,
                            );
                            return;
                          }

                          final success = await controller.fetchUserData(
                            userName: username,
                          );

                          if (success) {
                            // Navigate to home page \\
                            Get.toNamed(
                              RoutesName.homeView,
                              arguments: controller.userResponse,
                            );
                          } else {
                            Get.snackbar(
                              'Error',
                              controller.errorMessage,
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.red.shade100,
                              colorText: Colors.red.shade900,
                              margin: const EdgeInsets.all(16),
                              borderRadius: 8,
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: controller.isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        )
                      : const Text('Search', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
