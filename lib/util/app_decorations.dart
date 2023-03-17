import 'package:flutter/material.dart';


// ignore_for_file: non_constant_identifier_names
class AppDecoration {
  static Decoration decorationLinearColoredLogin(
      {Gradient? gradient,}) {
    return  BoxDecoration(
        gradient: gradient,
        borderRadius: const BorderRadius.only(topLeft:Radius.circular(46) ,topRight:Radius.circular(46) )
    );
  }
  static Decoration decorationLinearColoredFullCornerRadius(
      {Gradient? gradient,}) {
    return  BoxDecoration(
        gradient: gradient,
        borderRadius:  BorderRadius.circular(10)
    );
  }
  static Decoration decorationColoredButton(
      {Color? color,}) {
    return  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16)
    );
  }
  static Decoration decorationColoredButtonRadius8(
      {Color? color,}) {
    return  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8)
    );
  }
  static Decoration decorationColoredButtonRadius4(
      {Color? color,}) {
    return  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4)
    );
  }

  static Decoration decorationColoredButtonRadius10(
      {Color? color,Color? borderColor,}) {
    return  BoxDecoration(
        color: color,border: Border.all(color: borderColor ?? Colors.transparent,width: 1),
        borderRadius: BorderRadius.circular(10)
    );
  }

  static Decoration decorationColoredButtonBordered8(
      {Color? color, required Color borderColor}) {
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor));
  }

  static Decoration decorationColoredButtonRadius15(
      {Color? color,}) {
    return  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15)
    );
  }
  static Decoration decorationColoredRadius20(
      {Color? color,}) {
    return  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
    );
  }
  static Decoration decorationCircle(
      {Color? color,}) {
    return  BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    );
  }
}
