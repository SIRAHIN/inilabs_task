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
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.splashView,
          getPages: routes,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
        );
      },
    );
  }
}
