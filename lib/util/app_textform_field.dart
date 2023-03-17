import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';

import '../resources/app_colors.dart';
import '../resources/app_text_styles.dart';
import '../resources/constants.dart';
import '../resources/drawables.dart';
import 'app_text.dart';

class AppTextFormField extends StatefulWidget {
  final bool? autoValidate;
  final bool? isPasswordField;
  final String? initialValue;
  final String? label;
  final String? hint;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final TextStyle? fontStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Widget? prefixIcon;

  const AppTextFormField({
    Key? key,
    this.autoValidate,
    this.isPasswordField,
    this.initialValue,
    this.label,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.validator,
    this.controller,
    this.fontStyle,
    this.inputType,
    this.hint,
    this.fillColor,
    this.borderColor,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool hidePassword = false;
  bool autoValidate = false;
  bool showErrorIcon = false;
  bool isChanged = false;

  TextInputType? inputType;

  @override
  void initState() {
    super.initState();
    hidePassword = widget.isPasswordField ?? false;
    autoValidate = widget.autoValidate ?? false;
    if (widget.inputType == TextInputType.phone) {
      inputType = TextInputType.text;
    } else if (widget.inputType == const TextInputType.numberWithOptions()) {
      inputType = TextInputType.text;
    } else {
      inputType = widget.inputType;
    }
  }

  @override
  Widget build(BuildContext context) {
    // the below condition is added to handle the auto validate change from the parent
    if (widget.autoValidate == true && autoValidate != true) {
      autoValidate = true;
      showErrorIcon =
          widget.validator?.call(widget.controller?.text)?.isNotEmpty == true;
    }
    return TextFormField(
      autovalidateMode: autoValidate == true
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      inputFormatters: widget.inputType == TextInputType.phone
          ? <TextInputFormatter>[MaskedInputFormatter('000-000-0000')]
          : widget.inputType == const TextInputType.numberWithOptions()
              ? <TextInputFormatter>[MaskedInputFormatter('000000')]
              : null,
      validator: (String? val) {
        return widget.validator?.call(val);
      },
      autofocus: true,
      controller: widget.controller,
      keyboardType: inputType ?? TextInputType.text,
      obscureText: hidePassword,
      initialValue: widget.initialValue,
      //focusNode: _focusNode,
      style: widget.fontStyle ??
          AppTextStyle.bodyMedium_14_w400(context,
              color: AppColors.textBlackColor),
      textInputAction: TextInputAction.next,
      maxLines:
          widget.maxLines ?? (inputType == TextInputType.multiline ? null : 1),
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      onChanged: (String val) {
        //to show/hide the clear icon, when the field is in error state
        isChanged = true;
        if (autoValidate) {
          showErrorIcon =
              widget.validator?.call(widget.controller?.text)?.isNotEmpty ==
                  true;
          setState(() {});
        }
      },
      decoration: InputDecoration(
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide:
        //         BorderSide(color: widget.borderColor ?? Colors.transparent)),
        // enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide:
        //         BorderSide(color: widget.borderColor ?? Colors.transparent)),
        // errorBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide:
        //         BorderSide(color: widget.borderColor ?? Colors.transparent)),
        // focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide:
        //         BorderSide(color: widget.borderColor ?? Colors.transparent)),
        // fillColor: widget.fillColor,
        filled: widget.fillColor != null ? true : false,
        contentPadding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
        label: widget.label?.isNotEmpty == true ? Text(widget.label!) : null,
        hintText: widget.hint,
        counterText: "",
        labelStyle: widget.fontStyle ??
            Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: AppConstants.BODY_MEDIUM_14),
        errorMaxLines: 2,
        // prefixIcon: widget.inputType == TextInputType.phone
        //     ? _flagIcon()
        //     : widget.prefixIcon,
        // suffixIcon: showErrorIcon
        //     ? IconButton(
        //         icon: const Icon(Icons.close),
        //         color: Theme.of(context).errorColor,
        //         onPressed: () {
        //           widget.controller?.text = "";
        //         })
        //     : (widget.isPasswordField ?? false)
        //         ? InkWell(
        //             child: SizedBox(
        //               width: 48,
        //               child: Center(
        //                   child: hidePassword
        //                       ? const Icon(Icons.remove_red_eye)
        //                       : const Icon(Icons.remove_red_eye)),
        //             ),
        //             onTap: () {
        //               setState(() {
        //                 hidePassword = !hidePassword;
        //               });
        //             })
        //         : null,
      ),
    );
  }

  Widget _flagIcon() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 6),
          child: Image.asset(
            Drawables.countryFlag,
            width: 26,
            height: 17,
            fit: BoxFit.contain,
          ),
        ),
        AppText.labelLarge_20_w500("+91")
      ],
    );
  }
}
