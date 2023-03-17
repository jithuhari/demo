import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_decorations.dart';
import '../../util/app_radio_button.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class SelectionScreen extends StatelessWidget {
  static String selectedVale = "I own a Shop";

  const SelectionScreen({Key? key}) : super(key: key);

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
                AppStrings.selectRole,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              const SizedBoxH15(),
              _shopView(),
              const SizedBoxH10(),
              _serviceView(),
            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _shopView() {
    return _selectionItemView("I own a Shop",
        "Eg: Supermarket, Textiles, Jewelers, Restaurant, Grocery Shop etc...");
  }

  Widget _serviceView() {
    return _selectionItemView("I’m a service provider",
        "Eg: Electrical, Plumbing, Tailoring, Carpentry, Handyman etc...");
  }

  Widget _selectionItemView(String value, String subTitle) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 17),
      decoration: value == selectedVale
          ? AppDecoration.decorationColoredButtonBordered8(
              borderColor: AppColors.primaryColor,
              color: AppColors.basicDetailsButtonColor)
          : AppDecoration.decorationColoredButtonRadius8(
              color: AppColors.imageLabelColor),
      child: CustomRadioTile<String>(
        value: value,
        groupValue: selectedVale,
        subTitle: subTitle,
        onChanged: (String? value) {},
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
                textColor: AppColors.bgColor,
                text: AppStrings.next,
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
