import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';

import '../resources/app_colors.dart';
import '../resources/app_text_styles.dart';
import '../resources/constants.dart';

class AppTextFormFieldUnderLine extends StatefulWidget {
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

  const AppTextFormFieldUnderLine({
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
    this.borderColor, this.prefixIcon,
  }) : super(key: key);

  @override
  State<AppTextFormFieldUnderLine> createState() => _AppTextFormFieldUnderLineState();
}

class _AppTextFormFieldUnderLineState extends State<AppTextFormFieldUnderLine> {
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
          AppTextStyle.bodyLarge_16_w400(context,
              color: AppColors.textDarkGrayColor),
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
      textCapitalization: TextCapitalization.sentences ,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
            borderSide: BorderSide(color:widget.borderColor ?? Colors.transparent,width: .5)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:widget.borderColor ?? Colors.transparent,width: .5)),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:widget.borderColor ?? Colors.transparent,width: .5)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:widget.borderColor ?? Colors.transparent,width: .5)),
        fillColor: widget.fillColor,
        filled: widget.fillColor != null ? true : false,
        contentPadding: const EdgeInsets.fromLTRB(0, 5, 0, 7),
        label: widget.label?.isNotEmpty == true ? Text(widget.label!) : null,
        hintText: widget.hint,
        helperStyle:widget.fontStyle ??
            Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: AppConstants.BODY_LARGE_16),
        counterText: "",
        labelStyle: widget.fontStyle ??
            Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: AppConstants.BODY_MEDIUM_14,color: Colors.black.withOpacity(.3), ),
        errorMaxLines: 2,

        prefixIcon: widget.prefixIcon,
        suffixIcon: showErrorIcon
            ? IconButton(
                icon: const Icon(Icons.close),
                color: Theme.of(context).errorColor,
                onPressed: () {
                  widget.controller?.text = "";
                })
            : (widget.isPasswordField ?? false)
                ? InkWell(
                    child: SizedBox(
                      width: 48,
                      child: Center(
                          child: hidePassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye)),
                    ),
                    onTap: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    })
                : null,
      ),
    );
  }
}
