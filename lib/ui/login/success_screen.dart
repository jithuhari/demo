
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';

import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';
import '../homescreen/product_home_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: _view(),
    );
  }

  Widget _view() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Drawables.tickMark,
          height: 36,
          width: 36,
          fit: BoxFit.contain,
        ),
        const SizedBoxH15(),
        TextPOP24W700(
          AppStrings.success,
          textAlign: TextAlign.center,
          color: AppColors.loginButtonColor,
        ),
        const SizedBoxH15(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextPOP18W300(
            AppStrings.successMessage,
            textAlign: TextAlign.center,
            color: AppColors.textGrayColor,
          ),
        ),
        const SizedBoxH24(),
        WidgetUtils.linearGradiantButtonH44(
          onTap: (){
            Get.to(const BottomNavScreenProduct() );
          } ,
            textColor: AppColors.bgColor,
            text: AppStrings.goTohome,
            gradient: AppColors.loginCardGradient),
      ],
    );
  }
}
