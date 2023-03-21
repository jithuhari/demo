
import 'package:flutter/material.dart';


import '../../main.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/app_text_styles.dart';
import '../../resources/drawables.dart';
import '../../util/animated_toggle_switch.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';

class OrderDetailsScreen extends StatefulWidget {
  OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int _toggleValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgGreenColor,
        appBar: const CustomAppBar(autoLeading: true),
        body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          children: [
            _title(),
            const SizedBox(height: 8),
            deliveryAddressDetailsTile(),
           const  SizedBoxH15(),
            orderStatusDetailsTile(),
           const  SizedBoxH15(),
            _itemsTitle(),
            const SizedBoxH10(),
            verticalScroll()
          ],
        ));
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextPOP16W500(AppStrings.orderDetails,
              textAlign: TextAlign.left, color: AppColors.textPrimary3),
          Row(
            children: [
              TextPOP16W500(AppStrings.invoice,
                  textAlign: TextAlign.right, color: AppColors.textPrimary3),
              Image.asset(
                Drawables.downloadIcon,
                height: 28,
                width: 28,
                fit: BoxFit.contain,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _itemsTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextPOP16W500(AppStrings.orderedItems,
              textAlign: TextAlign.right, color: AppColors.textPrimary3),
          TextPOP14W400(AppStrings.seeItems,
              textAlign: TextAlign.right, color: AppColors.textPrimary3),
        ],
      ),
    );
  }

  Widget verticalScroll() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            decoration: AppDecoration.decorationColoredButtonRadius10(
                color: AppColors.bgColor),
            padding: const EdgeInsets.fromLTRB(11, 11, 11, 14),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              DecoratedBox(
                decoration: AppDecoration.decorationColoredButtonRadius15(),
                child: Image.asset(
                  Drawables.shovel,
                  width: 83,
                  height: 83,
                ),
              ),
              const SizedBoxW10(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextPOP18W500("Go Garden Npk 19 19",
                        textAlign: TextAlign.left,
                        color: AppColors.textDarkGrayColor),
                    const SizedBox(height: 3),
                    TextPOP14W400("Pack of 1",
                        textAlign: TextAlign.left,
                        color: AppColors.textGrayColorMedium),
                    const SizedBox(height: 3),
                    TextPOP18W500("₹ 280",
                        textAlign: TextAlign.right,
                        color: AppColors.textPrimary3),
                  ],
                ),
              )
            ]));
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBoxH10();
      },
    );
  }

  Widget deliveryAddressDetailsTile() {
    return Container(
        decoration: AppDecoration.decorationColoredButtonRadius10(
            color: AppColors.bgColor),
        padding: const EdgeInsets.fromLTRB(12, 11, 12, 13),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPOP16W400(AppStrings.orderId,
                    textAlign: TextAlign.left,
                    color: AppColors.textDarkGrayColor),
                TextPOP14W400("12:05 PM | Jan 5",
                    color: AppColors.textDarkGrayColor.withOpacity(.4)),
                // TextPOP20W500("₹354", color: AppColors.textPrimary3),
              ],
            ),
            const SizedBox(height: 8),
            Divider(
              height: 1,
              color: AppColors.textDarkGrayColor.withOpacity(.2),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image.asset(Drawables.locationIcon,
                    width: 14, height: 18, fit: BoxFit.fitHeight),
                const SizedBoxW10(),
                TextPOP14W300("Delivery Address",
                    color: AppColors.textDarkGrayColor.withOpacity(.4)),
              ],
            ),
            const SizedBoxH5(),
            TextPOP16W500("David Mathews", color: AppColors.textDarkGrayColor),
            const SizedBoxH2(),
            TextPOP16W400(
              "Hill View Apartments, Idachira West, Kakkanad, Ernakulam 682 333",
              color: AppColors.textDarkGrayColor.withOpacity(.7),
              maxLine: 2,
              textAlign: TextAlign.left,
            ),
            TextPOP16W400(
              "+91 93113 54589",
              color: AppColors.textDarkGrayColor.withOpacity(.8),
              maxLine: 1,
              textAlign: TextAlign.left,
            ),
          ],
        ));
  }

  Widget orderStatusDetailsTile() {
    return Container(
        decoration: AppDecoration.decorationColoredButtonRadius10(
            color: AppColors.bgColor),
        padding: const EdgeInsets.fromLTRB(23, 20, 21, 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextPOP16W400(AppStrings.orderStatus,
                    textAlign: TextAlign.left,
                    color: Colors.black),
                Container(
                  height: 34,width: 150,alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: AppDecoration.decorationColoredButtonRadius8(
                      color: AppColors.phoneFieldLoginColor),
                  child: _orderStatusDropDown()
                ),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextPOP16W400(AppStrings.deliveryDate,
                    textAlign: TextAlign.left,
                    color: Colors.black),
                TextPOP16W400(AppStrings.deliveryDate,
                    textAlign: TextAlign.right,
                    color: Colors.black.withOpacity(.6)),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextPOP16W400(AppStrings.paymentMethod,
                    textAlign: TextAlign.left,
                    color: Colors.black),
                TextPOP16W400(AppStrings.cashOnDelivery,
                    textAlign: TextAlign.right,
                    color: Colors.black.withOpacity(.6)),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextPOP16W400(AppStrings.amount,
                    textAlign: TextAlign.left,
                    color: Colors.black),
                TextPOP18W500("₹352",
                    textAlign: TextAlign.right,
                    color: AppColors.textPrimary3),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextPOP16W400(AppStrings.paymentStatus,
                    textAlign: TextAlign.left,
                    color: Colors.black),
                AnimatedToggle(
                  width: 140,
                  height: 28,
                  values: [AppStrings.paid,AppStrings.notPaid],
                  onToggleCallback: (value) {
                    setState(() {
                      _toggleValue = value;
                    });
                  },
                  buttonColor:  AppColors.textPrimary3,
                  backgroundColor: AppColors.switchBgColor,
                  textColor: const Color(0xFFFFFFFF),
                )
              ],
            ),
          ],
        ));
  }

  Widget _orderStatusDropDown() {
    return  DropdownField(
      hideunderline: true,
      hintText: AppStrings.orderStatus,
      value:AppStrings.orderStatusList.first ,
      options: AppStrings.orderStatusList,
      style: AppTextStyle.bodyLarge_16_w400(navigatorKey.currentContext!,
          color: AppColors.textPrimary3),
      Valuestyle: AppTextStyle.bodyLarge_16_w400(navigatorKey.currentContext!,
    color: AppColors.textPrimary3,)
    );
  }
}
