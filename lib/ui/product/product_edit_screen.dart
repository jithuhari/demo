import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_strings.dart';
import '../../util/app_appbar.dart';
import '../../util/app_decorations.dart';
import '../../util/app_dropdown_textform_field_underline.dart';
import '../../util/app_textform_field_underline.dart';
import '../../util/custom_sized_boxes.dart';
import '../../util/widget_utils.dart';
import '../../util/widgets/custom_button.dart';

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
            const SizedBoxH24(),
            const Text('Product Image'),
            const SizedBoxH24(),
            Row(
              children: const [
                Image(
                  height: 120,
                  image: AssetImage('assets/product/cactus_plant.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Image(
                  height: 120,
                  image: AssetImage('assets/product/cactus_plant.png'),
                ),
              ],
            ),
            const SizedBoxH24(),
            cropTimeTable(),
            _bottomButton()
          ],
        ));
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
            _field3(),
            const SizedBoxH24(),
            _field4(),
            const SizedBoxH24(),
            _field5(),
            const SizedBoxH24(),
            const Text(
              'Category',
              style: TextStyle(color: Colors.grey),
            ),
            _catogory(),
            const SizedBoxH24(),
            const Text(
              'Sub Category',
              style: TextStyle(color: Colors.grey),
            ),
            _subCatogory(),
            const SizedBoxH24(),
            const Text(
              'Attribute',
              style: TextStyle(color: Colors.grey),
            ),
            _attribute(),
            const SizedBoxH24(),
            const Text(
              'Color',
              style: TextStyle(color: Colors.grey),
            ),
            _color(),
            const SizedBoxH24(),
            _field8(),
            const SizedBoxH24(),
          ],
        ),
      ),
    );
  }

  Widget cropTimeTable() {
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
            cropSearch(),
            const SizedBoxH24(),
            const Center(child: Text('or')),
            const SizedBoxH24(),
            const Center(
              child: CustomButton(
                color: Colors.white,
                width: 100,
                hight: 40,
                text: '+ Add New',
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _field3() {
    return Row(
      children: [
        Expanded(flex: 1, child: sellingPrice()),
        Expanded(flex: 1, child: _unit())
      ],
    );
  }

  Widget _field4() {
    return Row(
      children: [
        Expanded(flex: 1, child: _tax()),
        Expanded(flex: 1, child: _taxType())
      ],
    );
  }

  Widget _field5() {
    return Row(
      children: [
        Expanded(flex: 1, child: _discount()),
        Expanded(flex: 1, child: _discountType())
      ],
    );
  }

  Widget _field8() {
    return DecoratedBox(
      decoration: AppDecoration.decorationColoredButtonRadius8(
          color: AppColors.editProductBg),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19, 11, 19, 24),
        child: Row(
          children: [
            Expanded(flex: 1, child: _variant()),
            Expanded(flex: 1, child: _variantPrice())
          ],
        ),
      ),
    );
  }

  Widget productName() {
    return AppTextFormFieldUnderLine(
      label: 'Short Description',
      // controller: _contactUsController?.phoneController,
      hint: 'Short Description',
      initialValue: 'This is a Short discription',
      // autoValidate: data == PageState.validationError,
      // validator: Validator.isValidMobileNumber,
      inputType: TextInputType.text, borderColor: Colors.black.withOpacity(.3),
    );
  }

  Widget cropSearch() {
    return AppTextFormFieldUnderLine(
      label: 'Save crop time table',
      // controller: _contactUsController?.phoneController,
      hint: 'Search here',

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
      label: AppStrings.sellingPrice,
      hint: AppStrings.sellingPrice,
      initialValue: '135',
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
      borderColor: Colors.green.withOpacity(.3),
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
      borderColor: Colors.green.withOpacity(.3),
    );
  }

  Widget _unit() {
    return const DropdownField(
      hintText: AppStrings.unit,
      value: "Number",
      options: [
        "Number",
        "Litre",
      ],
    );
  }

  Widget _taxType() {
    return const DropdownField(
      hintText: AppStrings.taxTyp,
      value: "Percent",
      options: [
        "Percent",
        "Accumulated",
      ],
    );
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

  Widget _catogory() {
    return const DropdownField(
      hintText: AppStrings.category,
      value: "Plants",
      options: [
        "Plants",
      ],
    );
  }

  Widget _subCatogory() {
    return const DropdownField(
      hintText: AppStrings.subCategory,
      value: "Flower Plants",
      options: [
        "Flower Plants",
      ],
    );
  }

  Widget _attribute() {
    return const DropdownField(
      hintText: AppStrings.attribute,
      value: "Color",
      options: [
        "Color",
      ],
    );
  }

  Widget _color() {
    return const DropdownField(
      hintText: AppStrings.volume,
      value: "Red",
      options: [
        "Red",
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
