import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_text.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/otp_formfield.dart';
import '../../util/widget_utils.dart';
import 'basic_details_screen.dart';
import 'login_otp_base.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
        height: 200 ,
        width: 200,
        image: AssetImage('assets/signup/plant.png'))
    ];
  }

  List<Widget> bottomWidgets() {
    return [
      const SizedBoxH24(),
       const Text('Enter the OTP',
       style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
       ),
      const Spacer(),
      otpField(),
      const SizedBoxH20(),
      const SizedBoxH20(),
      Row(
        children: const [
          Text('An OTP has been sent to your number'),
        ],
      ),
      const Spacer(),
      Row(
        children: const[
           Text('Didn\'t recieved?'),
           Spacer(),
           Text('Resend',style: TextStyle(decoration: TextDecoration.underline),),
        ],
      ),
      const Spacer(),
      WidgetUtils.linearGradiantButton(
        onTapped: (){
          Get.to(const BasicDetailsScreen());
        },
          gradient: AppColors.loginCardGradient,
          text: AppStrings.createaccount,
          textColor: AppColors.bgColor),
      const Spacer(),
      AppText.bodySmall_12_w400(AppStrings.agreeTc,
          color: AppColors.bgColor.withOpacity(.5))
    ];
  }

  Widget otpField() {
    return AppOtpFormField(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.phoneNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.phone,
      fillColor: AppColors.phoneFieldLoginColor.withOpacity(.7),
    );
  }
}
