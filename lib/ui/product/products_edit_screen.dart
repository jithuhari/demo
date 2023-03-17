import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/widget_utils.dart';

class ProductEditScreen extends StatelessWidget {
  ProductEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgGreenColor,
        appBar: const CustomAppBar(autoLeading: true),
        body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: [
            item (),

          ],
        ));
  }
  Widget item (){
    return DecoratedBox(
      decoration: AppDecoration.decorationColoredButtonRadius10(color: AppColors.bgColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 13),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productName(),
            const SizedBoxH24(),
            productDescription(),
            const SizedBoxH24(),
            _field3(),
            const SizedBoxH24(),
            _field4(),
            const SizedBoxH24(),
            _field5(),
            const SizedBoxH24(),
            _catogory(),
            const SizedBoxH24(),
            _subCatogory(),
            const SizedBoxH24(),
            _attribute(),
            const SizedBoxH24(),
            _volume(),
            const SizedBoxH24(),
            _field8()
          ],
        ),
      ),
    );
  }
  Widget _field3(){
    return Row(
      children: [
        Expanded(flex:1,child: sellingPrice()),
        Expanded(flex:1,child: _unit())

      ],
    );
  }
  Widget _field4(){
    return Row(
      children: [
        Expanded(flex:1,child: _tax()),
        Expanded(flex:1,child: _taxType())

      ],
    );
  }
  Widget _field5(){
    return Row(
      children: [
        Expanded(flex:1,child: _discount()),
        Expanded(flex:1,child: _discountType())

      ],
    );
  }
  Widget _field8(){
    return DecoratedBox(
      decoration: AppDecoration.decorationColoredButtonRadius8(color: AppColors.editProductBg),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19, 11, 19, 24),
        child: Row(
          children: [
            Expanded(flex:1,child: _variant()),
            Expanded(flex:1,child: _variantPrice())

          ],
        ),
      ),
    );
  }
  Widget productName() {
    return AppTextFormFieldUnderLine(label: AppStrings.name,
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.name,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }
  Widget productDescription() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      label: AppStrings.shortDescription,
      hint: AppStrings.shortDescription,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }
  Widget sellingPrice() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      label:AppStrings.sellingPrice,
      hint: AppStrings.sellingPrice,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget _tax() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.tax,
      label: AppStrings.tax,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }
  Widget _discount() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.discount,
      label: AppStrings.discount,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }
  Widget _variant() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.variant,
      label: AppStrings.variant,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }
  Widget _variantPrice() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      hint: AppStrings.variantPrice,
      label: AppStrings.variantPrice,
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.number,
      borderColor: Colors.black.withOpacity(.3),
    );
  }



  Widget _unit() {
    return const DropdownField(
      hintText: AppStrings.unit,
      value:"Kilo Grams" ,
      options: [
        "Kilo Grams",
        "Litre",
      ],
    );
  }
  Widget _taxType() {
    return const DropdownField(
      hintText: AppStrings.taxTyp,
      value:"Percent" ,
      options: [
        "Percent",
        "Accumulated",
      ],
    );
  }
  Widget _discountType() {
    return const DropdownField(
      hintText: AppStrings.discountTyp,
      value:"Percent" ,
      options: [
        "Percent",
        "Accumulated",
      ],
    );
  }
  Widget _catogory() {
    return const DropdownField(
      hintText: AppStrings.category,
      value:"Packaged Food" ,
      options: [
        "Packaged Food",
      ],
    );
  }
  Widget _subCatogory() {
    return const DropdownField(
      hintText: AppStrings.subCategory,
      value:"Noodles & Pasta" ,
      options: [
        "Noodles & Pasta",
      ],
    );
  }
  Widget _attribute() {
    return const DropdownField(
      hintText: AppStrings.attribute,
      value:"Volume" ,
      options: [
        "Volume",
      ],
    );
  }
  Widget _volume() {
    return const DropdownField(
      hintText: AppStrings.volume,
      value:"10" ,
      options: [
        "10",
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
