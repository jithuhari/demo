// ignore_for_file: avoid_as

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



import '../main.dart';
import '../resources/drawables.dart';
import 'app_decorations.dart';
import 'app_text.dart';

class WidgetUtils {
  static Widget logo() {
    return Image.asset(
      Drawables.logo,
      fit: BoxFit.contain,
      height: 260,
    );
  }

  static Widget otpLock() {
    return Image.asset(
      Drawables.otpLock,
      fit: BoxFit.contain,
      height: 130,
    );
  }

  static Widget linearProgressBar(double percent) {
    return Container(
      alignment: Alignment.center,
      child: LinearPercentIndicator(
        padding: EdgeInsets.zero,
        //leaner progress bar
        animation: true,
        animationDuration: 1000,
        lineHeight: 6.0,
        percent: percent / 100,
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.green[400],
        backgroundColor: Colors.grey[300],
      ),
    );
  }

  static void showSnackBar(BuildContext context, String? message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message ?? ""),
        duration: const Duration(seconds: 4),
      ),
    );
  }

  static Widget networkImage(String? url,
      {BoxFit? fit,
      double? opacity,
      double? height,
      double? width,
      double? cornerRadius = 0}) {
    return CachedNetworkImage(
      imageUrl: url ?? "",
      imageBuilder: (BuildContext context, ImageProvider imageProvider) =>
          DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: imageProvider,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(opacity ?? 1.0), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(cornerRadius ?? 0)),
        ),
      ),
      placeholder: (BuildContext context, String url) =>
          WidgetUtils.placeHolder(true),
      errorWidget: (BuildContext context, String url, dynamic error) =>
          WidgetUtils.placeHolder(false),
      fit: fit ?? BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
    );
  }

  static void showSuccessToast(String? message) {
    Fluttertoast.showToast(
        msg: message ?? '',
        toastLength: Toast.LENGTH_LONG,
        timeInSecForIosWeb: 3,
        textColor: Colors.white,
        gravity: ToastGravity.TOP,
        fontSize: 16.0,
        webShowClose: true,
        webPosition: 'center',
        webBgColor: 'linear-gradient(to right, #52B166, #52B166)');
  }

  static Widget loginButton({String? text, Color? color, Color? textColor, required Function()? onTapped}) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: AppDecoration.decorationColoredButton(color: color),
        child: AppText.bodyLarge_16_w400(text, navigatorKey.currentContext!,
            color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
  static Widget coloredButton({String? text, Color? color, Color? textColor, Function()? onTapped}) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: AppDecoration.decorationColoredButtonRadius8(color: color),
        child: AppText.bodyLarge_16_w400(text, navigatorKey.currentContext!,
            color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
  static Widget linearGradiantButton({String? text, Color? textColor, Gradient? gradient, Function()? onTapped}) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: AppDecoration.decorationLinearColoredFullCornerRadius(gradient: gradient),
        child: AppText.titleMedium_18_w600(text, navigatorKey.currentContext!,
            color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }
  static Widget linearGradiantButtonH44({String? text, Color? textColor, Gradient? gradient,  Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 160,
        height: 44,
        decoration: AppDecoration.decorationLinearColoredFullCornerRadius(gradient: gradient),
        child: AppText.bodyLarge_16_w400(text, navigatorKey.currentContext!,
            color: textColor, fontWeight: FontWeight.w600),
      ),
    );
  }

  static Widget placeHolder(bool isPlaceHolder) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(Drawables.logo),
        ),
        color: Colors.black.withOpacity(0.3),
      ),
      child: Visibility(
        visible: isPlaceHolder,
        child: const CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  static Widget widgets({String? text, Color? color, Color? textColor,GestureTapUpCallback? onTap,Widget? child}) {
    return GestureDetector(
      onTap: () {
       onTap;
      },
      child: child,
    );
  }

}
