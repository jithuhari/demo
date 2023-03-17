import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';


class LoginOtpBase extends StatelessWidget {
  final List<Widget> topWidget;
  final List<Widget> bottomWidget;

  const LoginOtpBase(
      {Key? key, required this.topWidget, required this.bottomWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.signupbgColor,
      body: Column(
        children: [
          Row(
            children: [
              Column(
                
                children: topWidget,
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: AppColors.bgColor,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(70),topRight:Radius.circular(70))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: bottomWidget,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
