import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/resources/app_colors.dart';

import 'package:provider/provider.dart';

import 'controller/app_controller.dart';
import 'resources/app_strings.dart';

import 'ui/splash/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers:  [
      ChangeNotifierProvider(create: (_) => AppController()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: AppColors.primarySwatchColor),
      navigatorKey: navigatorKey,
      home:  
    
      
        const SplashScreen(),
    );
  }
}