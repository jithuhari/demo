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
            item(),



            _bottomButton()
          ],
        ));
  }

  Widget productImage(){
    return Container();
  }

  Widget item() {
    return DecoratedBox(
      decoration: AppDecoration.decorationColoredButtonRadius10(
          color: AppColors.bgColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
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
            const Text('Category'),
            _field4(),
            const SizedBoxH24(),
            _field5()
          ],
        ),
      ),
    );
  }

  Widget _field3() {
    return Row(
      children: [
        Expanded(flex: 1, child: sellingPrice()),
        const Spacer(),
        Expanded(flex: 1, child: time())
      ],
    );
  }

  Widget _field4() {
    return Row(
      children: [
        Expanded(flex: 1, child: category())
      ],
    );
  }

   Widget _field5() {
    return Row(
      children: [
        RadiobuttonWidget(),
        const Text('Collect Area')
      ],
    );
  }

  Widget productName() {
    return AppTextFormFieldUnderLine(
      label: AppStrings.name,
      initialValue: 'Gardening Services',
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
      initialValue: 'This Is A Description',
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget sellingPrice() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      label: AppStrings.sellingPrice,
      hint: AppStrings.sellingPrice,
      initialValue: '135',
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget time() {
    return AppTextFormFieldUnderLine(
      // controller: _contactUsController?.phoneController,
      label: 'Time',
      hint: 'Time',
      initialValue: '60',
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  

  Widget category() {
    return const DropdownField(
      hintText: AppStrings.taxTyp,
      value: "Gardening",
      options: [
        "Gardening",
        "Planting",
      ],
    );
  }

   Widget RadiobuttonWidget() {
    return Radio(value: 'collect Area', groupValue: 'collect Area', onChanged: (item ){
      item= 'collectArea';
    });
  }

  Widget _discountType() {
    return const DropdownField(
      hintText: AppStrings.discountTyp,
      value: "Percent",
      options: [
        "Percent",
        "Accumulated",
      ],
    );
  }

  Widget _bottomButton() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: WidgetUtils.linearGradiantButton(
                textColor: AppColors.bgColor,
                text: 'Update',
                gradient: AppColors.loginCardGradient),
          ),
        ],
      ),
    );
  }
}
