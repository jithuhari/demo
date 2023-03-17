
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/resources/app_colors.dart';
import 'package:orgayur_vendor_app/ui/login/vedor_role_selection_screen.dart';
import 'package:orgayur_vendor_app/util/app_textform_field_underline.dart';
import 'package:orgayur_vendor_app/util/custom_text_widget.dart';



import '../../resources/app_strings.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/widget_utils.dart';

class BasicDetailsScreen extends StatelessWidget {
  const BasicDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: _view(),
    );
  }

  Widget _view() {
    return Column(
      children: [
        const SizedBoxH50(),
        WidgetUtils.linearProgressBar(20),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBoxH30(),
              TextPOP24W700(AppStrings.vendorRegistration,
                  color: AppColors.primaryColor, textAlign: TextAlign.center),
              const SizedBoxH10(),
              TextPOP16W400(
                AppStrings.sellYourProductsOrServicesOnline,
                color: AppColors.primaryColor,
                maxLine: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBoxH30(),
              TextPOP18W700(
                AppStrings.basicDetails,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              _fullName(),
              const SizedBoxH30(),
              _mobile(),
              const SizedBoxH30(),
              _email(),
              const SizedBoxH30(),
              _city(),

            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _fullName() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.fullName,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,borderColor: Colors.black.withOpacity(.3),

    );
  }
  Widget _mobile() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.mobileNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,borderColor: Colors.black.withOpacity(.3),

    );
  }
  Widget _email() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.email,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,borderColor: Colors.black.withOpacity(.3),

    );
  }
  Widget _city() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.city,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,borderColor: Colors.black.withOpacity(.3),

    );
  }
  Widget _bottomButtons(){
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: WidgetUtils.coloredButton(
              
                color: AppColors.basicDetailsButtonColor,
                text: AppStrings.discard,
                textColor: AppColors.loginButtonColor
            ),
          ),
          const SizedBoxW10(),
          Expanded(
            flex: 1,
            child: WidgetUtils.linearGradiantButton(
              onTapped: (){
                Get.to(VendorRoleScreen());
              },
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient
            ),
          ),
        ],
      ),
    );
  }
}
