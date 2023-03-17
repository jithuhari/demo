import 'package:flutter/material.dart';
import '../resources/app_colors.dart';
import '../resources/app_text_styles.dart';
import 'app_text.dart';

class DropdownField<T> extends StatelessWidget {
  final String? hintText;
  final List<T>? options;
  final T? value;
  final void Function(T?)? onChanged;
  final Color? color;
  final TextStyle? style;
  final TextStyle? Valuestyle;
  final bool hideunderline;

  const DropdownField(
      {Key? key,
        this.hintText,
        required this.options,
        this.value,
        this.onChanged,
        this.color, this.style, this.hideunderline = false, this.Valuestyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border(bottom:hideunderline ?BorderSide.none : BorderSide(color: Colors.black.withOpacity(.3),width: .4))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          hint: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppText.bodyMedium_14_w400(hintText),
          ),
          icon: Icon(Icons.keyboard_arrow_down),
          style:style ?? AppTextStyle.bodyMedium_14_w400(context,
              color: AppColors.textBlackColor),
          isExpanded: true,
          value: value,
          items: options?.map((T item) {
            return DropdownMenuItem<T>(
                value: item,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Text(
                    item?.toString() ?? "",
                    softWrap: true,
                    textAlign: TextAlign.start,
                    style: Valuestyle ?? AppTextStyle.bodyLarge_16_w400(context, color: AppColors.textDarkGrayColor),
                  ),
                ));
          }).toList(),
          onChanged: (T? value) {
            onChanged?.call(value);
          },
          underline: hideunderline ? SizedBox() :Container(
            height: 1,
            margin: const EdgeInsets.only(top: 10),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
