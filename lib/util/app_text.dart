import 'package:flutter/material.dart';
import 'package:orgayur_vendor_app/resources/app_text_styles.dart';

import '../main.dart';



// ignore_for_file: non_constant_identifier_names
class AppText {
  static Widget headlineLarge_35_w700(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.headlineLarge_35_w700(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget headlineMedium_25_w700(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.headlineMedium_25_w700(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget headlineSmall_22_w700(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.headlineSmall_22_w700(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget titleLarge_20_w600(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.titleLarge_20_w600(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget titleMedium_18_w600(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.titleMedium_18_w600(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget titleSmall_12_w600(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.titleSmall_12_w600(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget labelLarge_20_w500(String? text,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.labelLarge_20_w500(navigatorKey.currentContext!,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget labelMedium_18_w500(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.labelMedium_18_w500(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget labelSmall_14_w500(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.labelSmall_14_w500(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget bodyLarge_16_w400(String? text, BuildContext context,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.bodyLarge_16_w400(context,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget bodyMedium_14_w400(String? text,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        int? maxLines = 1,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      softWrap: true,
      style: AppTextStyle.bodyMedium_14_w400(navigatorKey.currentContext! ,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget bodySmall_12_w400(String? text,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      softWrap: true,
      style: AppTextStyle.bodySmall_12_w400(navigatorKey.currentContext!,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }

  static Widget custom(String? text, double textSize,
      {Color? color,
        String? fontFamily,
        FontWeight? fontWeight,
        double? letterSpacing,
        TextAlign? textAlign,
        int? maxLines}) {
    return Text(
      text ?? '',
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines ?? 1,
      softWrap: true,
      textAlign: textAlign,
      style: AppTextStyle.custom(textSize,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing),
    );
  }
}
