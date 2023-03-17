import 'package:flutter/material.dart';
import 'package:orgayur_vendor_app/resources/app_colors.dart';

import '../../resources/app_strings.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class OfficeKycScreen extends StatelessWidget {
  const OfficeKycScreen({Key? key}) : super(key: key);

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
        WidgetUtils.linearProgressBar(40),
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
              const SizedBoxH30(),
              const TextPOP18W700(
                AppStrings.officeKYC,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              const SizedBoxH30(),
              _shopName(),
              const SizedBoxH30(),
              _shopPhoneNumber(),
              const SizedBoxH30(),
              _shopAlternatePhoneNumber(),
              const SizedBoxH30(),
              _email(),
              const SizedBoxH30(),
              _shopType(),
            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _shopName() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.officeName,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _shopPhoneNumber() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.mobileNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _shopAlternatePhoneNumber() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.shopAlternatePhon,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _email() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.email,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _shopType() {
    return const DropdownField(
      hintText: AppStrings.shopType,
      value:"Handyman" ,
      options: [
        "Handyman",
      ],
    );
  }

  Widget _bottomButtons() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: WidgetUtils.coloredButton(
                color: AppColors.basicDetailsButtonColor,
                text: AppStrings.back,
                textColor: AppColors.loginButtonColor),
          ),
          const SizedBoxW10(),
          Expanded(
            flex: 1,
            child: WidgetUtils.linearGradiantButton(
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
