

import 'package:flutter/material.dart';
import 'package:orgayur_vendor_app/resources/app_colors.dart';
import 'package:orgayur_vendor_app/util/custom_sized_boxes.dart';


import 'custom_text_widget.dart';

class CustomRadioTile<T> extends StatelessWidget {
  final T? value;
  final T? groupValue;
  final double? size;
  final String? subTitle;
  final ValueChanged<T?>? onChanged;

  const CustomRadioTile(
      {super.key,
      required this.value,
      required this.groupValue,
      this.onChanged,
      this.size,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(value),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _customRadioButton,
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextPOP18W500(
                  value?.toString() ?? "",
                  textAlign: TextAlign.left,
                  color: Colors.black,
                ),
                if (subTitle?.isNotEmpty == true) const SizedBoxH5(),
                if (subTitle?.isNotEmpty == true)
                  TextPOP16W400(
                    subTitle?.toString() ?? "",
                    textAlign: TextAlign.left,
                    color: Colors.black,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _customRadioButton {
    return DecoratedBox(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value == groupValue
              ? AppColors.primaryColor
              : AppColors.bgGrayColor),
      child: const SizedBox(
        width: 24,
        height: 24,
      ),
    );
  }
}
