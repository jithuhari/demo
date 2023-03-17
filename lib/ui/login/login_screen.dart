import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_text.dart';
import '../../util/app_textform_field.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/widget_utils.dart';
import 'login_otp_base.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginOtpBase(
      topWidget: topWidgets(),
      bottomWidget: bottomWidgets(),
    );
  }

  List<Widget> topWidgets() {
    return [
      const Image(
          height: 200, width: 200, image: AssetImage('assets/signup/plant.png'))
    ];
  }

  List<Widget> bottomWidgets() {
    return [
      const Text('Sign In / Sign Up'),
      const SizedBoxH20(),
      phoneField(),
      const SizedBoxH24(),
      WidgetUtils.linearGradiantButton(
          onTapped: () {
            Get.to(const OTPScreen());
          },
          gradient: AppColors.loginCardGradient,
          text: AppStrings.requestotp,
          textColor: AppColors.bgColor),
      const SizedBoxH15(),
      AppText.bodySmall_12_w400(AppStrings.agreeTc,
          color: AppColors.bgColor.withOpacity(.5))
    ];
  }

  Widget phoneField() {
    return const AppTextFormField(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.phoneNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.phone,
      //fillColor: AppColors.phoneFieldLoginColor.withOpacity(.7),
    );
  }
}
