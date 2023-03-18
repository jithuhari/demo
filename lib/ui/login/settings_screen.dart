import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/drawables.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGreenColor,
      
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          const TextPOP18W500(
            AppStrings.settings,
            textAlign: TextAlign.left,
            color: Colors.black,
          ),
          const SizedBoxH15(),
          itemSetting(image: Drawables.storefront, title: "Store Setup"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.mapPin, title: "Location Setup"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.creditCard, title: "Payment Methods"),
          const SizedBoxH15(),
          itemSetting(
              image: Drawables.notification, title: "Push Notifications"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.article, title: "Terms and Conditions"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.lock, title: "Privacy Policy"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.repeat, title: "Refund & Cancellation"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.warningCircle, title: "About Us"),
          const SizedBoxH15(),
          itemSetting(image: Drawables.addressBook, title: "Contact Us"),
        ],
      ),
    );
  }

  Widget itemSetting(
      {String? image, String? title, GestureTapCallback? onTapFn}) {
    return Container(
      padding: const EdgeInsets.fromLTRB(17, 15, 9, 13),
      decoration: AppDecoration.decorationColoredButtonRadius10(
          color: AppColors.bgColor),
      child: Row(
        children: [
          Image.asset(
            image ?? Drawables.logo,
            height: 20,
            fit: BoxFit.contain,
          ),
          const SizedBoxW12(),
          Expanded(
            child: TextPOP18W300(
              title,
              textAlign: TextAlign.left,
              color: Colors.black,
            ),
          ),
          const SizedBoxW12(),
          Image.asset(
            Drawables.arrow,
            height: 27,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
