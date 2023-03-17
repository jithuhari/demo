import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orgayur_vendor_app/resources/drawables.dart';


import '../../main.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../resources/app_text_styles.dart';
import '../../util/animated_toggle_switch.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/custom_text_widget.dart';

class BookingDetailsScreen extends StatefulWidget {
  BookingDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  int _toggleValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgGreenColor,
        appBar: CustomAppBar(autoLeading: true),
        body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          children: [
            _title(),
            const SizedBox(height: 8),
            bookingAddressDetailsTile(),
            SizedBoxH15(),
            bookingStatusDetailsTile(),
            SizedBoxH15(),
            _serviceDetailsTitle(),
            SizedBoxH10(),
            serviceItem(),
            SizedBoxH10(),
            _additionalChargesTitle(),
            SizedBoxH10(),
            addAdditonalCharge()
          ],
        ));
  }

  Widget _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextPOP16W500(AppStrings.bookingDetails,
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

  Widget _serviceDetailsTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextPOP16W500(AppStrings.serviceDetails,
          textAlign: TextAlign.left, color: AppColors.textPrimary3),
    );
  }

  Widget _additionalChargesTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextPOP16W500(AppStrings.additionalCharges,
          textAlign: TextAlign.left, color: AppColors.textPrimary3),
    );
  }

  Widget serviceItem() {
    return Container(
        decoration: AppDecoration.decorationColoredButtonRadius10(
            color: AppColors.bgColor),
        padding: const EdgeInsets.fromLTRB(11, 11, 11, 14),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          DecoratedBox(
            decoration: AppDecoration.decorationColoredButtonRadius15(),
            child: Image.asset(
              Drawables.servicingImage,
              width: 85,
              height: 89,
            ),
          ),
          const SizedBoxW10(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextPOP18W500("Plumbing Service ",
                    textAlign: TextAlign.left,
                    color: AppColors.textDarkGrayColor),
                const SizedBox(height: 3),
                TextPOP14W400("1 hr 30 mins",
                    textAlign: TextAlign.left,
                    color: AppColors.textGrayColorMedium),
                const SizedBox(height: 3),
                TextPOP18W500("₹200",
                    textAlign: TextAlign.right, color: AppColors.textPrimary3),
              ],
            ),
          )
        ]));
  }

  Widget bookingAddressDetailsTile() {
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
                SizedBoxW10(),
                TextPOP14W300("Booking Address",
                    color: AppColors.textDarkGrayColor.withOpacity(.4)),
              ],
            ),
            SizedBoxH5(),
            TextPOP16W500("David Mathews", color: AppColors.textDarkGrayColor),
            SizedBoxH2(),
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

  Widget bookingStatusDetailsTile() {
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
                TextPOP16W400(AppStrings.bookingStatus,
                    textAlign: TextAlign.left, color: Colors.black),
                Container(
                    height: 34,
                    width: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: AppDecoration.decorationColoredButtonRadius8(
                        color: AppColors.phoneFieldLoginColor),
                    child: _bookingStatusDropDown()),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPOP16W400(AppStrings.serviceDate,
                    textAlign: TextAlign.left, color: Colors.black),
                TextPOP16W400(AppStrings.deliveryDate,
                    textAlign: TextAlign.right,
                    color: Colors.black.withOpacity(.6)),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPOP16W400(AppStrings.paymentMethod,
                    textAlign: TextAlign.left, color: Colors.black),
                TextPOP16W400(AppStrings.cashOnDelivery,
                    textAlign: TextAlign.right,
                    color: Colors.black.withOpacity(.6)),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPOP16W400(AppStrings.bookingFee,
                    textAlign: TextAlign.left, color: Colors.black),
                TextPOP18W500("₹352",
                    textAlign: TextAlign.right, color: AppColors.textPrimary3),
              ],
            ),
            const SizedBoxH20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextPOP16W400(AppStrings.paymentStatus,
                    textAlign: TextAlign.left, color: Colors.black),
                AnimatedToggle(
                  width: 140,
                  height: 28,
                  values: [AppStrings.paid, AppStrings.notPaid],
                  onToggleCallback: (value) {
                    setState(() {
                      _toggleValue = value;
                    });
                  },
                  buttonColor: AppColors.textPrimary3,
                  backgroundColor: AppColors.switchBgColor,
                  textColor: const Color(0xFFFFFFFF),
                )
              ],
            ),
          ],
        ));
  }

  Widget _bookingStatusDropDown() {
    return DropdownField(
        hideunderline: true,
        hintText: AppStrings.bookingStatus,
        value: AppStrings.bookingStatusList.first,
        options: AppStrings.bookingStatusList,
        style: AppTextStyle.bodyLarge_16_w400(navigatorKey.currentContext!,
            color: AppColors.textPrimary3),
        Valuestyle: AppTextStyle.bodyLarge_16_w400(
          navigatorKey.currentContext!,
          color: AppColors.textPrimary3,
        ));
  }
  Widget addAdditonalCharge(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex:3,child: additionalChargesTile()),
        SizedBoxW12(),
        Expanded(flex:1,child: addItemButtton())
      ],
    );
  }

  Widget additionalChargesTile() {
    return Container(
        height: 87,
        decoration: AppDecoration.decorationColoredButtonRadius10(
            color: AppColors.bgColor),
        padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Expanded(flex:2,child: _itemName()),
              SizedBoxW12(),
              Expanded(flex:1,child: _itemCharge())]));
  }
  Widget addItemButtton() {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(builder: (context) =>  BookingDetailsScreen()),
        );
      },
      child: Container(
          height: 87,
          decoration: AppDecoration.decorationColoredButtonRadius10(
              color: AppColors.bgColor),
          padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add,color: AppColors.textPrimary3,),
              TextPOP12W400(AppStrings.add)
            ],
          )),
    );
  }

  Widget _itemName() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.item,
      label: AppStrings.item,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _itemCharge() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.amount,
      label: AppStrings.amount,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }
}
