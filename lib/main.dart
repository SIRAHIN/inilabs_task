import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inilabs_task/core/utils/utility/app_theme.dart';
import 'package:inilabs_task/injection.dart';
import 'package:inilabs_task/routes/routes_name.dart';
import 'package:inilabs_task/routes/routes_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Dependency Injection\\
  configureDependencies();

  //portrait orientation\\
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Load environment variables\\
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Find Git',
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.splashView,
          getPages: routes,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          
          // Add builder to wrap all screens with responsive container
          builder: (context, widget) {
            // Ensure text scale factor doesn't exceed reasonable limits
            final mediaQueryData = MediaQuery.of(context);
            final constrainedTextScaleFactor = mediaQueryData.textScaleFactor.clamp(0.8, 1.3);
            
            return MediaQuery(
              data: mediaQueryData.copyWith(
                textScaleFactor: constrainedTextScaleFactor,
              ),
              child: widget ?? const SizedBox.shrink(),
            );
          },
          
          // Handle unknown routes gracefully
          unknownRoute: GetPage(
            name: '/not-found',
            page: () => const Scaffold(
              body: Center(child: Text('Page not found')),
            ),
          ),
        );
      },
    );
  }
}