import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primarySwatchColor = const MaterialColor(0xFF1D282D, {
    50: Color.fromRGBO(29, 40, 45, .1),
    100: Color.fromRGBO(29, 40, 45, .2),
    200: Color.fromRGBO(29, 40, 45, .3),
    300: Color.fromRGBO(29, 40, 45, .4),
    400: Color.fromRGBO(29, 40, 45, .5),
    500: Color.fromRGBO(29, 40, 45, .6),
    600: Color.fromRGBO(29, 40, 45, .7),
    700: Color.fromRGBO(29, 40, 45, .8),
    800: Color.fromRGBO(29, 40, 45, .9),
    900: Color.fromRGBO(29, 40, 45, 1),
  });

  static Color primaryColor = const Color(0xFF018636);
  static Color signupbgColor = const Color(0xFFE4FFEC);
  static Color bgColor = const Color(0xFFFFFFFF);
  static Color bgGreenColor = const Color(0xFFEBF5FF);
  static Color textBlackColor = const Color(0xFF525252);
  static Color textGrayColor = const Color(0xFF656565);
  static Color tabBarGrayColor = const Color(0xFF5A5A5A);
  static Color textGrayColorMedium = const Color(0xFF363636);
  static Color textDarkGrayColor = Colors.black87;
  static Color bgGrayColor = const Color(0xFFE1E1E1);
  static Color imageLabelColor = const Color(0xFFF9F9F9);
  static Color textOrangeColor = const Color(0xFFDB6015);
  static Color textGreenColor = const Color(0xFF06A500);
  static Color textBlueColor = const Color(0xFF3B5998);
  static Color textRedColor = const Color(0xFFE20808);
  static Color selectedColor =const Color(0xFF018636);
  static Color selectedColorLight = const Color.fromARGB(255, 236, 255, 235);

  ///login screen
  static Color primaryLoginGradiantColor = const Color.fromARGB(255, 3, 143, 17);
  static Color secondoryLoginGradiantColor = const Color.fromARGB(255, 85, 230, 56);
  static Color phoneFieldLoginColor = const Color(0xFFF3F3F3);
  static Color loginButtonColor = const Color(0xFF018636);
  static Color basicDetailsButtonColor = const Color.fromARGB(255, 194, 255, 188);
  static Color primaryDotedBorderColor = const Color(0xFF1586CB);
  static Color textPrimary3 = const Color(0xFF018636);
  static Color switchBgColor = const Color(0xFFD9D9D9);
  static Color editProductBg = const Color(0xFFEDF2FB);

  static List<Color> getStatusColor = [
    textRedColor,
    textGreenColor,
    primaryColor,
    Colors.lightGreen,
    Colors.amber
  ];


  static LinearGradient loginCardGradient = getLinearGradient(
      firstColor: AppColors.primaryLoginGradiantColor,
      secondColor: AppColors.secondoryLoginGradiantColor);
}
LinearGradient getLinearGradient(
    {required Color firstColor, required Color secondColor}) {
  return LinearGradient(colors: <Color>[
    firstColor,
    secondColor,
  ]);
}
