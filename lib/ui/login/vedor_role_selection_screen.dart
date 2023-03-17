import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orgayur_vendor_app/ui/login/shop_kyc_screen.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_decorations.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';
import '../../util/widget_utils.dart';

class VendorRoleScreen extends StatefulWidget {
  VendorRoleScreen({Key? key, this.isShopOwner}) : super(key: key);
  bool? isShopOwner;

  @override
  State<VendorRoleScreen> createState() => _VendorRoleScreenState();
}

class _VendorRoleScreenState extends State<VendorRoleScreen> {
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
                AppStrings.selectYourRole,
                textAlign: TextAlign.left,
                color: Colors.black,
              ),
              const SizedBoxH15(),
              _vendorRoleOwnerTile(),
              const SizedBoxH10(),
              _vendorRoleServiceProviderTile()
            ],
          ),
        ),
        _bottomButtons(),
      ],
    );
  }

  Widget _vendorRoleOwnerTile() {
    return GestureDetector(
      onTap: () {
        widget.isShopOwner = !(widget.isShopOwner ?? false);
        setState(() {});
      },
      child: Container(
          decoration: AppDecoration.decorationColoredButtonRadius10(
              color: widget.isShopOwner == true
                  ? AppColors.selectedColorLight
                  : AppColors.imageLabelColor,
              borderColor: widget.isShopOwner == true
                  ? AppColors.selectedColor
                  : Colors.transparent),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            widget.isShopOwner == true
                ? Icon(
                    Icons.radio_button_on,
                    color: AppColors.textPrimary3,
                  )
                : Icon(
                    Icons.radio_button_off,
                    color: AppColors.bgGrayColor,
                  ),
            const SizedBoxW20(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextPOP18W500(AppStrings.iOwnAshop,
                      textAlign: TextAlign.left,
                      color: AppColors.textDarkGrayColor),
                  const SizedBoxH5(),
                  TextPOP16W400(AppStrings.shopTypeEx,
                      textAlign: TextAlign.left,
                      maxLine: 2,
                      color: AppColors.textDarkGrayColor),
                ],
              ),
            )
          ])),
    );
  }

  Widget _vendorRoleServiceProviderTile() {
    return GestureDetector(
      onTap: () {
        widget.isShopOwner = !(widget.isShopOwner ?? false);
        setState(() {});
      },
      child: Container(
          decoration: AppDecoration.decorationColoredButtonRadius10(
              color: widget.isShopOwner == false
                  ? AppColors.selectedColorLight
                  : AppColors.imageLabelColor,
              borderColor: widget.isShopOwner == false
                  ? AppColors.selectedColor
                  : Colors.transparent),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            widget.isShopOwner == false
                ? Icon(
                    Icons.radio_button_on,
                    color: AppColors.textPrimary3,
                  )
                : Icon(
                    Icons.radio_button_off,
                    color: AppColors.bgGrayColor,
                  ),
            const SizedBoxW20(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextPOP18W500(AppStrings.iAmAServiceProvider,
                      textAlign: TextAlign.left,
                      color: AppColors.textDarkGrayColor),
                  const SizedBoxH5(),
                  TextPOP16W400(AppStrings.serviceType,
                      textAlign: TextAlign.left,
                      color: AppColors.textDarkGrayColor),
                ],
              ),
            )
          ])),
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
                Get.to(const ShopKycScreen());
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
