
import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/drawables.dart';
import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToScreen();
  }

  _navigateToScreen()async{
    await Future.delayed(const Duration(milliseconds: 1500),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: splashView());
  }

  Widget splashView() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(color: AppColors.bgColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Drawables.logo,
              fit: BoxFit.contain,
            ),
            Image.asset(
              Drawables.vendor,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

