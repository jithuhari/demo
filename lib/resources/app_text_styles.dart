import 'package:flutter/material.dart';

import 'app_colors.dart';


// ignore_for_file: non_constant_identifier_names
class AppTextStyle {
  static TextStyle? headlineLarge_35_w700(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.headlineLarge?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? headlineMedium_25_w700(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? headlineSmall_22_w700(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? titleLarge_20_w600(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? titleMedium_18_w600(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.titleMedium?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? titleSmall_12_w600(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.titleSmall?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? labelLarge_20_w500(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? labelMedium_18_w500(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.labelMedium?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? labelSmall_14_w500(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }

  static TextStyle? bodyLarge_16_w400(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight, letterSpacing: letterSpacing);
  }

  static TextStyle? bodyMedium_14_w400(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight,
        letterSpacing: letterSpacing);
  }


  static TextStyle? bodySmall_12_w400(BuildContext context,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
        color: color, fontFamily: fontFamily, fontWeight: fontWeight, letterSpacing: letterSpacing);
  }

  static TextStyle custom(double textSize,
      {Color? color, String? fontFamily, FontWeight? fontWeight, double? letterSpacing}) {
    return TextStyle(
        color: color ?? AppColors.textBlackColor,
        fontSize: textSize,
        // fontFamily: fontFamily ?? AppFonts.poppins,
        fontWeight: fontWeight ?? FontWeight.normal,
        letterSpacing: letterSpacing
    );
  }
}
