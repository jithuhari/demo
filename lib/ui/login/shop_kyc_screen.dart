import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/ui/login/shop_address_screen.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class ShopKycScreen extends StatelessWidget {
  const ShopKycScreen({Key? key}) : super(key: key);

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
              TextPOP18W700(
                AppStrings.shopKYC,
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
      hint: AppStrings.shopName,
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
    return DropdownField(
      hintText: AppStrings.shopType,
      value:"Restaurant" ,
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
              onTapped: (){
                Get.to(const ShopAddressScreen());
              },
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
