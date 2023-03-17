
import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class LocationSettingsScreen extends StatelessWidget {
  const LocationSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreenColor,
      appBar: const CustomAppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          const TextPOP18W500(
            AppStrings.locationSettings,
            textAlign: TextAlign.left,
            color: Colors.black,
          ),
          const SizedBoxH20(),
          itemSetting()
        ],
      ),
    );
  }

  Widget itemSetting(
      {String? image, String? title, GestureTapCallback? onTapFn}) {
    return Container(
        padding: const EdgeInsets.fromLTRB(17, 13, 17, 30),
        decoration: AppDecoration.decorationColoredButtonRadius10(
            color: AppColors.bgColor),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [_location(),
            const SizedBoxH24(),
            _serviceRadius()],
        ));
  }

  Widget _location() {
    return AppTextFormFieldUnderLine(
      label: AppStrings.location,
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.location,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text,
      borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _serviceRadius() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TextPOP12W400(
          AppStrings.serviceRadius,
          textAlign: TextAlign.left,
          color: Colors.black.withOpacity(.3),
        ),
        DropdownField(
          hintText: AppStrings.serviceRadius,
          value: "10 KM",
          options: [
            "10 KM",
            "20 KM",
          ],
        ),
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
