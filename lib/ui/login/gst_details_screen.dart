import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/constants.dart';
import '../../resources/drawables.dart';
import '../../util/app_decorations.dart';

import '../../util/app_text.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';
import 'success_screen.dart';

class GSTDetailsScreen extends StatelessWidget {
  const GSTDetailsScreen({Key? key}) : super(key: key);

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
        WidgetUtils.linearProgressBar(100),
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
                AppStrings.GSTDetails,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              const SizedBoxH30(),
              _regNumber(),
              const SizedBoxH30(),
              TextPOP16W400(
                AppStrings.uploadGSTCertificate,
                textAlign: TextAlign.left,
                color: Colors.black.withOpacity(.3),
                maxLine: 1,
                style: Theme.of(navigatorKey.currentContext!)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(
                      fontSize: AppConstants.BODY_MEDIUM_14,
                      color: Colors.black.withOpacity(.3),
                    ),
              ),
              const SizedBoxH10(),
              _upoadCertificate(),
              const SizedBoxH30(),
            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _regNumber() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.GSTNumber,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _upoadCertificate() {
    final CardRadius = 15.0;
    return DottedBorder(
      color: AppColors.primaryDotedBorderColor,
      strokeWidth: 1,
      radius: Radius.circular(CardRadius),
      dashPattern: [2, 2],
      padding: EdgeInsets.zero,
      customPath: (size) {
        return Path()
          ..moveTo(CardRadius, 0)
          ..lineTo(size.width - CardRadius, 0)
          ..arcToPoint(Offset(size.width, CardRadius),
              radius: Radius.circular(CardRadius))
          ..lineTo(size.width, size.height - CardRadius)
          ..arcToPoint(Offset(size.width - CardRadius, size.height),
              radius: Radius.circular(CardRadius))
          ..lineTo(CardRadius, size.height)
          ..arcToPoint(Offset(0, size.height - CardRadius),
              radius: Radius.circular(CardRadius))
          ..lineTo(0, CardRadius)
          ..arcToPoint(Offset(CardRadius, 0),
              radius: Radius.circular(CardRadius));
      },
      child: Container(
        height: 160,
        alignment: Alignment.center,
        decoration: AppDecoration.decorationColoredButtonRadius15(
            color: AppColors.basicDetailsButtonColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Drawables.add,
              height: 26,
              width: 26,
              fit: BoxFit.contain,
            ),
            const SizedBoxW10(),
            AppText.bodyMedium_14_w400(AppStrings.addFile)
          ],
        ),
      ),
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
              onTapped: () => Get.to(const SuccessScreen()),
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
