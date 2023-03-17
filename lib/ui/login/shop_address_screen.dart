
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_text.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';
import 'register_details_screen.dart';

class ShopAddressScreen extends StatelessWidget {
  const ShopAddressScreen({Key? key}) : super(key: key);

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
        WidgetUtils.linearProgressBar(60),
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
              TextPOP18W700(
                AppStrings.shopAddress,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              const SizedBoxH30(),
              _buildingNumber(),
              const SizedBoxH30(),
              _roadName(),
              const SizedBoxH30(),
              _pincode(),
              const SizedBoxH30(),
              _city(),
              const SizedBoxH30(),
              _state(),
              const SizedBoxH30(),
              _shopType(),
            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _buildingNumber() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.buildingNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _roadName() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.roadName,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,
      borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _pincode() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: AppTextFormFieldUnderLine(
            // controller: _contactUsController?.phoneController,
            hint: AppStrings.pinCode,
            // autoValidate: data == PageState.validationError,
            // validator: Validator.isValidMobileNumber,
            inputType: TextInputType.number,
            borderColor: Colors.black.withOpacity(.3),
          ),
        ),
        const SizedBoxW10(),
        Expanded(
            flex: 1,
            child: Container(
                height: 45,
                decoration: AppDecoration.decorationColoredButtonRadius8(
                    color: AppColors.basicDetailsButtonColor),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Image.asset(Drawables.crosshair,height: 26,width: 26,fit: BoxFit.contain,),
                  AppText.bodyMedium_14_w400(AppStrings.useMyLocation)
                ],
              ),

            ))
      ],
    );
  }

  Widget _city() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.city,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _state() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.state,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _shopType() {
    return DropdownField(
      hintText: AppStrings.shopType,
      value: "Restaurant",
      options: [
        "Restaurant",
        "SuperMarket",
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
              onTapped: () => Get.to(const RegisterDetailsScreen()),
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
