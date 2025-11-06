import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/core/utils/constants/assets_paths.dart';
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
          padding: EdgeInsets.all(24.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                AssetsPaths.githubLogo,
                width: 150.w,
                height: 150.h,
                color: theme.colorScheme.primary,
              ).elasticIn(duration: Duration(milliseconds: 800)),
              SizedBox(height: 32.h),
              Text(
                'Find GitHub User',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 48.h),
              Obx(
                () => TextField(
                  controller: controller.userNameInputCtr,
                  decoration: InputDecoration(
                    labelText: 'GitHub Username',
                    hintText: 'Enter username',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  enabled: !controller.isLoading,
                ),
              ),
              SizedBox(height: 24.h),
              Obx(
                () => ElevatedButton(
                  onPressed: controller.isLoading
                      ? null
                      : () async {
                          final username = controller.userNameInputCtr.text
                              .trim();

                          controller.userNameInputCtr.clear();

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
                      ? SizedBox(
                          height: 20.h,
                          width: 20.h,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        )
                      : Text('Search', style: TextStyle(fontSize: 16.sp)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
