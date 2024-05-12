import 'package:bmi_calculator/bindings/bindings.dart';
import 'package:bmi_calculator/config/app_themes.dart';
import 'package:bmi_calculator/routes/app_routes.dart';
import 'package:bmi_calculator/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    // trying to hide the status bar
    // and to use the space (after hiding status bar) as screen part
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: Theme.of(context).colorScheme.primaryContainer,
    //   ),
    // );

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    // SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      initialBinding: InitialBindings(),
      initialRoute: RoutesName.INITIAL,
      getPages: AppRoutes.routes,
      // home: const HomePage(),
    );
  }
}
